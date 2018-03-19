<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/16
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>会员删除-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/delPage.js" charset="utf-8"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-nav">
			<span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">会员管理</a>
        <a>
          <cite>会员删除</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">&#x1002;</i></a>
</div>
<div class="weadmin-body">
    <div class="layui-row">
        <div class="layui-form layui-col-md12 we-search">
            会员搜索：
            <div class="layui-inline">
                <input type="text" id="userText" name="userText" placeholder="请输入用户名关键字" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" lay-submit="" lay-filter="search" data-type="reload"><i class="layui-icon">&#xe615;</i></button>
        </div>
    </div>
    <div class="weadmin-block demoTable">
        <button class="layui-btn layui-btn-normal" data-type="getCheckData"><i class="layui-icon">&#xe618;</i>批量恢复</button>
        <span class="fr" id="countData" style="line-height:40px"/>
    </div>
    <table class="layui-hide" id="delPage" lay-filter="delPage"></table>



    <script type="text/html" id="operateTpl">
        <%--<a title="恢复" onclick="WeAdminEdit('恢复','./edit', 2, 600, 400)" href="javascript:;">--%>
        <a title="恢复" id="member_regain" onclick="member_regain(this)" href="javascript:;">
            <i class="layui-icon">&#xe618;</i>
        </a>
        <a title="删除" id="member_del" onclick="member_del(this)" href="javascript:;">
            <i class="layui-icon">&#xe640;</i>
        </a>
    </script>

</div>
</body>

</html>
