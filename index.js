const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const cors = require('cors');
const index = express();
const distDir = __dirname + "/dist/";
index.use(express.static(__dirname + '/public'));
index.use(express.static(distDir));
const port = process.env.PORT || 3333;


const productsRoute = require('./routes/products');

/* CORS */
index.use(cors({
  origin: '*',
  methods: ['GET', 'PUT', 'DELETE', 'PATCH', 'POST'],
  allowedHeaders: 'Content-Type, Authorization, Origin, X-Requested-With, Accept'
}));


index.use(logger('dev'));
index.use(express.json());
index.use(express.urlencoded({ extended: false }));
index.use(cookieParser());
index.use(express.static(path.join(__dirname, 'public')));

index.use('/api/products',productsRoute);

module.exports = index;
index.get('/',(request, response)=>{
  response.json({info:'Node.js,Express, and Postgres API'});
});
index.listen(port,()=>{
  console.log(`App running on port ${port}.`);
})
