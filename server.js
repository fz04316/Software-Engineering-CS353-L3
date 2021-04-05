//Install express server
const express = require('express');
const path = require('path');
const app = express();
const Mysqli = require('mysqli');


let conn = new Mysqli({
    Host: 'eu-cdbr-west-01.cleardb.com', // IP/domain name
    user: 'bbbf434d4e9277', // username
    passwd: '578a4709', // password
    db: 'heroku_ab3d640412d39ad'
});

conn.emit(false, '');



// Serve only the static files form the dist directory
app.use(express.static('./dist/backend'));

app.get('/*', (req, res) =>
  res.sendFile('index.html', {root: 'dist/backend/'}),
);
// Start the app by listening on the default Heroku port
app.listen(process.env.PORT);
