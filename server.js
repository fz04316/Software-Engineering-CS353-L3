//Install express server
const express = require('express');
const path = require('path');
const app = express();
const router = express.Router();
const {database} = require('../config/helpers');
const distDir = __dirname + "/dist/";
app.use(express.static(__dirname + '/public'));
app.use(express.static(distDir));

//show all products
router.get('/',(req, res) => {
    let sql = "SELECT * FROM products";
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"response": results}));
    });
});

//add new product
router.post('/add',(req, res) => {
    let data = {id:req.body.id,title: req.body.title, image:req.body.image,images:req.body.images,description:req.body.description,price: req.body.price,quantity:req.body.quantity,short_desc:req.body.category,cat_id:req.body.cat_id};
    let sql = "INSERT INTO products SET ?";
    let query = database.query(sql, data,(err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

//update product
router.put('/update/:id',(req, res) => {
    let sql = "UPDATE products SET title='"+req.body.title+"',image='"+req.body.image+"',images='"+req.body.images+"',description='"+req.body.description+"',price='"+req.body.price+"',quantity='"+req.body.quantity+"',short_desc='"+req.body.category+"',cat_id='"+req.body.cat_id+"' WHERE id="+req.params.id;
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"response": results}));
    });
});

//Delete product
router.delete('/delete/:id',(req, res) => {
    let sql = "DELETE FROM products WHERE id="+req.params.id+"";
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

/ * GET ONE PRODUCT*/
//show single product
router.get('/:id',(req, res) => {
    let sql = "SELECT * FROM products WHERE id="+req.params.id;
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

app.get('/',(request,response)=>{
    response.json({info:'Node.js,Express, and Postgres API'});
});
app.listen(port,()=>{
    console.log(`App running on port ${port}.`);
})
