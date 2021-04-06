const mysql = require('mysql');

const con = mysql.createConnection({
    host: "eu-cdbr-west-01.cleardb.com",
    user: "b6f8dc360f8981",
    password: "40280d42",
    database: 'heroku_e79e8ca751a6154'
});


con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});
//show all products
const allproducts=(req, res) => {
    let sql = "SELECT * FROM products";
    let query = con.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    });
};

//add new product
const addproduct=(req, res)=>{
    let data = {
        id: req.body.id,
        title: req.body.title,
        image: req.body.image,
        images: req.body.images,
        description: req.body.description,
        price: req.body.price,
        quantity: req.body.quantity,
        short_desc: req.body.category,
        cat_id: req.body.cat_id
    };
    let sql = "INSERT INTO products SET ?";
    let query = con.query(sql, data, (err, results) => {
        if (err) throw err;
        res.status(200).json({
            results
        });
    });
};

//update product
const updateproduct=(req, res) => {
    let sql = "UPDATE products SET title='" + req.body.title + "',image='" + req.body.image + "',images='" + req.body.images + "',description='" + req.body.description + "',price='" + req.body.price + "',quantity='" + req.body.quantity + "',short_desc='" + req.body.category + "',cat_id='" + req.body.cat_id + "' WHERE id=" + req.params.id;
    let query = con.query(sql, (err, results) => {
        if (err) throw err;
        res.status(200).json({
            results
        });
    });
};

//Delete product
const deleteproduct=(req, res) =>
{
    let sql = "DELETE FROM products WHERE id=" + req.params.id + "";
    let query = con.query(sql, (err, results) => {
        if (err) throw err;
        res.status(200).json({
            results
        });
    });
};

//show single product
const singleproduct=(req, res) => {
    let sql = "SELECT * FROM products WHERE id=" + req.params.id;
    let query = con.query(sql, (err, results) => {
        if (err) throw err;
        res.status(200).json({
            results
        });
    });
};

module.exports = {
    allproducts,
    singleproduct,
    updateproduct,
    deleteproduct,
    addproduct

};
