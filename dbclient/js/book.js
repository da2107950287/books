; !function () {
    let form = layui.form;
    var layer = layui.layer;

    //分类添加
    // axios.defaults.baseURL = 'http://localhost:8080';
    // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
    form.on('submit(addbook)', function (data) {
        console.log(document.querySelector('img[id="imgshow"]').src)

        axios.post('/book/addbook', {
            title: document.querySelector('input[name="title"]').value,
            author: document.querySelector('input[name="author"]').value,
            series: document.querySelector('input[name="series"]').value,
            isbn: document.querySelector('input[name="isbn"]').value,
            price: document.querySelector('input[name="price"]').value,
            press: document.querySelector('input[name="press"]').value,
            pdata: document.querySelector('input[name="pdata"]').value,
            imgsrc: document.querySelector('#imgshow').src,
            contentv: document.querySelector('#text1').value,
            authorv: document.querySelector('#text2').value,
        })
            .then(function (response) {
                layer.msg(response.data.Msg);
                if(response.data.code==1){
                    window.location.href='./booklist.html'
                }
                // console.log(response);
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
            , url: 'http://localhost:8080/book/booklist' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                { field: 'bid', title: 'ID', width: 80, sort: true, fixed: 'left' }
                , { field: 'title', title: '书名', width: 80 }
                , { field: 'author', title: '作者', width: 80 }
                , { field: 'series', title: '系列', width: 80 }
                , { field: 'isbn', title: '书号', width: 80 }
                , { field: 'price', title: '价格', width: 80, sort: true }
                , { field: 'press', title: '出版社', width: 80 }
                , { field: 'pdata', title: '出版时间', width: 100, sort: true }
                , { field: 'imgsrc', title: '封面照片', width: 100 }
                , { field: 'contentv', title: '内容简介', width: 100 }
                , { field: 'authorv', title: '作者简介', width: 100 }
                , { title: '操作', width: 120, fixed: 'right', toolbar: '#oper' }
            ]]
        });
        //监听工具条
        table.on('tool(oper)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            console.log(data)
            if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function (index) {
                    console.log(data)
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    //向服务端发送删除指令
                    axios.post('/book/delbooklist', {
                        bid: data.bid,
                    })
                        .then(function (response) {
                            layer.msg(response.data.Msg);
                        })
                        .catch(function (error) {
                            console.log(error);
                        });
                });
            } else if (layEvent === 'edit') { //编辑
                window.location.href = './editbook.html?bid=' + data.bid;
            }
        });
    });
    let inputId = document.querySelector('#bid');
    // if(inputId){
    let search = window.location.search;
    let bid = search.split('=').pop();
    // axios.defaults.baseURL = 'http://localhost:8080';
    // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
    axios.post('/book/selectbooklist', {
        bid: bid
    })
        .then(function (response) {
            console.log(response.data[0])
            form.val("editbookform", response.data[0]);
            document.querySelector('#imgshow').style.display = 'block';
            document.querySelector('#imgshow').src = response.data[0].imgsrc;
            editor1.txt.html(response.data[0].contentv);
            editor2.txt.html(response.data[0].authorv);

        })
        .catch(function (error) {
            console.log(error);
        });
    // }
    form.on('submit(editbook)', function (data) {
        // axios.defaults.baseURL = 'http://localhost:8080';
        // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
        // console.log(data)
        console.log(data.field);
        axios.post('/book/editbook', {
            title: document.querySelector('input[name="title"]').value,
            author: document.querySelector('input[name="author"]').value,
            series: document.querySelector('input[name="series"]').value,
            isbn: document.querySelector('input[name="isbn"]').value,
            price: document.querySelector('input[name="price"]').value,
            press: document.querySelector('input[name="press"]').value,
            pdata: document.querySelector('input[name="pdata"]').value,
            imgsrc: document.querySelector('#imgshow').src,
            contentv: document.querySelector('#text1').value,
            authorv: document.querySelector('#text2').value,
            bid:data.field.bid
        })
            .then(function (response) {
                layer.msg(response.data.Msg);
                if(response.data.code==1){
                    window.location.href='./booklist.html'
                }
               
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });

        return false;
    });


}();

