<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登录-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <%--原：<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />--%>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo_icon.png" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>

</head>
<body class="login-bg">

<div class="login">
    <div class="message"><img src="${pageContext.request.contextPath}/images/ymm_logo.png"></div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" >
        <input name="ad_username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="ad_password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input class="loginin" value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20" >
    </form>
</div>

<script type="text/javascript">
    layui.use(['form','jquery','layer'], function(){
        var form = layui.form,
            $ = layui.jquery,
            layer = layui.layer;
        //监听提交
        form.on('submit(login)', function(data){
            $.post(
                "${pageContext.request.contextPath}/login",
                data.field,
                function(rec){
                    if(rec=="1"){
                        sessionStorage.setItem("login",1);
                        location.href = "${pageContext.request.contextPath}/index"
                    }
                    if(rec=="0"){

                        alert("用户名或密码错误")
                        }
                }
            );
        });
    });
</script>
<!-- 底部结束 -->
</body>
</html>
