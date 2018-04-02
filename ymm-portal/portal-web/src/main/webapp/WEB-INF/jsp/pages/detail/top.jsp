<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>top</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo_icon.png">

    <!-- Google Fonts
    ============================================ -->
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:700' rel='stylesheet' type='text/css'>

    <!-- Bootstrap CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

    <!-- Nivo slider CSS
    ============================================ -->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/lib/custom-slider/css/nivo-slider.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/custom-slider/css/preview.css"
          media="screen"/>

    <!-- Fontawsome CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">

    <!-- owl.carousel CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">

    <!-- jquery-ui CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.css">

    <!-- meanmenu CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">

    <!-- animate CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">

    <!-- style CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <!-- responsive CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

    <!-- modernizr JS
    ============================================ -->
    <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!-- header start -->
<header class="header-area">
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
                            <ul>
                                <li class="account"><a
                                        href="${pageContext.request.contextPath}/pages/user/personalCenter">个人中心</a>
                                    <ul class="submenu-mainmenu">
                                        <%--<li><a href="cart.html">my bag</a></li>--%>
                                        <%--<li><a href="checkout.html">checkout</a></li>--%>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/user/personalCenter">我的账户</a>
                                        </li>
                                    </ul>
                                </li>
                                <c:if test="${empty user}">
                                    <li class="login"><a
                                            href="${pageContext.request.contextPath}/pages/user/login">登录</a>
                                        <ul class="submenu-mainmenu">
                                                <%--<li><a href="#">login or register</a></li>--%>
                                            <li class="login-button"><a
                                                    href="${pageContext.request.contextPath}/pages/user/login">登录</a>
                                            </li>
                                            <li><a href="#">or</a></li>
                                            <li class="creat-button"><a
                                                    href="${pageContext.request.contextPath}/pages/user/register">&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${!empty user}">
                                    <li class="login"><a
                                            href="${pageContext.request.contextPath}/pages/user/personalCenter">${user.alias}</a>
                                        <ul class="submenu-mainmenu">

                                            <li class="login-button"><a href="#">注销</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <%--这里的购物车数量,将会在单点登录之后,用user.catcount来动态显示--%>
                                <li class="cart"><a href="${pageContext.request.contextPath}/cart/listCustomCart"><img
                                        src="${pageContext.request.contextPath}/images/icon/cart.png" alt="cart">
                                    <p>0</p></a>
                                    <%--这里进行一个动画,判断user.catcount==0,如果=0,则显示button"去添加",跳转到商品列表--%>
                                    <ul class="submenu-mainmenu">

                                        <li class="login-button"><a href="#">去添加</a></li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-header-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12">
                    <div class="logo">
                        <a href="index"><img src="${pageContext.request.contextPath}/images/logo/logo.png"
                                                  alt="SHOPPPIE"></a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-8 col-sm-6">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="index"><b>首页</b></a>

                                </li>
                                <li><a href="shop-full-grid.html"><b>手机</b></a>
                                    <div class="mega-menu">
                                                <span>
                                                    <a href="javascript:void(0)" class="title">热门品牌</a>
                                                    <a href="#">小米</a>
                                                    <a href="#">vivo</a>
                                                    <a href="#">苹果</a>
                                                    <a href="#">华为</a>
                                                    <a href="#">三星</a>
                                                    <a href="#">魅族</a>
                                                </span>

                                    </div>
                                </li>
                                <li><a href="#"><b>智能家电</b></a>
                                    <div class="mega-menu">
                                        <span>
                                            <a href="404" class="title">敬请期待</a>
                                        </span>
                                    </div>
                                </li>
                                <li><a href="blog-full-view.html"><b>笔记本</b></a>
                                    <div class="mega-menu">
                                                <span>
                                                    <a href="javascript:void(0)" class="title">热门品牌</a>
                                                    <a href="#">华硕</a>
                                                    <a href="#">神舟</a>
                                                    <a href="#">苹果</a>
                                                    <a href="#">戴尔</a>
                                                    <a href="#">惠普</a>
                                                    <a href="#">联想</a>
                                                </span>

                                    </div>
                                </li>
                                <li><a href="#"><b>耳机 音箱</b></a>
                                    <div class="mega-menu">
                                        <span>
                                            <a href="404" class="title">敬请期待</a>
                                        </span>
                                    </div>
                                </li>
                                <li><a href="#"><b>路由器 手机配件</b></a>
                                    <div class="mega-menu">
                                        <span>
                                            <a href="404" class="title">敬请期待</a>
                                        </span>
                                    </div>
                                </li>
                                <li><a href="#"><b>留言板</b></a>
                                    <div class="mega-menu">
                                        <span>
                                            <a href="404" class="title">敬请期待</a>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-6 col-xs-12">
                    <div class="search-box">
                        <form action="#">
                            <input type="text" placeholder="Search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile Menu Area start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul>
                                <li><a href="index.html">HOME</a>
                                    <ul>
                                        <li><a href="index.html">Home Version 1</a></li>
                                        <li><a href="index-2.html">Home Version 2</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html"><b>手机</b></a>
                                    <div class="mega-menu">
                                                <span>
                                                    <a href="shop-grid-left-sidebar.html" class="title">热门品牌</a>
                                                    <a href="#">foreach遍历</a>
                                                    <a href="#">jackets</a>
                                                    <a href="#">Colletions</a>
                                                    <a href="#">T-shirts</a>
                                                    <a href="#">Jeens pant's</a>
                                                    <a href="#">Sport shoes</a>
                                                </span>

                                        <span>
                                                    <img src="img/menu/1.jpg" alt="">
                                                    <img src="img/menu/2.jpg" alt="">
                                                </span>
                                    </div>
                                </li>
                                <li><a href="#"><b>智能家电</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#"><b>敬请期待</b></a></li>
                                    </ul>
                                </li>
                                <li><a href="blog-full-view.html"><b>笔记本</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="blog-full-view.html">Blog Full View</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><b>耳机 音箱</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="404.html"><b>敬请期待</b></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><b>路由器 手机配件</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="404.html"><b>敬请期待</b></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><b>留言板</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="404.html"><b>敬请期待</b></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header end -->
<!-- jquery
============================================ -->
<script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.3.min.js"></script>
<!-- bootstrap JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- meanmenu JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
<!-- wow JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
<!-- owl.carousel JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<!-- countdown JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
<!-- price-slider JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/jquery-price-slider.js"></script>
<!-- Elevate Zoom js
============================================ -->
<script src="${pageContext.request.contextPath}/js/jquery.elevatezoom.js"></script>
<!-- scrollUp JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/jquery.scrollUp.min.js"></script>
<!-- plugins JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/plugins.js"></script>
<!-- Nevo Slider js
============================================ -->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/lib/custom-slider/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/custom-slider/home.js"></script>
<!-- main JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
