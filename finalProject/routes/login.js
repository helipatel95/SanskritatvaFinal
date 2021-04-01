const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');

router.get('/login', function(req, res, next) { 
    res.render('login',{error:undefined});
    //res.sendFile(path.join(rootDir, 'views', 'login.html'));
});

router.post('/login1', function(req, res, next) { 
 
    // select user data 
    var username = req.body.emailAddress;
    var password = req.body.psw;
    console.log(username + "    " + password);
    if (username && password) {
        db.query('SELECT * FROM users WHERE emailAddress = ? AND password = ?', [username, password], function(error, results, fields) {
            if (results.length > 0) {
                req.session.loggedin = true;
                req.session.userid = results[0].id;
                res.render('index',{email:results[0].emailAddress});
            } else {
                res.render('login',{error:'Incorrect Username and/or Password!'});
            }			
            res.end();
        });
    } else {
        
        res.render('login',{error:'Please enter Username and/or Password!'});
        res.end();
 }
 
    //res.render('index',{data2:"heli"});
    //res.sendFile(path.join(rootDir, 'views', 'login.html'));
});

router.get('/logout', function(req, res, next) { 
    req.session.loggedin = false;
    req.session.userid = null;
    res.render('login',{error:undefined});
    //res.sendFile(path.join(rootDir, 'views', 'login.html'));
});

router.get('/forgetpass', function(req, res, next) { 
    res.render('forgetpass');
    
});




module.exports = router;