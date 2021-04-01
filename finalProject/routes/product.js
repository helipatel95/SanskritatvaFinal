const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');
const cartdata = require('../util/localdata');


router.get('/products', function(req, res, next) { 
    // sql == data productsss
    db.query('SELECT * FROM category_product', function(error, results, fields) {
        debugger;
        
        res.render('Productpage',{data: results});
        res.end();
    });
    //res.render('Productpage',{data:"kunj",data2:"heli"});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});
router.get('/products/:categoryid/:category_name', function(req, res, next) { 
    // sql == data productsss
    const category_id = req.params.categoryid;  
    const category_name = req.params.category_name;  
    db.query('SELECT * FROM product WHERE category_id = ?',[category_id], function(error, results, fields) {
        debugger;
       
        res.render('books',{data:results,pagename:category_name});
        res.end();
    });
    //res.render('books',{data:"kunj",pagename:category_name});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});

router.get('/products/:categoryid/:category_name/:ptoductid', function(req, res, next) { 
    // sql == data productsss
    const category_id = req.params.categoryid;  
    const category_name = req.params.category_name;  
    const product_id =  req.params.ptoductid;
    db.query('SELECT * FROM product WHERE product_id = ?',[product_id], function(error, results, fields) {
        debugger;
       
        res.render('single_product',{data:results,categoryname:category_name,addedtocart:false});
        res.end();
    });
    
    //res.render('books',{data:"kunj",pagename:category_name});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});

router.post('/products/:categoryid/:category_name/:ptoductid', function(req, res, next) { 
    // sql == data productsss
    const category_id = req.params.categoryid;  
    const category_name = req.params.category_name;  
    const product_id =  req.body.productid;
    db.query('SELECT * FROM product WHERE product_id = ?',[product_id], function(error, results, fields) {
        // while(cartdata.length){
        //     cartdata.pop();
        // }
        cartdata.push(results[0]);
       
        //res.redirect('.../../../../../../../../../../../../Dash/products');
        res.render('single_product',{data:results,categoryname:category_name,addedtocart:true});
        res.end();
    });
    
});
router.get('/paintingsandposters', function(req, res, next) { 
    // sql == data productsss
    res.render('paintPost',{data:"kunj",data2:"heli"});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});
router.get('/photoframes', function(req, res, next) { 
    // sql == data productsss
    res.render('photoFrames',{data:"kunj",data2:"heli"});
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});



router.get('/posts', function(req, res, next) { 
    
    db.query('SELECT * FROM post', function(error, results, fields) {
        console.log(results);
        res.render('post',{userdata:results});
        res.end();
    });
   
});

module.exports = router;