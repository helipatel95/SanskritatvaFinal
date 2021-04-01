const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');
const cartdata = require('../util/localdata');


router.get('/cartdata', function(req, res, next) { 
    // sql == data productsss
    
    res.render('cart',{data:cartdata,data2:"heli"});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});

router.post('/cartdata', function(req, res, next) { 
    // sql == data productsss
   
    const product_iddata =  req.body.productid;
    
    let i = 0;
    let datafound = false;
    while(i < cartdata.length){
        if(cartdata[i]['product_id'] == product_iddata){
            cartdata.splice(i, 1); 
            break;
        }
        i = i + 1;
    }
    
    res.render('cart',{data:cartdata,data2:"heli"});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});

module.exports = router;