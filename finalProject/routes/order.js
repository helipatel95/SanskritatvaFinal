const path = require('path');
const express = require('express');
const rootDir = require('../util/path');
const router = express.Router();
var db=require('./database');
const cartdata = require('../util/localdata');

router.get('/orderData', function(req, res, next) { 
    // sql == data productsss
    if (req.session.loggedin) {

        const sqlquery = 'SELECT invoice_details.*, users.*, product.*, invoice.* FROM invoice INNER JOIN users ON users.id = invoice.user_id INNER JOIN invoice_details ON invoice_details.invoice_id = invoice.invoice_id INNER JOIN product ON product.product_id = invoice_details.product_id where users.id = ?';
        db.query(sqlquery,[req.session.userid], function(error, results, fields) {
            let alldata = [];
            
            const allinvoiceid = results.map(item => item.invoice_id).filter((value, index, self) => self.indexOf(value) === index);
           
            for (let index = 0; index < allinvoiceid.length; index++) {
                const allinvoicedata = results.filter(obj => obj.invoice_id == allinvoiceid[index]);
                const data = {
                    invoiceid : allinvoiceid[index],
                    data: allinvoicedata
                };
                alldata.push(data);
            }
            console.log(alldata);
            res.render('order',{invoicedata:alldata});
            res.end();
        });
       
    } else {
       res.redirect('../../../../../../../../../../../Dash/login');
       res.end();
   }
    
    
    // res.sendFile(path.join(rootDir, 'views', 'signup.ejs'));
});

module.exports = router;