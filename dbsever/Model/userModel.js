const dbBase=require('./dbBase');
class userModel extends dbBase{
    constructor(){
        super();
        this.table='user'
    }
    userReg(userinfo,callback){
        let data1=[];
        let data2=[];
        let str=[];
        console.log(userinfo)
        for (const key in userinfo) {
            if (userinfo.hasOwnProperty(key)) {
                data1.push(key);
                data2.push(userinfo[key]);
                str.push('?');  
            }
        }
        // console.log(data1,data2,str)
        let sql=`insert into user (${data1.join()}) values(${str.join()})`;
        this.mydb.query(sql,data2,(err,result)=>{
            if(err){
                console.log(err)
                callback(err);
            }else{
                callback(result);
            }
            // this.mydb.end();
        })
    }
    userLogin(tel,callback){
        let sql=`select * from ${this.table} where tel = ?`;
        this.mydb.query(sql,[tel],(err,result)=>{
            if(err){
                callback(err);
            }else{
                callback(result);
            }
            // this.mydb.end();
        })
    }
}
module.exports=userModel;