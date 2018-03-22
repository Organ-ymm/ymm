<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-后台管理系统-Admin 1.0</title>
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

      <%-- CREATE TABLE `orders` (
`order_id` int(11) NOT NULL COMMENT '订单编号',
`user_id` int(11) DEFAULT NULL COMMENT '下单会员id',
`receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
`receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址',
`receiver_phone` int(11) DEFAULT NULL COMMENT '收件人电话',
`order_time` date DEFAULT NULL COMMENT '下单时间',
`order_money` double(10,2) DEFAULT NULL COMMENT '订单总金额',
`pay_status` int(1) DEFAULT NULL COMMENT '支付状态：-1待发货,0待收货，1已完成',
`deliver_status` int(1) DEFAULT NULL COMMENT '发货状态：-1支付失败，0未付款,1支付成功',
PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;--%>


<body>
<div class="weadmin-body">
    <form class="layui-form" id="updateToForm" >
        <div class="layui-form-item">
            <label for="order_id" class="layui-form-label">
                <span class="we-red">*</span>订单编号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="order_id" name="order_id" required="" lay-verify="required"
                       autocomplete="off"  readonly class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">发货状态</label>
            <div class="layui-input-block">
                <%--<input type="checkbox" id="status" name="status" lay-skin="switch" lay-text="是|否" {{ 1==d.status?'checked':''}}/>--%>
                <input type="radio" name="deliver_status" value="0" title="未发货">
                <input type="radio" name="deliver_status" value="1" title="待收货" checked>
            </div>
        </div>

        <div class="layui-form-item">
            <button  class="layui-btn" lay-filter="update" lay-submit="">
                修改
            </button>
        </div>
    </form>
</div>
<script type="text/javascript">
    layui.extend({
        admin: '{/}../../static/js/admin'
    });
    layui.use(['form','layer','jquery','admin'], function(){
        var form = layui.form,
            admin = layui.admin,
            layer = layui.layer,
            $ = layui.jquery;



        //监听提交
        form.on('submit(update)', function(data){
            $.ajax({
                data : $("#updateToForm").serialize(),
                dataType : "text",
                type : "post",
                url : "${pageContext.request.contextPath}/order/orders_update",
                success : function(res) {
                    if (res>0) {
                        layer.alert("修改成功", {icon: 6}, function () {
                            // 获得frame索引
                            var index = parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            parent.layer.close(index);
                        });
                    }else{
                        layer.alert("修改失败", {icon: 5}, function () {
                            // 获得frame索引
                            var index = parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            parent.layer.close(index);
                        });
                    }

                }
            });
            return false;
        });

    });
</script>
</body>

</html>