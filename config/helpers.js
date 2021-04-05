const mysql = require('mysql');

const con = mysql.createConnection({
    host: "eu-cdbr-west-01.cleardb.com",
    user: "bbbf434d4e9277",
    password: "578a4709",
    database: 'heroku_ab3d640412d39ad'
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});
module.exports = {
    database: con
};

