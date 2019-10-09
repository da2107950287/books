var express = require('express')
var multer = require('multer')
var upload = multer({ dest: __dirname + '/../uploads' })

var router = express.Router()
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, __dirname + '/../uploads');//路径
  },
  filename: function (req, file, cb) {
    cb(null, new Date().valueOf() + '_' + Math.random().toString().substr(2, 6) + '.' + file.originalname.split('.').pop());//文件名
  }
})

var upload = multer({ storage: storage })
router.post('/', upload.single('avatar'), function (req, res, next) {
  let data = {
    "code": 0
    , "msg": ""
    , "data": {
      "src": "http://localhost:8080/uploads/" + req.file.filename
    }
  }
  console.log(data)
  res.json(data);

})
router.post('/mul', upload.array('photos'), function (req, res, next) {

  console.log(req.files);
  let data = {
    "errno": 0,
    "data": []
  }
  req.files.forEach(el => {
    data.data.push( 'http://localhost:8080/uploads/' + el.filename);
  });
  res.json(data);

})


module.exports = router;

