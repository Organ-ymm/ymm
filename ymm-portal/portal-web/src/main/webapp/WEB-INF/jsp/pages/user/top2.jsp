<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>top2</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

    <!-- style CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">


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
                                <li class="account"><a href="${pageContext.request.contextPath}/pages/user/personalCenter">个人中心</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="cart.html">my bag</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="${pageContext.request.contextPath}/pages/user/personalCenter">我的账户</a></li>
                                    </ul>
                                </li>
                                <li class="login"><a href="${pageContext.request.contextPath}/pages/user/login">登录</a>
                                    <ul class="submenu-mainmenu">
                                        <%--<li><a href="#">login or register</a></li>--%>
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
                        <a href="index.html"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="SHOPPPIE"></a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-8 col-sm-6">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="index.html"><b>首页</b></a>
                                    <ul class="submenu-mainmenu">
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
                                                    <img src="${pageContext.request.contextPath}/images/menu/1.jpg" alt="">
                                                    <img src="${pageContext.request.contextPath}/images/menu/2.jpg" alt="">
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
                                        <li><a href="404"><b>敬请期待</b></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><b>路由器 手机配件</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="404"><b>敬请期待</b></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><b>留言板</b></a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="404"><b>敬请期待</b></a></li>
                                    </ul>
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

</header>

</body>
</html>

