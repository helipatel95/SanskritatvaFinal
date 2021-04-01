const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');
const cartdata = require('../util/localdata');


router.get('/invoiceData', function(req, res, next) { 

    if (req.session.loggedin) {
        
         db.query('SELECT * FROM users where id = ?',[req.session.userid], function(error, results, fields) {
            console.log(results[0]);
            res.render('invoice',{userdata: results[0], cartdata: cartdata, addresserror : false,invoicegenrated:false});
            res.end();
        });
    
		
	} else {
        res.redirect('../../../../../../../../../../../Dash/login');
        res.end();
	}

    
});

router.post('/invoiceData', function(req, res, next) { 
    let userdatalocal = {};
    let cartdatalocal = cartdata;
    if (req.session.loggedin) {
        db.query('SELECT * FROM users where id = ?',[req.session.userid], function(error, results, fields) {
            
            userdatalocal = results[0];
            let billingAddress = req.body.billingAddress;
            let shippingaddress = req.body.shippingAddress;
            let total = req.body.total;
            if(!userdatalocal.billingAddress || userdatalocal.billingAddress.length === 0){
                
            }
            else{
                billingAddress = userdatalocal.billingAddress;
            }if(!userdatalocal.shippingAddress || userdatalocal.shippingAddress.length === 0){
                
            }else{
                shippingaddress = userdatalocal.shippingAddress;
            }
            if(!billingAddress || billingAddress.length === 0 || billingAddress.trim().length === 0 ||
             !shippingaddress || shippingaddress.length === 0 || shippingaddress.trim().length === 0) {
                console.log(billingAddress);
                console.log(shippingaddress);
                res.render('invoice', {userdata: userdatalocal, cartdata: cartdatalocal, addresserror : true,invoicegenrated:false});
                res.end();
            }
            else{
                db.query('UPDATE users Set billingAddress = ? , shippingaddress = ? where id = ?',[billingAddress,shippingaddress,req.session.userid], function(error, results, fields) {
                    const value = {
                        user_id:req.session.userid,
                        invoice_total: parseInt(total)
                    };
                    
                    db.query('INSERT INTO invoice SET ?',value, function(error, results, fields) {
                        const productdata = [];
                        for (let index = 0; index < cartdatalocal.length; index++) {
                            const element = {
                                invoice_id : results.insertId,
                                product_id : cartdatalocal[index].product_id
                            };
                            productdata.push(element);
                        }
                        const insertvalues = productdata.map(obj => [obj.invoice_id, obj.product_id]);
                        console.log(insertvalues);
                        db.query('INSERT INTO invoice_details (invoice_id,product_id) VALUES ?',[insertvalues], function(error, results, fields) {
                            while(cartdata.length){
                                cartdata.pop();
                            }
                            res.render('invoice', {userdata: userdatalocal, cartdata: cartdatalocal, addresserror : false,invoicegenrated:true});
                            res.end();
                        });
                    });
                });
            }
        });
    } else {
       res.redirect('../../../../../../../../../../../Dash/login');
       res.end();
   }
    
});
module.exports = router;