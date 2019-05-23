const bodyParser = require('body-parser');
const express = require('express');
const app = express();
app.use(bodyParser.json());

app.listen(3000, () => console.log('app listening on port 3000'));
app.get('/*', function (req, res) {
  res.sendfile('/var/www/nodejs/current/dist/index.html');
});