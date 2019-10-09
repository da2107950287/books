const mysql=require('mysql');
class dbBase{
    constructor(){
        this.mydb=mysql.createConnection(require('../Config/dbConfig'));
        this.mydb.connect();
    }
    end(){
        this.mydb.end();
    }
}
module.exports=dbBase;