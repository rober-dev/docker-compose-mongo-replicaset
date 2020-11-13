// Vendor libs
const express = require('express');

require('dotenv').config();

const { PORT } = process.env;

require('./db-conn');

const app = express();
app.get('/', (req, res) => {
  res.json('ok');
});

app.listen(PORT, (err) => {
  if (err) {
    console.error('Error starting the server on port ' + PORT);
  }
  console.log('Server listening on port ' + PORT);
});
