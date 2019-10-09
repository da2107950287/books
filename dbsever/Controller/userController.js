const express=require('express');
const router=express.Router();
const userModel=require('../Model/userModel');
let usermodel = new userModel();
router.post('/reg',(req,res)=>{
    req.body.regtime = new Date().toLocaleString();
    usermodel.userReg(req.body,(result)=>{    
        if(result.insertId){
            res.json({code:1, Msg:'注册成功'});
        }else{
            res.json({code:-1, Msg:'注册失败，请重新操作'});
        }
    })
})
router.post('/login',(req,res)=>{
    // console.log(req.body)
    let tel=req.body.tel;
    let passwd=req.body.passwd;
    console.log(passwd);
    usermodel.userLogin(tel,(result)=>{
        
        let ob = {
            code:1,
            Msg:'登录成功'
        };
        if(result.length == 0){
            ob = {
                code:-1,
                Msg:'用户不存在'
            };
        }else if(result[0].passwd != passwd){
            ob = {
                code:0,
                Msg:'密码错误'
            };
        }else{
            req.session.uid = result[0].uid;
            req.session.tel = tel;
            // console.log(result,111)
            // console.log(req.session.uid, req.session.tel,7777);
            // console.log(req.session)
            
        }
        // console.log(ob);
        // console.log(result)
        res.json(ob);
    })
})
router.use(require('./session').session);
router.get('/getsession', (req, res)=>{
    res.json(req.session);
});

module.exports=router;

