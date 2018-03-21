<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/21
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>等级统计-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
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
          <cite>等级统计</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">&#x1002;</i></a>
</div>
<div class="weadmin-body">
    <span class="fr" id="countData" style="line-height: 40px"/>
</div>
<table class="layui-hide" id="ranktable" lay-filter="ranktable"></table>

    <script>
        layui.extend({
            admin: '{/}../../static/js/admin'
        });

        layui.use(['form', 'table', 'jquery', 'admin'], function () {
            var form = layui.form,
                table = layui.table,
                $ = layui.jquery,
                admin = layui.admin;

            table.render({
                //容器元素
                elem: '#ranktable',
                //最小宽度
                cellMinWidth: 80,
                //列
                cols: [
                    [{
                        field: 'rank_id', title: '等级ID',align: "center", sort: true/*,width:120*/
                    },{
                        field: 'rank_name', title: '等级称号',align: "center"/*,width:120*/
                    },{
                        field: 'rankSum', title: '人数',align: "center"/*,width:120*/
                    }/*,{
                        field: 'discount', title: '所享折扣'
                    }*/]
                ],
                //通过URL进行数据绑定
                url:'${pageContext.request.contextPath}/rank/ListRankSum',
                //是否开启分页
                page: false,
                // limits: [5, 10, 20, 50, 100],
                done: function (res, curr, count) {
                    // console.log(res);
                    // console.log(curr);
                    // console.log(count);
                    $("#countData").text("共有："+count+" 个等级");
                }
            });

        });

    </script>

</div>
</body>

</html>
