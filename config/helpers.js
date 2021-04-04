const Mysqli = require('mysqli');


let conn = new Mysqli({
    Host: 'eu-cdbr-west-01.cleardb.com', // IP/domain name
    user: 'b364ea95162c4a', // username
    passwd: '08a3b1c8', // password
    db: 'heroku_e9dd0a4d616598e'
});

let db = conn.emit(false, '');

module.exports = {
    database: db
};


