const express = require('express');
const router = express.Router();
const BookListModel = require('../Model/BookListModel');
let bookListModel=new BookListModel();

router.get('/', (req, res) => {
    let page = req.query.page;
    // console.log(page)
    bookListModel.getbook(page,(result) => {
        // console.log(result)
        res.json(result);

    })
})
router.get('/newbook', (req, res) => {
    let page = req.query.page;
    // console.log(page)
    bookListModel.newbook(page,(result) => {
        // console.log(result)
        res.json(result);

    })
})
router.get('/getbookinfo', (req, res) => {
    let bid = req.query.bid;
    // console.log(page)
    bookListModel.getbookinfo(bid,(result) => {
        res.json(result);

    })
})
router.post('/search', (req, res) => {
    let value = req.body.value;
    // console.log(value)
    bookListModel.search(value,(result) => {
        // console.log(result)
        res.json(result);

    })
})

router.post('/seemore', (req, res) => {
    let page = req.body.page;
    // console.log(value)
    bookListModel.seemore(page,(result) => {
        // console.log(result.bid)
        res.json(result);

    })
})


module.exports=router;