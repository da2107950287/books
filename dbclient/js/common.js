window.onload = function(){
document.querySelector('.layui-header').innerHTML = ` 
 <div class="layui-logo">当当云读书后台管理系统</div>
<!-- 头部区域（可配合layui已有的水平导航） -->
<ul class="layui-nav layui-layout-left">
  <li class="layui-nav-item"><a href="">控制台</a></li>
  <li class="layui-nav-item"><a href="">商品管理</a></li>
  <li class="layui-nav-item"><a href="">用户</a></li>
  <li class="layui-nav-item">
    <a href="javascript:;">其它系统</a>
    <dl class="layui-nav-child">
      <dd><a href="">邮件管理</a></dd>
      <dd><a href="">消息管理</a></dd>
      <dd><a href="">授权管理</a></dd>
    </dl>
  </li>
</ul>
<ul class="layui-nav layui-layout-right">
  <li class="layui-nav-item">
    <a href="javascript:;">
      <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
      贤心
    </a>
    <dl class="layui-nav-child">
      <dd><a href="">基本资料</a></dd>
      <dd><a href="">安全设置</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">退出</a></li>
</ul>`
document.querySelector('.layui-side').innerHTML=`
<div class="layui-side-scroll">
<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
<ul class="layui-nav layui-nav-tree"  lay-filter="test">
  <li class="layui-nav-item layui-nav-itemed">
    <a class="" href="javascript:;">图书分类</a>
    <dl class="layui-nav-child">
      <dd><a href="./addcate.html">分类添加</a></dd>
      <dd><a href="./catelist.html">分类管理</a></dd>
      <!-- <dd><a href="javascript:;">列表三</a></dd>
      <dd><a href="">超链接</a></dd> -->
    </dl>
  </li>
  <li class="layui-nav-item layui-nav-itemed">
    <a class="" href="javascript:;">图书</a>
    <dl class="layui-nav-child">
      <dd><a href="./addbook.html">图书添加</a></dd>
      <dd><a href="./booklist.html">图书管理</a></dd>
      <!-- <dd><a href="javascript:;">列表三</a></dd>
      <dd><a href="">超链接</a></dd> -->
    </dl>
  </li>

</ul>
</div>`

document.querySelector('.layui-footer').innerHTML=`  © layui.com - 底部固定区域`
}
axios.defaults.baseURL = 'http://localhost:8080';
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
axios.defaults.withCredentials=true;