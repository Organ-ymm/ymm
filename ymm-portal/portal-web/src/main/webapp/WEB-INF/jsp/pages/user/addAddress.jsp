<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"  media="all">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/userStatic/js/jquery-1.12.4.min.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>添加收货地址</legend>
</fieldset>

<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">收货人姓名</label>
        <div class="layui-input-block">
            <input type="text" name="consignee" lay-verify="title" autocomplete="off" placeholder="请输入姓名" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">手机</label>
            <div class="layui-input-inline">
                <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">省份</label>
        <div class="layui-input-block">
            <input type="text" name="province" lay-verify="title" autocomplete="off" placeholder="如浙江省" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">城市</label>
        <div class="layui-input-block">
            <input type="text" name="city" lay-verify="title" autocomplete="off" placeholder="如杭州市" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">地区</label>
        <div class="layui-input-block">
            <input type="text" name="county" lay-verify="title" autocomplete="off" placeholder="如萧山区" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">详细地址</label>
        <div class="layui-input-block">
            <input type="text" name="street" lay-verify="title" autocomplete="off" placeholder="xx街道xx号" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">邮编</label>
        <div class="layui-input-block">
            <input type="text" id="zipcode" name="zipcode" lay-verify="title" autocomplete="off" placeholder="xxxxxx" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">地址标签</label>
        <div class="layui-input-block">
            <input type="text" id="tag" name="tag" lay-verify="title" autocomplete="off" placeholder="家或公司" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script>
    layui.use(['form', 'layer'], function(){
        var form = layui.form
            ,layer = layui.layer
        //监听提交
        form.on('submit(demo1)', function(data){
            alert(data.field.city);
            $.ajax({
                type: 'post',
                url: '../../addAddress',
                data: {"consignee":data.field.consignee,"phone":data.field.phone,"province":data.field.province,"city":data.field.city,"county":data.field.county,"street":data.field.street,"tag":data.field.tag},
                dataType: 'text',
                success: function (rec) {
                    if (rec == "1") {
                        layer.msg("添加成功");
                    } else {
                        layer.msg("添加失败");
                    }
                }, error: function (data) {
                    layer.msg("添加失败");
                }
            });
            return false;
        });


    });
</script>

</body>
</html>