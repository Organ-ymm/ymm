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
        <a href="">产品管理</a>
        <a><cite>分类管理</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="weadmin-body">
    <div class="layui-row">

    </div>
    <div class="weadmin-block">
        <button class="layui-btn" onclick="WeAdminShow('添加分类','./category_add')"><i class="layui-icon"></i>添加</button>
        <span class="fr" id="countData" style="line-height:40px"></span>
    </div>
    <table class="layui-hide" id="categoryList" lay-filter="categoryList"></table>

</div>

<script type="text/html" id="operateTpl">
    <a title="编辑" lay-event="edit" href="javascript:;">
        <i class="layui-icon">&#xe642;</i>
    </a>
    <a title="删除" id="cat_del" onclick="cat_del(this)" href="javascript:;">
        <i class="layui-icon">&#xe640;</i>
    </a>
</script>
<script>

    layui.extend({
        admin: '{/}../../static/js/admin'
    });
    layui.use(['table', 'jquery', 'admin'], function () {
        var table = layui.table,
            $ = layui.jquery,
            admin = layui.admin;

/*        CREATE TABLE `orders` (
            `order_id` int(11) NOT NULL COMMENT '订单编号',
            `user_id` int(11) DEFAULT NULL COMMENT '下单会员id',
            `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
            `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址',
            `receiver_phone` int(11) DEFAULT NULL COMMENT '收件人电话',
            `order_time` date DEFAULT NULL COMMENT '下单时间',
            `order_money` double(10,2) DEFAULT NULL COMMENT '订单总金额',
            `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0待确认，1已确认',
            `pay_status` int(1) DEFAULT NULL COMMENT '支付状态：-1待发货,0待收货，1已完成',
            `deliver_status` int(1) DEFAULT NULL COMMENT '发货状态：-1支付失败，0未付款,1支付成功',
            PRIMARY KEY (`order_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;*/


        table.render({
            elem: '#categoryList', //指定元素
            cellMinWidth: 80,
            cols: [
                [{
                    field: 'order_id', title: '订单编号'
                }, {
                    field: 'user_id', title: '下单会员id'
                }, {
                    field: 'receiver_name', title: '收货人姓名'
                }, {
                    field: 'receiver_address', title: '收货地址'
                },{
                    field: 'receiver_phone', title: '收件人电话'
                },{
                    field: 'order_time', title: '下单时间'
                },{
                    field: 'order_money', title: '订单总金额'
                },{
                    field: 'order_status', title: '订单状态'
                },{
                    field: 'pay_status', title: '支付状态'
                },{
                    field: 'deliver_status', title: '发货状态'
                }, {
                    field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
                }]
            ],

         /*   CREATE TABLE `orders` (
                `order_id` int(11) NOT NULL COMMENT '订单编号',
            `user_id` int(11) DEFAULT NULL COMMENT '下单会员id',
            `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
            `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址',
            `receiver_phone` int(11) DEFAULT NULL COMMENT '收件人电话',
            `order_time` date DEFAULT NULL COMMENT '下单时间',
            `order_money` double(10,2) DEFAULT NULL COMMENT '订单总金额',
            `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0待确认，1已确认',
            `pay_status` int(1) DEFAULT NULL COMMENT '支付状态：-1待发货,0待收货，1已完成',
            `deliver_status` int(1) DEFAULT NULL COMMENT '发货状态：-1支付失败，0未付款,1支付成功',
            PRIMARY KEY (`order_id`) */

            //通过URL进行数据绑定
            url: '${pageContext.request.contextPath}/order/list',
            //是否开启分页
            page: true,
            limits: [5, 10, 15],
            done: function (res, curr, count) {
                $("#countData").text("共有数据：" + count + " 条");
                $("[data-field='pay_status']").children().each(function () {
                    //每次遍历进来得到的this就是DOM对象
                    //DOM--JQ===$(this)
                    //JQ--DOM===[0],get(0)
                    if ($(this).text() == '0') {
                        $(this).text('未支付');
                    } else if ($(this).text() == '1') {
                        $(this).text('已完成');
                    } else if ($(this).text() == '-1') {
                        $(this).text('待支付');
                    }
                });
                $("[data-field='order_status']").children().each(function () {
                    if ($(this).text() == '0') {
                        $(this).text('待确认');
                    } else if ($(this).text() == '1') {
                        $(this).text('已确认');
                    }
                });

                $("[data-field='deliver_status']").children().each(function () {
                    if ($(this).text() == '0') {
                        $(this).text('未支付');
                    } else if ($(this).text() == '1') {
                        $(this).text('支付成功');
                    } else if ($(this).text() == '-1') {
                        $(this).text('支付失败');
                    }
                });

            }

        });

        /*订单删除*/
        window.cat_del = function (obj) {
            layer.confirm('确认要删除吗？', function (index) {
                var id = $(obj).parents("tr").children("[data-field='cat_id']").text();
                //console.log(id);
                $(obj).parents("tr").remove();
                //提交ajax
                $.ajax({
                    data: {'id': id},
                    dataType: "text",
                    type: "GET",
                    url: "${pageContext.request.contextPath}/category/category_del",
                    success: function (res) {
                        if (res > 0) {
                            layer.msg('已删除!', {
                                icon: 1,
                                time: 1000
                            });
                        } else {
                            layer.msg('删除失败!', {
                                icon: 2,
                                time: 1000
                            });
                        }
                    }
                });

            });
        }


        table.on('tool(categoryList)', function (obj) {
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'edit') {

//               layer.msg(data.cat_id);
                var title = "修改分类";
                var url = "${pageContext.request.contextPath}/category/category_edit?id=" + data.cat_id;
                var w = ($(window).width() * 0.9);

                var h = ($(window).height() - 50);

                layer.open({
                    type: 2,
                    area: [w + 'px', h + 'px'],
                    fix: false, //不固定
                    maxmin: true,
                    shadeClose: true,
                    shade: 0.4,
                    title: title,
                    content: url
                });
            }
        });

    });

</script>
</body>
</html>