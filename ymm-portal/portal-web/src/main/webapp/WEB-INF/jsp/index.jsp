<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/25
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!门户页面。。。。</h2>
<hr>
<a href="${pageContext.request.contextPath}/cart/listCustomCart">购物车</a>
<br>
<form action="${pageContext.request.contextPath}/cart/addCart">
    商品id：<input type="text" name="goods_id">
    商品数量：<input type="text" name="amount">
    <input type="submit" value="加入购物车">
</form>
</body>
</html>
