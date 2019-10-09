; !function () {
    let form = layui.form;
    var layer = layui.layer;
    let fid = document.querySelector('select[name="fid"]');

    if (fid) {
        // axios.defaults.baseURL = 'http://localhost:8080';
        // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
        axios.get('/cate/getfcate', {})
            .then(function (result) {
                // console.log(result.data);
                let str = '<option value="0">请选择父级分类</option>';
                result.data.forEach(el => {
                    str += `<option value="${el.cid}">${el.name}</option>`;
                });
                fid.innerHTML = str;
                form.render('select');
            })
            .catch(function (error) {
                console.log(error);
            });
    }
    //分类添加
    form.on('submit(addcate)', function (data) {

        axios.post('/cate/addcate', {
            name: document.querySelector('input[name="name"]').value,
            fid: document.querySelector('select[name="fid"]').value
        })
            .then(function (response) {
                layer.msg(response.data.Msg);
                if(response.data.code==1){
                    window.location.href = './catelist.html'
                }
            })
            .catch(function (error) {
                console.log(error);
            });

        return false;
    });
    layui.use('table', function () {
        var table = layui.table;
        //第一个实例
        table.render({
            elem: '#demo'
            , height: 312
            , url: 'http://localhost:8080/cate/catelist' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                { field: 'cid', title: 'ID', width: 80, sort: true, fixed: 'left' }
                , { field: 'name', title: '类名', width: 80, sort: true }
                , { title: '操作', width: 120, fixed: 'right', toolbar: '#oper' }
            ]]
        });
        //监听工具条
        table.on('tool(oper)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function (index) {
                    console.log(data)
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    //向服务端发送删除指令
                    // axios.defaults.baseURL = 'http://localhost:8080';
                    // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
                    axios.post('/cate/delcatelist', {
                        cid: data.cid,
                    })
                        .then(function (response) {
                            layer.msg(response.data.Msg);
                        })
                        .catch(function (error) {
                            console.log(error);
                        });
                });
            } else if (layEvent === 'edit') { //编辑
                window.location.href = './editcate.html?cid=' + data.cid;
                //同步更新缓存对应的值
                // obj.update({
                //     name: document.querySelector('input[name="name"]').value,
                //     fid: document.querySelector('select[name="fid"]').value
                // });
            }
        });
    });
    let inputId = document.querySelector('#cid');
    if (inputId) {
        let search = window.location.search;
        let cid = search.split('=').pop();
        // axios.defaults.baseURL = 'http://localhost:8080';
        // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
        axios.post('/cate/selectcatelist', {
            cid: cid
            // cid:document.queryCommandE
        })
            .then(function (response) {
                // layer.msg(response.data.Msg);

                // console.log(response)
                // console.log(response.data[0].name)
                form.val("editcateform", response.data[0]);
                // console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
    }
    form.on('submit(editcate)', function (data) {
        // axios.defaults.baseURL = 'http://localhost:8080';
        // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
        console.log(data)
        console.log(data.field)
        axios.post('/cate/editcate', data.field)
            .then(function (response) {
                console.log(response.data)
                layer.msg(response.data.Msg);
                if(response.data.code==1){
                    window.location.href = './catelist.html'
                }
               
                // console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });

        return false;
    });


}();

