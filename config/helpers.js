const mysql = require('mysql');

const con = mysql.createConnection({
    host: "eu-cdbr-west-01.cleardb.com",
    user: "b6f8dc360f8981",
    password: "40280d42",
    database: 'heroku_e79e8ca751a6154'
});

module.exports = {
    database: con
};
<<<<<<< HEAD
=======

>>>>>>> 859ef3c3483362b0fac3b6aa3d71c88775f357f4
