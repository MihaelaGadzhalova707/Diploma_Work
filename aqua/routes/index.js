var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Aqua' });
});

module.exports = router; //allow us to access it from a different file

