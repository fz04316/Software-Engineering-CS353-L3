//Install express server
const express = require('express');
const path = require('path');
var mysql=require('mysql');

const app = express();

var connection = mysql.createConnection({
  host     : 'eu-cdbr-west-01.cleardb.com',
  user     : 'b364ea95162c4a',
  password : '08a3b1c8',
  database : 'heroku_e9dd0a4d616598e'
});
connection.connect();
// Serve only the static files form the dist directory
app.use(express.static('./dist/backend'));

app.get('/*', (req, res) =>
  res.sendFile('index.html', {root: 'dist/backend/'}),
);

// Start the app by listening on the default Heroku port
app.listen(process.env.PORT);
