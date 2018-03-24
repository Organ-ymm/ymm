<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>修改会员信息-后台管理系统-Admin 1.0</title>
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
<div class="weadmin-body">
    <form class="layui-form" id="editForm" >
        <div class="layui-form-item">
            <label for="L_id" class="layui-form-label">
                <span class="we-red">*</span>用户ID
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_id" name="user_id" lay-verify="required"
                       autocomplete="off"  readonly class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_username" class="layui-form-label">
                <span class="we-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_username" name="username" lay-verify="required"
                       autocomplete="off"  readonly class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_alias" class="layui-form-label">
                昵称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_alias" name="alias"  autocomplete="off"  class="layui-input">
            </div>

        </div>
        <%--单选框--%>
        <div class="layui-form-item">
            <label for="L_sex" class="layui-form-label">性别</label>
                <div class="layui-input-block" id="L_sex" lay-filter="L_sex">
                    <input type="radio" name="sex" value=" " title="保密" checked>
                </div>
        </div>
        <%--下拉选项--%>
       <%-- <div class="layui-form-item" type="hidden">
            <label for="L_sex" class="layui-form-label">性别</label>
            <div class="layui-input-inline" id="L_sex">
                <select name="sex" id="sex" lay-filter="sex">
                    <option value=" ">保密</option>
                </select>
            </div>
        </div>--%>

        <div class="layui-form-item">
            <label for="L_phone" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_phone" name="mobile_phone" lay-verify="required|phone"
                       autocomplete="off"  class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_email" name="email" lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_password" class="layui-form-label">
                <span class="we-red">*</span>密码
            </label>
            <div class="layui-input-inline">
                <input type="password"   id="L_password" name="password" lay-verify="required|password" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="we-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password"   id="L_repass" name="repass" lay-verify="required|repass" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <button  class="layui-btn" lay-filter="edit" lay-submit="">
                确认修改
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

        loadSex();

        ////自定义验证规则
        form.verify({
            password: [/(.+){2,12}$/, '密码必须2到12位'],
            repass: function(value) {
                if($('#L_password').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });

        //邮箱验证：失去焦点时判断值为空不验证，一旦填写必须验证
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
        form.on('submit(edit)', function(data){
            var sex = $('input:radio[name="sex"]:checked').val();
            //console.log(sex);
            $.ajax({
                data : $("#editForm").serialize(),
                dataType : "text",
                type : "post",
                url : "${pageContext.request.contextPath}/user/editUser",
                success : function(res) {
                if (res>0) {
                    layer.alert("修改会员信息成功", {icon: 6}, function () {
                        // 获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //关闭当前frame
                        parent.layer.close(index);
                    });
                }else{
                    layer.alert("修改会员信息失败", {icon: 5}, function () {
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

        //性别单选框的回显
        function loadSex(){
            //console.log($("#L_sex").val());
            var L_sex=document.getElementById("L_sex");
            var input=document.createElement("input");
            input.setAttribute("type","radio");
            input.setAttribute("name","sex");
            input.setAttribute("value","0");
            input.setAttribute("title","男");
            L_sex.appendChild(input);
            var input2=document.createElement("input");
            input2.setAttribute("type","radio");
            input2.setAttribute("name","sex");
            input2.setAttribute("value","1");
            input2.setAttribute("title","女");
            L_sex.appendChild(input2);
            form.render('radio');
            console.log(L_sex);
            var sex=document.getElementsByName("sex");
            for(var i=0;i<sex.length;i++){
                if($("#L_sex").val() == sex[i].value){
                    sex[i].checked=true;
                    form.render('radio');
                }
            }


            //性别下拉框的回显
            /*var sex=document.getElementById("sex");
            var option=document.createElement("option");
            option.setAttribute("value", "0");
            option.innerText = "男";
            sex.appendChild(option);
            var option=document.createElement("option");
            option.setAttribute("value", "1");
            option.innerText = "女";
            sex.appendChild(option);
            form.render('select');
            var options=document.getElementsByTagName("option");
            //console.log(options.length+":length");
            for(var i=0;i<options.length;i++){
                //console.log(options[i].value+":options[i].value");
                if($("#L_sex").val() == options[i].value ){
                    //console.log(options[i].value);
                    options[i].selected=true;
                    form.render('select');
                }

            }*/
        }

    });
</script>
</body>

</html>