const dbBase=require('./dbBase');
class cateModel extends dbBase{
    constructor(){
        super();
        this.table='cate'
    }
    addcate(cateinfo,callback){
        let data1=[];
        let data2=[];
        let str=[];
        for (const key in cateinfo) {
            if (cateinfo.hasOwnProperty(key)) {
                data1.push(key);
                data2.push(cateinfo[key]);
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
    getfcate(callback){
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
    selectcatelist(cid,callback){
        let sql=`select * from ${this.table} where cid =? `;
        this.mydb.query(sql,[cid],(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result);
            }
            // this.mydb.end();
        })
    }
    catelist(page,limitnum,callback){
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
    delcatelist(cid,callback){
        let sql=`delete from ${this.table} where cid = ?`;
        this.mydb.query(sql,[cid],(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result); 
            }
            // this.mydb.end();
        })
    }
    editcate(name,fid,cid,callback){
        let sql=`UPDATE  ${this.table} SET name = ? , fid = ? WHERE cid = ?`;
        this.mydb.query(sql,[name,fid,cid],(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result); 
            }
            // this.mydb.end();
        })
    }
}
module.exports=cateModel;
