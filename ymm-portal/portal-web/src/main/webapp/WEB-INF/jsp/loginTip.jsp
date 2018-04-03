<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/28
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>跳转登录页 - ymm商城</title>
    <!-- ======================= favicon ========================== -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo_icon.png">
    <script>
        var time = 5;
        var timer;
        window.onload = function(){
            desc();
        }
        function desc(){
            //前提：time>0,把time-1，然后显示在span中.再开启定时器，间隔一秒后再次执行该方法
            if(time>=0){
                var sp1 = document.getElementById("sp1");
                sp1.innerHTML = time;
                time--;
                //设置定时器，timer就表示该定时器
                timer = setTimeout(desc,1000);
            }else{
                location.href = "${pageContext.request.contextPath}/pages/user/login"; /*前往登录页面*/
            }
        }
        function clearTimer(){
            //清除定时器
            clearTimeout(timer);
            location.href = "${pageContext.request.contextPath}/pages/user/login"; /*前往登录页面*/
        }

    </script>
</head>
<body>
<jsp:include page="top.jsp"/>
<h3 style="text-align:center;margin-top:150px;color: #999">
    您还未登录!请先登录 >>>
    <span style="color: red;" id="sp1">5</span>秒后前往登录页面~~~
    <a onclick="clearTimer()" style="color: red">立即前往</a>
</h3>
</body>
</html>
