const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const routes = require('./routes/router')
const app = express();

app.use(bodyParser.json())
app.use(express.static('public'));
app.use(cors())

app.use('/api', routes);

app.listen(8080, function(){
  console.log("http:/localhost:8080")
});
//
// const parts = require('./models').parts;
// parts.create({
//     name: 'Clavos 2"',
//     weight: 0.25,
//     price: 0.9,
//     color: "Gris"
// })


// const users = require('./models').users;
// users.create({
//     firstname: "diego",
//     lastname: "castañeda",
//     direction: "guatemala",
//     email: "casta@gmail.com",
//     password: "al;sdkfjasndlgfkjasdf"
// })
