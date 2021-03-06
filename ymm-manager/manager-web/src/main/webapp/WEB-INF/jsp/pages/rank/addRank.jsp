<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加等级-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form" id="rankAddForm">
        <div class="layui-form-item">
            <label for="rank_id" class="layui-form-label">
                <span class="we-red">*</span>等级ID
            </label>
            <div class="layui-input-inline">
                <input type="text" id="rank_id" name="rank_id" lay-verify="required" readonly autocomplete="off" class="layui-input">
            </div>
            <%--<div class="layui-form-mid layui-word-aux">
                只能为数字
            </div>--%>
        </div>

        <div class="layui-form-item">
            <label for="rank_name" class="layui-form-label">
                <span class="we-red">*</span>等级称号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="rank_name" name="rank_name" lay-verify="required|rank_name" autocomplete="" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                不能含特殊字符，至少2个字符
            </div>
        </div>

        <div class="layui-form-item">
            <label for="points" class="layui-form-label">
                <span class="we-red">*</span>等级最低积分
            </label>
            <div class="layui-input-inline">
                <input type="text" id="points" name="points" lay-verify="required|number" autocomplete="" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                只能为数字
            </div>
        </div>

        <div class="layui-form-item">
            <label for="discount" class="layui-form-label">
                <span class="we-red">*</span>所享折扣
            </label>
            <div class="layui-input-inline">
                <input type="text" id="discount" name="discount" lay-verify="required|discount" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                请填写<=1的小数
            </div>
        </div>

        <div class="layui-form-item">
            <button class="layui-btn" lay-filter="add" lay-submit="">确定</button>
        </div>

    </form>
</div>
<script>
    layui.extend({
        admin: '{/}../../static/js/admin'
    });
    layui.use(['form', 'jquery','util','admin', 'layer'], function() {
        var form = layui.form,
            $ = layui.jquery,
            util = layui.util,
            admin = layui.admin,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            rank_name: function(value) {
                if(value.length < 2) {
                    return '等级称号至少得2个字符';
                }
                if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                    return '等级称号不能有特殊字符';
                }

            },
            discount: [/^[0-1]+(.[0-9]{1,2})?$/, '只能填写<=1的小数'],/*/(.+){2,12}$/*/
        });

        //失去焦点时判断值为空不验证，一旦填写必须验证
        /*$('input[name="email"]').blur(function(){
            //这里是失去焦点时的事件
            if($('input[name="email"]').val()){
                //console.log($('input[name="email"]').val());
                $('input[name="email"]').attr('lay-verify','email');
            }else{
                $('input[name="email"]').removeAttr('lay-verify');
            }
        });*/

        //监听提交
        form.on('submit(add)', function(data) {
            //console.log(data.field);
            var rank_name = data.field.rank_name;
            //console.log(rank_name);

            //提交数据
            $.ajax({
                data:$("#rankAddForm").serialize(),
                dataType:"text",
                type:"post",
                url:"${pageContext.request.contextPath}/rank/addRank",
                success:function(res){
                    if(res!=0){
                        layer.alert("添加成功", {icon: 6}, function (){
                            // 获得frame索引
                            var index=parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            parent.layer.close(index);
                        });
                    }else{
                        layer.msg('添加失败',{
                            icon:2,
                            time:1000
                        });
                    }
                }
            });
            return false;
        });
        form.render(); // 更新全部
    });
</script>
</body>

</html>
