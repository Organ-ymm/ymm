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
        <form class="layui-form layui-col-md12 we-search">
            <div class="layui-inline">
                <input class="layui-input" placeholder="开始日" name="start" id="start">
            </div>
            <div class="layui-inline">
                <input class="layui-input" placeholder="截止日" name="end" id="end">
            </div>
            <div class="layui-input-inline">
                <select name="contrller">
                    <option>支付状态</option>
                    <option>未支付</option>
                    <option>已支付</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="contrller">
                    <option value="">订单状态</option>
                    <option value="0">待发货</option>
                    <option value="1">待收货</option>
                </select>
            </div>
            <div class="layui-inline">
                <input type="text" name="username" placeholder="请输入订单号" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
<div class="weadmin-body">
    <div class="layui-row">
    </div>
   <%-- <div class="weadmin-block">
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="WeAdminShow('添加分类','./orders_add')"><i class="layui-icon"></i>添加</button>
        <span class="fr" id="countData" style="line-height:40px"></span>
    </div>--%>
    <table class="layui-hide" id="ordersList" lay-filter="ordersList"></table>

</div>

<script type="text/html" id="operateTpl">
    <a title="编辑" lay-event="update" href="javascript:;">
        <i class="layui-icon">&#xe642;</i>
    </a>
    <a title="删除" id="orders_del" onclick="orders_del(this)" href="javascript:;">
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
        table.render({
            elem: '#ordersList', //指定元素
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
                    field: 'pay_status', title: '支付状态'
                },{
                    field: 'deliver_status', title: '发货状态'
                }, {
                    field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
                }]
            ],
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
                        $(this).text('已支付');
                    }
                });

                $("[data-field='deliver_status']").children().each(function () {

                    if ($(this).text() == '0') {
                        $(this).text('待发货');
                    }else if ($(this).text() == '1') {
                        $(this).text('待收货');
                    }
                });

            }

        });

        /*订单删除*/
        window.orders_del = function (obj) {
            layer.confirm('确认要删除吗？', function (index) {
                var id = $(obj).parents("tr").children("[data-field='order_id']").text();
                console.log(id);
                $(obj).parents("tr").remove();
                //提交ajax
                $.ajax({
                    data: {'id': id},
                    dataType: "text",
                    type: "GET",
                    url: "${pageContext.request.contextPath}/order/orders_delete",
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


        table.on('tool(ordersList)', function (obj) {
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'update') {
                var id = data.order_id;
//               layer.msg(data.order_id);
                var title = "修改订单";
                var url = "${pageContext.request.contextPath}/pages/order/orders_update";
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
                    content: url,
                    success: function (layero, index) {
                        //向iframe页的id=house的元素传值  // 参考 https://yq.aliyun.com/ziliao/133150
                        var body = layer.getChildFrame('body', index);
                        //巧妙的地方在这里哦
                        body.contents().find("#order_id").val(data.order_id);
                        body.contents().find("#deliver_status").val(data.deliver_status);
                    },
                    error: function (layero, index) {
                        alert("aaa");
                    }
                });
            }
        });

    });


</script>
</body>
</html>