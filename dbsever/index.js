const express=require('express');
const app=express();
const bodyParser=require('body-parser');
// 跨域处理
app.use(require('./Tool/cors').cors);
app.use(require('./Self/').cookie);
app.use(require('./Self/').session);

//用body-parser模块用来解析post的传过来的值
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
//使用中间件，启用子路由
app.use('/user',require('./Controller/userController'));
app.use('/cate',require('./Controller/cateController'));
app.use('/book',require('./Controller/bookController'));
app.use('/upload',require('./Controller/uploadController'));
app.use('/uploads', express.static(__dirname+'/uploads'));
app.listen(8080,()=>{
    console.log('正在监听8080');
})