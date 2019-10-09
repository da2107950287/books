exports.session = function(req, res, next){
    console.log(req.session)
    if(!req.session.uid || !req.session.tel){
        res.json({ code: -100, Msg: '请登录' });
        return ;
    }else{
        next();
    }
}