const signupRoute = require('./routes/signup');
const loginRoute = require('./routes/login');
const productRoute = require('./routes/product');
const cartroute = require('./routes/cart');
const invoicePath = require('./routes/invoice');
const profilePath = require('./routes/profile');
const articlePath = require('./routes/articale');
const orderPath = require('./routes/order');

const path = require('path');
const session = require('express-session');


const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
app.set('view engine', 'ejs');

//where views will be found. 
app.set('views', 'views');


app.use(bodyParser.urlencoded({extended: false}));
app.use(express.static(path.join(__dirname, 'public')));
app.use('/Dash', signupRoute);
app.use('/Dash', loginRoute);
app.use('/Dash', productRoute);
app.use('/Cart', cartroute);
app.use('/invoice', invoicePath);
app.use('/profile', profilePath);
app.use('/article', articlePath);
app.use('/orderhistory', orderPath);

app.listen(3000);