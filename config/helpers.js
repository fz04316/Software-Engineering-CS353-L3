const Mysqli = require('mysqli');


let conn = new Mysqli({
    Host: 'eu-cdbr-west-01.cleardb.com', // IP/domain name
    port: 3306, // port, default 3306
    user: 'b6f8dc360f8981', // username
    passwd: '40280d42', // password
    db: 'heroku_e79e8ca751a6154'
});

let db = conn.emit(false, 'heroku_e79e8ca751a6154');

module.exports = {
    database: db
};
