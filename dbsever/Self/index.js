const cookieParser = require('cookie-parser');
const session = require('express-session');
// 把session信息存储到数据库里面  
let MySQLStore = require('express-mysql-session')(session);
let secret = 'com.mydomain.app';
exports.cookie = cookieParser(secret);


let sessionStore = new MySQLStore(require(__dirname + '/../Config/dbConfig'));
exports.session = session({
    key: 'sessionid',  
    secret: secret,
    resave: false,
    store: sessionStore,   
    name: 'sessionid', 
    saveUninitialized: false,
    cookie: { maxAge: 24 * 3600 * 1000 }
})




