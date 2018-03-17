<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加会员-后台管理系统-Admin 1.0</title>
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
    <form class="layui-form" id="userAddForm">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="we-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="username" lay-verify="required|nikename" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                请设置至少2个字符，将会成为您唯一的登录名
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_alias" class="layui-form-label">
                <span class="we-red">*</span>昵称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_alias" name="alias" autocomplete="" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_sex" class="layui-form-label">性别</label>
            <div class="layui-input-block" id="L_sex">
                <input type="radio" name="sex" value="0" title="男" checked>
                <input type="radio" name="sex" value="1" title="女">
                <input type="radio" name="sex" value="" title="保密">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_phone" name="mobile_phone" lay-verify="required|phone" autocomplete="" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                <span class="we-red">*</span>邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_email" name="email" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="we-red">*</span>密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="password" lay-verify="required|password" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                2到12个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="we-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" lay-verify="required|repass" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
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
            nikename: function(value) {
                if(value.length < 2) {
                    return '登录名至少得2个字符';
                }

            },
            password: [/(.+){2,12}$/, '密码必须2到12位'],
            repass: function(value) {
                if($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });

        //失去焦点时判断值为空不验证，一旦填写必须验证
        $('input[name="email"]').blur(function(){
            //这里是失去焦点时的事件
            if($('input[name="email"]').val()){
                //console.log($('input[name="email"]').val());
                $('input[name="email"]').attr('lay-verify','email');
            }else{
                $('input[name="email"]').removeAttr('lay-verify');
            }
        });

        //监听提交
        form.on('submit(add)', function(data) {
            //console.log(data.field);
            var username = data.field.username;
            //console.log(username);
            //console.log(f.sex);
            //var sex = $('input:radio[name="sex"]:checked').val();

            //提交数据
            $.ajax({
                data:{"username":username},
                dataType:"text",
                type:"post",
                url:"${pageContext.request.contextPath}/user/verifyUsername",
                success:function(res){
                    if(res==0){
                        layer.alert("添加成功", {icon: 6}, function (){
                            var index=parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                            $.ajax({
                                data:$("#userAddForm").serialize(),
                                dataType:"text",
                                type:"post",
                                url:"${pageContext.request.contextPath}/user/addUser",
                                success:function (res) {


                                }
                            });
                            //return false;

                        });
                    }else{
                        layer.msg('登录名不可用',{
                            icon:2,
                            time:1000
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
