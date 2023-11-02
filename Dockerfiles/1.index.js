const express = require('express');
const app = express();

app.get('/', async (req, res) => {
  console.log('req.query', req.query);
  res.status(200).json({message: 'Ok!'});
});

app.listen(3000, () => console.log('Example server running on port 3000'));
