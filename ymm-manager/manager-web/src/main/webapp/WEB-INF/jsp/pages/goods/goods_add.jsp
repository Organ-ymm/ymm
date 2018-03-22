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

<body>
<div class="weadmin-body">
    <form class="layui-form" id="goodsAddForm">
        <div class="layui-form-item">
            <label for="goods_name" class="layui-form-label">
                <span class="we-red">*</span>商品名称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_name" name="goods_name" required="" lay-verify="required"
                       autocomplete="off" placeholder="商品名称..." class="layui-input">
            </div>

        </div>

        <div class="layui-form-item">
            <label for="goods_sn" class="layui-form-label">
                <span class="we-red">*</span>商品货号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_sn" name="goods_sn" required="" lay-verify="required"
                       autocomplete="off" placeholder="商品唯一货号..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span class="we-red">*</span>分类</label>
            <div class="layui-input-block">
                <select name="cat_id" id="category" required="" lay-verify="required" lay-filter="category">
                    <option value="">请选择</option>

                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span class="we-red">*</span>品牌</label>
            <div class="layui-input-block">
                <select name="brand_id" required="" lay-verify="required" id="brand" lay-filter="brand">
                    <option value="">请选择</option>

                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="goods_number" class="layui-form-label">
                <span class="we-red">*</span>库存量
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_number" name="goods_number" required="" lay-verify="required|number"
                       autocomplete="off" placeholder="库存量..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="market_price" class="layui-form-label">
                <span class="we-red">*</span>市场售价
            </label>
            <div class="layui-input-inline">
                <input type="text" id="market_price" name="market_price" required="" lay-verify="required|number"
                       autocomplete="off" placeholder="市场售价..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="shop_price" class="layui-form-label">
                <span class="we-red">*</span>本店售价
            </label>
            <div class="layui-input-inline">
                <input type="text" id="shop_price" name="shop_price" required="" lay-verify="required|number"
                       autocomplete="off" placeholder="本店售价..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="promote_price" class="layui-form-label">
                <span class="we-red">*</span>促销价格
            </label>
            <div class="layui-input-inline">
                <input type="text" id="promote_price" name="promote_price" required="" lay-verify="required|number"
                       autocomplete="off" placeholder="促销价格..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="keywords" class="layui-form-label">
                <span class="we-red">*</span>关键字
            </label>
            <div class="layui-input-inline">
                <input type="text" id="keywords" name="keywords" required="" lay-verify="required"
                       autocomplete="off" placeholder="关键字..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="goods_brief" class="layui-form-label">
                <span class="we-red">*</span>简短描述
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_brief" name="goods_brief" required="" lay-verify="required"
                       autocomplete="off" placeholder="简短描述..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="goods_desc" class="layui-form-label">
                <span class="we-red">*</span>详细描述
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_desc" name="goods_desc" required="" lay-verify="required"
                       autocomplete="off" placeholder="详细描述..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="goods_img" class="layui-form-label">
                <span class="we-red">*</span>图片
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_img" name="goods_img" required="" lay-verify="required"
                       autocomplete="off" placeholder="图片..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="goods_thumb" class="layui-form-label">
                <span class="we-red">*</span>微缩图片
            </label>
            <div class="layui-input-inline">
                <input type="text" id="goods_thumb" name="goods_thumb" required="" lay-verify="required"
                       autocomplete="off" placeholder="微缩图片..." class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="is_new" class="layui-form-label">
                <span class="we-red">*</span>是否新品
            </label>
            <div class="layui-input-block">
                <input type="checkbox" name="is_new" id="is_new" lay-skin="switch" value="1" lay-text="是|否">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="is_hot" class="layui-form-label">
                <span class="we-red">*</span>是否热销
            </label>
            <div class="layui-input-block">
                <input type="checkbox" name="is_hot" id="is_hot" lay-skin="switch" value="1" lay-text="是|否">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="give_integral" class="layui-form-label">
                <span class="we-red">*</span>积分
            </label>
            <div class="layui-input-inline">
                <input type="text" id="give_integral" name="give_integral" required="" lay-verify="required|number"
                       autocomplete="off" placeholder="积分..." class="layui-input">
            </div>

        </div>


        <div class="layui-form-item">
            <label for="status" class="layui-form-label">
                <span class="we-red">*</span>是否上架
            </label>
            <div class="layui-input-block">
                <input type="checkbox" name="status" id="status" lay-skin="switch" value="1" lay-text="是|否">
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
    //设定全局变量,function中要使用该变量
    var form;
    var $;
    layui.use(['form', 'jquery', 'layer', 'admin'], function () {
        form = layui.form;
        $ = layui.jquery;
        var admin = layui.admin,
            layer = layui.layer;
        //下拉选项的回显
        loadCategory();
        loadBrand();


        //监听提交
        form.on('submit(add)', function (data) {

            //提交Ajax
            $.ajax({
                data: $("#goodsAddForm").serialize(),
                dataType: "text",
                type: "post",
                url: "${pageContext.request.contextPath}/goods/goods_add",
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

    //下拉选项的回显
    function loadCategory() {
        //去后台查询所有的分类信息
        $.ajax({
            data: {'value': 12},
            dataType: "json",
            type: "GET",
            url: "${pageContext.request.contextPath}/category/categorySelect",
            success: function (data) {

                var category = document.getElementById("category");
                for (var i = 0; i < data.length; i++) {
                    //将后台返回的json格式的分类信息,逐个添加到select中option
                    var option = document.createElement("option");
                    option.setAttribute("value", data[i].cat_id);
                    option.innerText = data[i].cat_name;
                    category.appendChild(option);
                    form.render('select');
                }
            }
        });
    }

    function loadBrand() {
        //去后台查询所有的分类信息
        $.ajax({

            type: "GET",
            url: "${pageContext.request.contextPath}/brandSelect",
            success: function (data) {

                var brand = document.getElementById("brand");
                for (var i = 0; i < data.length; i++) {
                    //将后台返回的json格式的分类信息,逐个添加到select中option
                    var option = document.createElement("option");
                    option.setAttribute("value", data[i].brand_id);
                    option.innerText = data[i].brand_name;
                    brand.appendChild(option);
                    form.render('select');
                }
            }
        });
    }
</script>
</body>

</html>