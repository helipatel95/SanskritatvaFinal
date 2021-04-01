const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');



router.get('/profileUpdate', function(req, res, next) { 
 if (req.session.loggedin) {
        db.query('SELECT * FROM users where id = ?',[req.session.userid], function(error, results, fields) {
           res.render('profile',{userdata: results[0], updated:false} );
           res.end();
       });
   
       
   } else {
       res.redirect('../../../../../../../../../../../Dash/login');
       res.end();
   }
  
});

router.post('/profileUpdate', function(req, res, next) {
  
    // store all the user input data
    console.log("Into the profile!!");
    let firstname = req.body.fname;
    let lastname = req.body.lname;
    let eid = req.body.emailAddress;
    let badd = req.body.billingAddress;
    let sadd = req.body.shippingAddress;
    let cnum = parseInt(req.body.contactNo);
    let password = req.body.password;
    let birthDate = req.body.bdate;

    
   // insert user data into users table
    var sql = 'UPDATE users SET fname = ?, lname= ?, emailAddress= ?, billingAddress= ?, shippingAddress= ?, contactNo=?, password=?, bdate= ? where id = ?';
    db.query(sql, [firstname,lastname, eid, badd, sadd, cnum, password, birthDate, req.session.userid ],function(error, results, fields) {
        
     console.log("here")
   res.render('profile', {userdata:req.body,updated:true});  // redirect to user form page after inserting the data
  });
}); 


  module.exports = router;