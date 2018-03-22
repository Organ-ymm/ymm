<%--
  Created by IntelliJ IDEA.
  User: SmallJIE
  Date: 2018/3/12
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<%--CREATE TABLE `orders` (
`order_id` int(11) NOT NULL COMMENT '订单编号',
`user_id` int(11) DEFAULT NULL COMMENT '下单会员id',
`receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
`receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址',
`receiver_phone` int(11) DEFAULT NULL COMMENT '收件人电话',
`order_time` date DEFAULT NULL COMMENT '下单时间',
`order_money` double(10,2) DEFAULT NULL COMMENT '订单总金额',
`pay_status` int(1) DEFAULT NULL COMMENT '支付状态：-1未支付，1已支付',
`deliver_status` int(1) DEFAULT NULL COMMENT '发货状态：,-1待发货,0待收货',
PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;--%>

<body>
<div class="weadmin-body">
    <form class="layui-form" id="catAddForm">
        <div class="layui-form-item">
            <label for="user_id" class="layui-form-label">
                <span class="we-red">*</span>下单会员id
            </label>
            <div class="layui-input-inline">
                <input type="text" id="user_id" name="user_id" required="" lay-verify="required"
                       autocomplete="off" placeholder="名称..." class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="receiver_name" class="layui-form-label">
                <span class="we-red">*</span>收货人姓名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="receiver_name" name="receiver_name" required="" lay-verify="required"
                       autocomplete="off" placeholder="名称..." class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="receiver_address" class="layui-form-label">
                <span class="we-red">*</span>收货地址
            </label>
            <div class="layui-input-inline">
                <input type="text" id="receiver_address" name="receiver_address" required="" lay-verify="required"
                       autocomplete="off" placeholder="名称..." class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="receiver_phone" class="layui-form-label">
                <span class="we-red">*</span>收件人电话
            </label>
            <div class="layui-input-inline">
                <input type="text" id="receiver_phone" name="receiver_phone" required="" lay-verify="required"
                       autocomplete="off" placeholder="名称..." class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="order_time" class="layui-form-label">
                <span class="we-red">*</span>下单时间
            </label>
            <div class="layui-input-inline">
                <input type="text" id="order_time" name="order_time" required="" lay-verify="required"
                       autocomplete="off" placeholder="名称..." class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="order_money" class="layui-form-label">
                <span class="we-red">*</span>订单总金额
            </label>
            <div class="layui-input-inline">
                <input type="text" id="order_money" name="order_money" required="" lay-verify="required"
                       autocomplete="off" placeholder="名称..." class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">支付状态</label>
            <div class="layui-input-block">
                <input type="radio" name="pay_status" value="0" title="未支付">
                <input type="radio" name="pay_status" value="1" title="已支付" checked>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">发货状态</label>
            <div class="layui-input-block">
                <input type="radio" name="deliver_status" value="0" title="代发货">
                <input type="radio" name="deliver_status" value="1" title="待收货" checked>
            </div>
        </div>

        <div class="layui-form-item">
            <button class="layui-btn" lay-filter="add" lay-submit="">
                添加
            </button>
        </div>
    </form>
</div>
<script type="text/javascript">
    layui.extend({
        admin: '{/}../../static/js/admin'
    });
    layui.use(['form', 'jquery', 'layer', 'admin'], function () {
        var form = layui.form,
            $ = layui.jquery,
            admin = layui.admin,
            layer = layui.layer;
        //开关监听
//        form.on('switch(switchTest)', function (data) {
//        //layer.msg(this.checked?"是":"否");
//            if (this.checked) {
//                $(this).val(1);
//            } else {
//                $(this).val(2);
//            }
//        layer.msg($(this).attr("value"));
//
//        });

        //监听提交
        form.on('submit(add)', function (data) {

            //提交Ajax
            $.ajax({
                data: $("#catAddForm").serialize(),
                dataType: "text",
                type: "post",
                url: "${pageContext.request.contextPath}/category/category_add",
                success: function (res) {
                    layer.alert("添加成功", {icon: 6}, function () {
                        // 获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //关闭当前frame
                        parent.layer.close(index);
                    });

                }
            });

            return false;
        });

    });
</script>
</body>

</html>