var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.render('valves_options',{title:'Members'});
});

router.get('/order', function(req, res, next) {
  res.render('order',{title:'Valve'});
});


router.get("/valves_options", function(req, res) {  
    console.log (req.query);

  const { execSync } = require('child_process');
 
   let stdoutValveChoice = execSync('/usr/bin/mosquitto_pub -t machine -m "' + req.query.option + '"');
   
    res.redirect('/');
})
module.exports = router;