<%--
  Created by IntelliJ IDEA.
  User: SmallJIE
  Date: 2018/3/29
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <!-- layui CSS
  ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <div id="testpage"></div>


</head>
<body>

<input type="button" onclick="addCart()" value="ceshi">



<!-- layui JS
   ============================================ -->
<script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>

<script>
    layui.use(['layer','jquery','laypage'], function () {
        var $ = layui.jquery,
            laypage = layui.laypage,
            layer = layui.layer;

        //执行一个laypage实例
        laypage.render({
            elem: 'testpage' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: 99 //数据总数，从服务端得到
            ,limit:16
            ,jump: function(obj, first){
                //obj包含了当前分页的所有参数，比如：
                console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                console.log(obj.limit); //得到每页显示的条数

                //首次不执行
                if(!first){
                    //do something
                }
            }
        });

        window.addCart = function () {
            layer.msg("加入成功!");
        }
    });
</script>

</body>
</html>
