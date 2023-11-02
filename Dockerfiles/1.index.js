// const http = require("http");

// http.createServer(function(request, response) {
//   console.log("Request received");
//   response.end("Hello from server", "utf-8");
// }).listen(3000);

// console.log("server started");


const express = require('express');
const app = express();

app.get('/', async (req, res) => {
  console.log('req.query', req.query);
  res.status(200).json({message: 'Ok!'});
});

app.listen(3000, () => console.log('Example server running on port 3000'));
