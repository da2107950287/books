const express = require('express');
const router = express.Router();
const cateModel = require('../Model/cateModel');
let catemodel = new cateModel();
// router.get('/',(req,res)=>{
    
// })
router.post('/addcate', (req, res) => {
    // console.log(req.body)
    catemodel.addcate(req.body, (result) => {
        console.log(result)
        if (result.insertId) {
            res.json({ code: 1, Msg: '添加成功' });
        } else {
            res.json({ code: -1, Msg: '添加失败，请重新操作' });
        }
    })
})

router.get('/getfcate', (req, res) => {
    // console.log(99999999)
    catemodel.getfcate((result) => {
        res.json(result);

    })
})
router.get('/catelist', (req, res) => {
    let page=req.query.page?req.query.page:1;
    let limitnum=req.query.limitnum?req.query.limitnum:10;
    catemodel.catelist(page,limitnum,(result) => {
        console.log(result[1][0].num)
        res.json({"code":0,"msg":"","count":result[1][0].num,"data":result[0]});
    })
})
router.post('/delcatelist', (req, res) => {
    let cid=req.body.cid;
    catemodel.delcatelist(cid, (result) => {
        console.log(result)
        // res.json(11)
        if (result.affectedRows) {
            res.json({ code: 1, Msg: '删除成功' });
        } else {
            res.json({ code: -1, Msg: '删除失败，请重新操作' });
        }
    })
})
router.post('/editcate', (req, res) => {
    // console.log(req.body)
    let name=req.body.name;
    let fid=req.body.fid;
    let cid=req.body.cid;
    console.log(req.body)
    catemodel.editcate(name,fid,cid, (result) => {
        console.log(result)
        if (result.affectedRows) {
            res.json({ code: 1, Msg: '修改成功' });
        } else {
            res.json({ code: -1, Msg: '修改失败，请重新操作' });
        }
    })
})
// selectcatelist
router.post('/selectcatelist', (req, res) => {
    // console.log(req.body)
    let cid=req.body.cid;
    catemodel.selectcatelist(cid, (result) => {
        console.log(result)
        res.json(result)
        // if (result.insertId) {
        //     res.json({ code: 1, Msg: '添加成功' });
        // } else {
        //     res.json({ code: -1, Msg: '添加失败，请重新操作' });
        // }
    })
})
module.exports = router;

