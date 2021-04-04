const mysql = require('mysql');

const database = mysql.createConnection({
    host: 'eu-cdbr-west-01.cleardb.com',
    user: 'b364ea95162c4a',
    password: '08a3b1c8',
    database: 'heroku_e9dd0a4d616598e'
});
database.connect();


module.exports = {
    database: database
};


