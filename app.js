const express = require('express');
const cors = require('cors');
const app = express();
const distDir = __dirname + "/dist/";
app.use(express.static(__dirname + '/public'));
app.use(express.static(distDir));
const port = process.env.PORT || 8080;
const {db} = require('./config/helpers');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');


/* CORS */
app.use(cors({
  origin: '*',
  methods: ['GET', 'PUT', 'DELETE', 'PATCH', 'POST'],
  allowedHeaders: 'Content-Type, Authorization, Origin, X-Requested-With, Accept'
}));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.get('/api/products/',db.allproducts);
app.get('/api/products/:id',db.singleproduct);
app.post('/api/products/add',db.addproduct);


app.put('/api/products/update/:id',db.updateproduct);
app.delete('/api/products/delete/:id',db.deleteproduct);

app.listen(port,()=>{
  console.log(`App running on port ${port}.`);
});




