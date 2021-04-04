var mysql = require('mysql');
var connection = mysql.createConnection('mysql://b364ea95162c4a:08a3b1c8@eu-cdbr-west-01.cleardb.com/heroku_e9dd0a4d616598e?reconnect=true');

let db = connection.connect();

module.exports = {
    database: db
};

