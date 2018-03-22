<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>管理员列表-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">

    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/brandlist.js" charset="utf-8"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-nav">
			<span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">管理员管理</a>
        <a>
          <cite>管理员列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">&#x1002;</i></a>
</div>
<div class="weadmin-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 we-search" onsubmit="return false;">
            品牌搜索：
            <div class="layui-inline">
                <input type="text" name="name" id="name" placeholder="请输入品牌关键字" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" lay-submit="" lay-filter="search" data-type="reload"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <div class="weadmin-block">
        <button class="layui-btn" onclick="WeAdminShow('添加用户','./brand_add',600,400)"><i class="layui-icon"></i>添加品牌</button>
    </div>

    <table class="layui-hide" id="brandList" lay-filter="brandList"></table>


    <script type="text/html" id="operateTpl">

        <a title="编辑" lay-event="edit" href="javascript:;">
            <i class="layui-icon">&#xe642;</i>
        </a>

        <a title="删除" onclick="brand_del(this)" href="javascript:;">
            <i class="layui-icon">&#xe640;</i>
        </a>
    </script>
</div>
</body>

</html>