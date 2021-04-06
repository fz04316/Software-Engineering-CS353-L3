//Install express server
const express = require('express');
const path = require('path');
const app = express();
const distDir = __dirname + "/dist/";
app.use(express.static(__dirname + '/public'));
app.use(express.static(distDir));

app.get('/',(request,response)=>{
    response.json({info:'Node.js,Express, and Postgres API'});
});
app.listen(port,()=>{
    console.log(`App running on port ${port}.`);
})
