const express = require('express');
const router = express.Router();

const bookModel = require('../Model/bookModel');
let bookmodel = new bookModel();
router.get('/getfbook', (req, res) => {
    bookmodel.getfbook((result) => {
        res.json(result);

    })
})
router.get('/booklist', (req, res) => {
    let page=req.query.page?req.query.page:1;
    let limitnum=req.query.limitnum?req.query.limitnum:10;
    bookmodel.booklist(page,limitnum,(result) => {
        // console.log(result)
        res.json({"code":0,"msg":"","count":result[1][0].num,"data":result[0]});
    })
})
router.post('/selectbooklist', (req, res) => {
    // console.log(req.body)
    let bid=req.body.bid;
    bookmodel.selectbooklist(bid, (result) => {
        res.json(result)
    })
})
// router.use(require('./session').session);



router.post('/addbook', (req, res) => {
    // console.log(req.session)
    req.body.addtime = new Date().toLocaleString();
    req.body.uid = req.session.uid;
    bookmodel.addbook(req.body, (result) => {
        console.log(result)
        if (result.insertId) {
            res.json({ code: 1, Msg: '添加成功' });
        } else {
            res.json({ code: -1, Msg: '添加失败，请重新操作' });
        }
    })
})


router.post('/delbooklist', (req, res) => {
    let bid=req.body.bid;
    req.body.uid = req.session.uid;
    bookmodel.delbooklist(bid, (result) => {
        if (result.affectedRows) {
            res.json({ code: 1, Msg: '删除成功' });
        } else {
            res.json({ code: -1, Msg: '删除失败，请重新操作' });
        }
    })
})
router.post('/editbook', (req, res) => {
    // req.body.uid = req.session.uid;
 console.log(req.session.uid)
    let title=req.body.title;
    let author=req.body.author;
    let series=req.body.series;
    let isbn=req.body.isbn;
    let price=req.body.price;
    let press=req.body.press;
    let pdata=req.body.pdata;
    let imgsrc=req.body.imgsrc;
    let contentv=req.body.contentv;
    let authorv=req.body.authorv;
    let bid=req.body.bid;
    console.log(req.body);

    bookmodel.editbook(title,author,series,isbn,price,press,pdata, imgsrc,contentv,authorv,bid,(result) => {
        // console.log(result)
        if (result.affectedRows) {
            res.json({ code: 1, Msg: '修改成功' });
        } else {
            // console.log(999)
            res.json({ code: -1, Msg: '修改失败，请重新操作' });
        }
    })
})

module.exports = router;

