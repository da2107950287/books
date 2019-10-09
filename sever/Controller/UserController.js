const express = require('express');
const request = require('request');
const UserModel = require(__dirname + '/../Model/UserModel');
const wxConfig =  require(__dirname + '/../Config/wx.config');
const router = express.Router();

router.get('/', (req, res) => {
    let userModel = new UserModel();
    let code = req.query.code;
    let nickname = req.query.nick;
    let avatar = req.query.avatar;
    let urla = `https://api.weixin.qq.com/sns/jscode2session?appid=${wxConfig.appid}&secret=${wxConfig.appsecret}&js_code=${code}&grant_type=authorization_code`;
    request(urla, (error, response, body)=>{
        if(error){
            res.json({code:-1, Msg:'授权失败'});
            return ;
        }
        let token = JSON.parse(body);
        let userinfo = {
            openid:token.openid,
            nick:nickname,
            avatar:avatar
        };
        userModel.addUser(userinfo, ()=>{
            req.session.openid = token.openid;
            req.session.session_key = token.session_key;
            res.json({code:1, Msg:'授权成功'});
        });
        
    });


});

module.exports = router;