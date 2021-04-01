const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');
const cartdata = require('../util/localdata');

router.get('/articledata', function(req, res, next) { 
    db.query('SELECT * from article', function(error, results, fields) {
            res.render('article',{data:results,data2:"heli"});
            res.end();
    });
});

module.exports = router;