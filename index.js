const bodyParser = require('body-parser');
const express = require('express');
const app = express();
app.use(bodyParser.json());
app.use(express.static(__dirname + '/dist'));

app.listen(3000, () => console.log('app listening on port 3000'));
app.get('/*', function (req, res) {
  res.sendfile('./dist/index.html');
});