<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/31
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>topTemplate</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo_icon.png">

    <!-- style CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <!-- modernizr JS
    ============================================ -->
    <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<header class="header-area">
    <%------------------------------begin---------------------------------%>
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 hidden-xs">
                    <div class="header-top-left">
                        <div class="language-usd">
                            <img src="${pageContext.request.contextPath}/images/logo2.png">
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="header-top-right">
                        <div class="account-cart">
                            <%--<ul>
                                <li class="account"><a href="${pageContext.request.contextPath}/pages/user/personalCenter">个人中心</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="cart.html">my bag</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="${pageContext.request.contextPath}/pages/user/personalCenter">我的账户</a></li>
                                    </ul>
                                </li>
                                <li class="login"><a href="${pageContext.request.contextPath}/pages/user/login">登录</a>
                                    <ul class="submenu-mainmenu">
                                        &lt;%&ndash;<li><a href="#">login or register</a></li>&ndash;%&gt;
                                        <li class="login-button"><a href="${pageContext.request.contextPath}/pages/user/login">登录</a></li>
                                        <li><a href="#">or</a></li>
                                        <li class="creat-button"><a href="${pageContext.request.contextPath}/pages/user/register">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</a></li>
                                    </ul>
                                </li>
                                <li class="cart"><a href="${pageContext.request.contextPath}/cart/listCustomCart"><img src="${pageContext.request.contextPath}/images/icon/cart.png" alt="cart"><p>2</p></a>
                                    <ul class="submenu-mainmenu">
                                        <li class="single-cart-item clearfix">
                                                    <span class="cart-img">
                                                        <a href="#"><img src="${pageContext.request.contextPath}/images/menu/3.jpg" alt=""></a>
                                                    </span>
                                            <span class="cart-info">
                                                        <a href="#">Lorem Ipsam...</a>
                                                        <span>1 x $104.99</span>
                                                        <a class="trash" href="#"><i class="fa fa-trash"></i></a>
                                                    </span>
                                        </li>
                                        <li class="single-cart-item clearfix">
                                                    <span class="cart-img">
                                                        <a href="#"><img src="${pageContext.request.contextPath}/images/menu/4.jpg" alt=""></a>
                                                    </span>
                                            <span class="cart-info">
                                                        <a href="#">Lorem Ipsam...</a>
                                                        <span>2 x $104.99</span>
                                                        <a class="trash" href="#"><i class="fa fa-trash"></i></a>
                                                    </span>
                                        </li>
                                        <li>
                                                    <span class="sub-total-cart text-center">
                                                        SubTotal <span>$620</span>
                                                        <a href="checkout.html" class="view-cart">Checkout</a>
                                                    </span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%------------------------------over---------------------------------%>

</header>
</body>
</html>
