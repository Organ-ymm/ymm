<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>订单列表-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/orderlist.js" charset="utf-8"></script>

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
        <a href="">订单管理</a>
        <a>
          <cite>订单列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">&#x1002;</i></a>
</div>
<div class="weadmin-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 we-search" onsubmit="return false;">
            订单搜索:
          <%--  <div class="layui-input-inline">
                <select name="deliver_status">
                    <option value="">订单状态</option>
                    <option value="0">待发货</option>
                    <option value="1">待收货</option>
                </select>
            </div>--%>
            <div class="layui-inline">
                <input type="text" name="ordersText" id="ordersText" placeholder="请输入关键字" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" lay-submit="" lay-filter="search" data-type="reload"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <div class="weadmin-block demoTable">
        <button class="layui-btn layui-btn-danger" data-type="getCheckData"><i class="layui-icon">&#xe640;</i>批量删除</button>
        <span class="fr" id="countData" style="line-height: 40px"/>
    </div>
    <table class="layui-hide" id="ordersList" lay-filter="ordersList"></table>



    <%--<script type="text/html" id="operateTpl">

        &lt;%&ndash;<a title="编辑" onclick="WeAdminEdit('编辑','./edit', 2, 600, 400)" href="javascript:;">
            <i class="layui-icon">&#xe642;</i>
        </a>
        <a title="编辑" lay-event="edit" href="javascript:;">
            <i class="layui-icon">&#xe642;</i>
        </a>&ndash;%&gt;
        <a title="删除" id="order_del" onclick="order_del(this)" href="javascript:;">
            <i class="layui-icon">&#xe640;</i>
        </a>

    </script>--%>
</div>
<script type="text/html" id="operateTpl">
    <a title="删除" id="order_del" onclick="order_del(this)" href="javascript:;">
        <i class="layui-icon">&#xe640;</i>
    </a>
</script>

<script type="text/html" id="deliver_statusTpl">
    <input type="checkbox" name="deliver_status" value="{{d.user_id}}" lay-filter="deliver_status" lay-skin="switch" lay-text="待发货|待收货"
           {{1==d.deliver_status?'checked':''}}>
</script>

</body>

</html>