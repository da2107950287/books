const express = require('express');
const multer = require('multer');
const fs = require('fs');
const router = express.Router();
let hostname = 'http://localhost:8080/';
// let upload = multer({ dest: __dirname + '/../uploads/' })
let storage = multer.diskStorage({
    destination: function (req, file, cb) {
        // 把上传的图片按月份分开存储  uploads/2019/01    uploads/2019/02  uploads/2019/03
        let dirname =  __dirname + '/../uploads/' + new Date().getFullYear() + '/' + (new Date().getMonth() + 1).toString().padStart(2, '0'); 
        if(!fs.existsSync(dirname)){
            fs.mkdirSync(dirname, {recursive:true});
        }
        cb(null, dirname)
    },
    filename: function (req, file, cb) {
        cb(null, new Date().valueOf() + '_' + Math.random().toString().substr(2, 6) + '.' + file.originalname.split('.').pop())
    }
});
let upload = multer({ storage: storage });
router.post('/', upload.single('avatar'), (req, res) => {
    console.log(req.file);
    let data = {
        "code": 0
        , "msg": ""
        , "data": {}
    }
    let dirname = 'uploads/' + new Date().getFullYear() + '/' + (new Date().getMonth() + 1).toString().padStart(2, '0') + '/';
    data.data.src = hostname + dirname + req.file.filename;
    res.json(data);
});
router.post('/mul', upload.array('imgs'), (req, res) => {
    console.log(req.files);
    let data = {
        "errno": 0,
        "data": []
    }
    let dirname = 'uploads/' + new Date().getFullYear() + '/' + (new Date().getMonth() + 1).toString().padStart(2, '0') + '/';
    req.files.forEach(el=>{
        data.data.push(hostname + dirname + el.filename);
    });
    res.json(data);
});

module.exports = router;