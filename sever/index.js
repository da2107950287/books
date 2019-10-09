const express=require("express");
const app=express();
const bodyParser= require("body-parser");
app.use(require('./author/index').cookie);
app.use(require('./author/index').session);
//接受post传过来的参数
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.use('/booklist',require('./Controller/BooklListController'));
app.use('/user', require('./Controller/UserController'));

app.use('/uploads', express.static(__dirname+'/uploads'));
app.listen(8080,()=>{
    console.log("正在监听8080端口");
})