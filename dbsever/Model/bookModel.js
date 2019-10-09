const dbBase=require('./dbBase');
class bookModel extends dbBase{
    constructor(){
        super();
        this.table='book'
    }
    
    addbook(bookinfo,callback){
        let data1=[];
        let data2=[];
        let str=[];
        for (const key in bookinfo) {
            if (bookinfo.hasOwnProperty(key)) {
                data1.push(key);
                data2.push(bookinfo[key]);
                str.push('?');  
            }
        }
        let sql=`insert into ${this.table} (${data1.join()}) values(${str.join()})`;
        this.mydb.query(sql,data2,(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result);
            }
            // this.mydb.end();
        })
    }
    getfbook(callback){
        let sql=`select * from ${this.table} where fid = 0`;
        this.mydb.query(sql,(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result);
            }
            // this.mydb.end();
        })
    }
    selectbooklist(bid,callback){
        let sql=`select * from ${this.table} where bid =? `;
        this.mydb.query(sql,[bid],(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result);
            }
            // this.mydb.end();
        })
    }
    booklist(page,limitnum,callback){
        let sql=`select * from ${this.table} where 1 limit ${(page-1)*limitnum},${limitnum} ;`;
        let sqlcount=`select count(*) as num from ${this.table} where 1;`
        this.mydb.query(sql+sqlcount,(err,result)=>{
            if(err){
                callback(err);
                // console.log(err)
            }else{

                callback(result);
                // console.log(result);
            }
            // this.mydb.end();
        })
    }
    delbooklist(bid,callback){
        console.log(bid)
        let sql=`delete from ${this.table} where bid = ?`;
        this.mydb.query(sql,[bid],(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result); 
            }
            // this.mydb.end();
        })
    }
    editbook(title,author,series,isbn,price,press,pdata, imgsrc,contentv,authorv,bid,callback){
        console.log(bid)
        let sql=`UPDATE  ${this.table} SET title = ?,author = ?,series= ?,isbn = ?,price = ?,press = ?,pdata = ?, imgsrc = ?,contentv = ?,authorv = ?,status = 1 WHERE bid = ?`;
        this.mydb.query(sql,[title,author,series,isbn,price,press,pdata, imgsrc,contentv,authorv,bid],(err,result)=>{
           
            if(err){
                callback(err);
            }else{
               
                callback(result); 
                // console.log(666)
            }
            // this.mydb.end();
        })
    }
}
module.exports=bookModel;
