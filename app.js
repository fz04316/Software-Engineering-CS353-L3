const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const cors = require('cors');
const app = express();
const port = process.env.PORT || 8080;


app.use(cors({ origin: "*" }));
const productsRoute = require('./routes/products');
const usersRoute = require('./routes/orders');
/* CORS */

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/api/products',productsRoute);
app.use('/api/orders',usersRoute);
var elasticemail = require('elasticemail');
var client = elasticemail.createClient({
  username: 'amo.junaid1@gmail.com',
  apiKey: 'A42D2A612638C4C98A023CBE4290E5C73725'
});
 
var msg = {
  from: 'julian@exmaple.org',
  from_name: 'Julian Duque',
  to: 'amo.junaid1@gmail.com',
  subject: 'Hello',
  body_text: 'Hello World!'
};
 
client.mailer.send(msg, function(err, result) {
  if (err) {
    return console.error(err);
  }
 
  console.log(result);
});
app.listen(port,()=>{
  console.log(`App running on port ${port}.`);
});
