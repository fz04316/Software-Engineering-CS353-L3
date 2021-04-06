const express=require("express");
const cors=require("cors");
const {database} = require('../config/helpers');
const path = require('path');
const app=express();
var distDir = __dirname + "/dist/";
app.use(express.static(__dirname + '/public'));
app.use(express.static(distDir));
const port = process.env.PORT || 3333;
app.use(cors());

//database endpoints will be here
app.get('/',(request,response)=>{
    response.json({info:'Node.js,Express, and Postgres API'});
});
app.listen(port,()=>{
    console.log(`App running on port ${port}.`);
})
