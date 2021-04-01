const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();



var db=require('./database');
router.get('/signup', function(req, res, next) { 
    // sql == data productsss
    res.render('signup',{error:false});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});
router.get('/home', function(req, res, next)  { 
    res.render('index',{data:"kunj",data2:"heli"});
    // res.sendFile(path.join(rootDir, 'views', 'index.html'));
});

router.post('/signup1', function(req, res, next) {
  
  // store all the user input data
  console.log("Into the post!!");
  const userDetails=req.body;
  const regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
  if(req.body.userName.trim().length === 0 ||
  req.body.fname.trim().length === 0 ||
  req.body.lname.trim().length === 0 ||
  req.body.contactNo.trim().length === 0 ||
  req.body.bdate.trim().length === 0 ||
  req.body.emailAddress.trim().length === 0 ||
  req.body.password.trim().length === 0 || 
  !regularExpression.test(req.body.password)) {
    res.render('signup',{error:true});
    res.end();
  }
  else {
      console.log("done");
    var sql = 'INSERT INTO users SET ?';
    db.query(sql, userDetails,function (err, data) { 
        if (err) throw err;
           console.log("User dat is inserted successfully ");
           res.redirect('../../../../../Dash/login'); 
    });
  }
 
 // insert user data into users table
  
 

   // redirect to user form page after inserting the data
}); 


module.exports = router;