; !function () {
    var form = layui.form;
    var layer = layui.layer;
    //注册
  
    form.on('submit(reg)', function (data) {
        axios.defaults.baseURL = 'http://localhost:8080';
        axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
        axios.post('/user/reg', {
            tel: document.querySelector("input[name='tel']").value,
            passwd: document.querySelector("input[name='passwd']").value,
            username: document.querySelector("input[name='username']").value

        })
            .then(function (response) {
                layer.msg(response.data.Msg);
                if (response.data.code == 1) {
                    window.location.href = './login.html'
                }
                // console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });

        return false;
    });
    //登录
    form.on('submit(login)', function (data) {
        axios.defaults.baseURL = 'http://localhost:8080';
        axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
        axios.post('/user/login', {
            tel: document.querySelector("input[name='tel']").value,
            passwd: document.querySelector("input[name='passwd']").value
        })
            .then(function (response) {
                // window.location.href='./cate.html';
                console.log(response)
                if (response.data.code == 1) {
                    layer.msg(response.data.Msg);
                    window.location.href = './cate.html'
                }
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });

        return false;
    });


}();

