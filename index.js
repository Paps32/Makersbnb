const express = require('express');

const app = express();

app.get('get', function (req, res){
  res.send('ci with travis');
});

const server = app.listen(3000, function (){
  console.log('app is running on port 3000');
});

module.exports = server;
