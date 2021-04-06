const express = require('express');
const router = express.Router();
const {database} = require('../config/helpers');


database.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});
//show all products
router.get('/',(req, res) => {
    let sql = "SELECT * FROM products";
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.send(results);
    });
});

//add new product
router.post('/add',(req, res) => {
    let data = {id:req.body.id,title: req.body.title, image:req.body.image,images:req.body.images,description:req.body.description,price: req.body.price,quantity:req.body.quantity,short_desc:req.body.category,cat_id:req.body.cat_id};
    let sql = "INSERT INTO products SET ?";
    let query = database.query(sql, data,(err, results) => {
        if(err) throw err;
        res.status(200).json({
            results
        });
    });
});

//update product
router.put('/update/:id',(req, res) => {
    let sql = "UPDATE products SET title='"+req.body.title+"',image='"+req.body.image+"',images='"+req.body.images+"',description='"+req.body.description+"',price='"+req.body.price+"',quantity='"+req.body.quantity+"',short_desc='"+req.body.category+"',cat_id='"+req.body.cat_id+"' WHERE id="+req.params.id;
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.status(200).json({
            results
        });
    });
});

//Delete product
router.delete('/delete/:id',(req, res) => {
    let sql = "DELETE FROM products WHERE id="+req.params.id+"";
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.status(200).json({
            results
        });
    });
});

/ * GET ONE PRODUCT*/
//show single product
router.get('/:id',(req, res) => {
    let sql = "SELECT * FROM products WHERE id="+req.params.id;
    let query = database.query(sql, (err, results) => {
        if(err) throw err;
        res.status(200).json({
            results
        });
    });
});



module.exports = router;
