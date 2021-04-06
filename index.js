const express = require('express');
const cors = require('cors');
const router = express.Router();
const index = express();
const distDir = __dirname + "/dist/";
index.use(express.static(__dirname + '/public'));
index.use(express.static(distDir));
const port = process.env.PORT || 3333;
const {db} = require('../config/helpers');

/* CORS */
index.use(cors({
  origin: '*',
  methods: ['GET', 'PUT', 'DELETE', 'PATCH', 'POST'],
  allowedHeaders: 'Content-Type, Authorization, Origin, X-Requested-With, Accept'
}));

router.get('/api/products/',db.allproducts);
router.get('/api/products/:id',db.singleproduct);
router.post('/api/products/add',db.addproduct);


router.put('/api/products/update/:id',db.updateproduct);
router.delete('/api/products/delete/:id',db.deleteproduct);

index.get('/',(request,response)=>{
  response.json({info:'Node.js,Express, and Postgres API'});
});
index.listen(port,()=>{
  console.log(`App running on port ${port}.`);
})




// define a sendmail endpoint, which will send emails and response with the corresponding status
// app.post("/sendmail", (req, res) => {
//     console.log("request came");
//     let user = req.body;
//     sendMail(user, (err, info) => {
//       if (err) {
//         console.log(err);
//         res.status(400);
//         res.send({ error: "Failed to send email" });
//       } else {
//         console.log("Email has been sent");
//         res.send(info);
//       }
//     });
//   });
