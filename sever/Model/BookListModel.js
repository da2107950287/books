const DbBase = require('./DbBase');
class BookListModel extends DbBase {
    constructor() {
        super();
        this.table = "book";
    }
    getbook(page, callback) {
        let pagenum = 9;
        let start = (page - 1) * pagenum;
        let sql = "select bid,imgsrc,title,author,price from " + this.table + " where status = 1 limit ? , ?";
        this.mydb.query(sql, [start, pagenum], (err, result) => {
            if (err) {
                callback(err);
            } else {
                callback(result);
            }
        })

    }
    newbook(page, callback) {
        let pagenum = 9;
        let start = (page - 1) * pagenum;
        let sql = "select bid,imgsrc,title,author,price from " + this.table + " where status = 1 order by addtime  limit ? , ?";
        this.mydb.query(sql, [start, pagenum], (err, result) => {
            if (err) {
                callback(err);
            } else {
                callback(result);
            }
        })

    }
    getbookinfo(bid, callback) {
        let sql = "select * from " + this.table + " where status = 1 and bid =  ? ";
        this.mydb.query(sql, [bid], (err, result) => {
            if (err) {
                callback(err);
            } else {
                callback(result);
            }
        })

    }
    gethotword(callback) {
        let sql = "select * from " + this.table + " where status = 1  order by hrnum desc limit 6";
        this.mydb.query(sql, (err, result) => {
            if (err) {
                callback(err);
            } else {
                callback(result);
            }
        })

    }

    search(value,callback) {
        // select * from book where status =1 and (title like "%起%" or author like "%起%")
        let sql = "select * from " + this.table + " where status =1 and (title like concat('%',?,'%') or author like concat('%',?,'%'))";
        this.mydb.query(sql,[value,value],(err, result) => {
            if (err) {
                callback(err);
            } else {
                callback(result);
            }
        })

    }
    seemore(page, callback) {
        let pagenum = 10;
        let start = (page - 1) * pagenum;
        let sql = "select * from " + this.table + " where status = 1 limit ? , ?";
        this.mydb.query(sql, [start, pagenum], (err, result) => {
            if (err) {
                callback(err);
            } else {
                callback(result);
            }
        })

    }
  
}
module.exports = BookListModel;