const Mysqli = require('mysqli');


let conn = new Mysqli({
    Host: 'eu-cdbr-west-01.cleardb.com', // IP/domain name
    user: 'bbbf434d4e9277', // username
    passwd: '578a4709', // password
    db: 'heroku_ab3d640412d39ad'
});

let db = conn.emit(false, '');

module.exports = {
    database: db
};


