<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home Version 1 || Shopppie</title>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/custom-slider/css/nivo-slider.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/custom-slider/css/preview.css" media="screen" />

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
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- header start -->
<header class="header-area">
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 hidden-xs">
                    <div class="header-top-left">
                        <div class="language-usd">
                            <ul>
                                <li><a href="#">eng</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#">Bengali</a></li>
                                        <li><a href="#">English</a></li>
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">German</a></li>
                                        <li><a href="#">Spanish</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">usd</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#">usd</a></li>
                                        <li><a href="#">uero</a></li>
                                        <li><a href="#">taka</a></li>
                                        <li><a href="#">pound</a></li>
                                        <li><a href="#">rupi</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="header-top-right">
                        <div class="account-cart">
                            <ul>
                                <li class="account"><a href="#">my account</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="cart.html">my bag</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="wishlist.html">wishlist</a></li>
                                    </ul>
                                </li>
                                <li class="login"><a href="#">login</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#">login or register</a></li>
                                        <li class="login-button"><a href="#">login</a></li>
                                        <li><a href="#">or</a></li>
                                        <li class="creat-button"><a href="#">creat account</a></li>
                                    </ul>
                                </li>
                                <li class="cart"><a href="cart.html"><img src="img/icon/cart.png" alt="cart"><p>2</p></a>
                                    <ul class="submenu-mainmenu">
                                        <li class="single-cart-item clearfix">
                                                    <span class="cart-img">
                                                        <a href="#"><img src="img/menu/3.jpg" alt=""></a>
                                                    </span>
                                            <span class="cart-info">
                                                        <a href="#">Lorem Ipsam...</a>
                                                        <span>1 x $104.99</span>
                                                        <a class="trash" href="#"><i class="fa fa-trash"></i></a>
                                                    </span>
                                        </li>
                                        <li class="single-cart-item clearfix">
                                                    <span class="cart-img">
                                                        <a href="#"><img src="img/menu/4.jpg" alt=""></a>
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
                        <a href="index.html"><img src="img/logo/logo.png" alt="SHOPPPIE"></a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-8 col-sm-6">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="index.html">Home</a>
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
                                <li><a href="shop-full-grid.html">手机</a></li>
                                <li><a href="shop-full-grid.html">Accessories</a></li>
                                <li><a href="blog-full-view.html">笔记本</a>
                                    <ul>
                                        <li><a href="blog-full-view.html">Blog Full View</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">Shop</a>
                                    <ul>
                                        <li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                        <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                        <li><a href="shop-full-grid.html">Shop None Sidebar</a></li>
                                        <li><a href="product-details-fullwidth.html">Product Details Fullwidth</a></li>
                                        <li><a href="product-details-left-sidebar.html">Product Details Left Sidebar</a></li>
                                        <li><a href="product-details-right-sidebar.html">Product Details Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li><a href="about-us.html">Pages</a>
                                    <ul>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM -->
    <!-- Mobile Menu Area end -->
</header>
<!-- header end -->
<!-- slider start -->
<div class="slider-wrap">
    <div class="preview-2">
        <div id="nivoslider" class="slides">
            <img src="${pageContext.request.contextPath}/images/slider/20.png" alt="" title="#slider-direction-1"  />
            <img src="${pageContext.request.contextPath}/images/slider/30.png" alt="" title="#slider-direction-2"  />
        </div>
        <!-- direction 1 -->
        <div id="slider-direction-1" class="t-cn slider-direction">
            <div class="nivo_text">
                <div class="slider-content slider-text-1">
                    <div class="wow zoomInUp" data-wow-delay="0.3s">
                        <h3>YMM shop</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-2">
                    <div class="wow zoomInUp" data-wow-delay=".2s">
                        <h2 class="title">New Season heroes</h2>
                    </div>
                </div>
                <div class="slider-content slider-text-4">
                    <div class="wow zoomInUp" data-wow-delay=".3s">
                        <h3 class="title ti7">East Meets West in CWST’s Fall Winter 2015 Lookbook</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-3">
                    <div class="wow zoomInUp" data-wow-delay=".4s">
                        <a href='shop-full-grid.html' class='slider-button'>Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction">
            <div class="nivo_text">
                <div class="slider-content slider-text-1">
                    <div class="wow zoomInUp" data-wow-delay="0.3s">
                        <h3>Shopppie shop</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-2">
                    <div class="wow zoomInUp" data-wow-delay=".2s">
                        <h2 class="title">New Season heroes</h2>
                    </div>
                </div>
                <div class="slider-content slider-text-4">
                    <div class="wow zoomInUp" data-wow-delay=".3s">
                        <h3 class="title ti7">East Meets West in CWST’s Fall Winter 2015 Lookbook</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-3">
                    <div class="wow zoomInUp" data-wow-delay=".4s">
                        <a href='shop-full-grid.html' class='slider-button'>Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider end -->
<!-- service start -->
<div class="service_area clearfix">
    <div class="single-service">
        <div class="service-icon">
            <img src="img/icon/s1.png" alt="">
        </div>
        <div class="service-info">
            <h2>Free Shipping</h2>
            <p>Free for all product</p>
        </div>
    </div>
    <div class="single-service">
        <div class="service-icon">
            <img src="img/icon/s2.png" alt="">
        </div>
        <div class="service-info">
            <h2>Money Guarante</h2>
            <p>Money back guarantee</p>
        </div>
    </div>
    <div class="single-service hidden-sm">
        <div class="service-icon">
            <img src="img/icon/s3.png" alt="">
        </div>
        <div class="service-info">
            <h2>Safe Shopping</h2>
            <p>Enjoy safe shopping</p>
        </div>
    </div>
    <div class="single-service hidden-sm hidden-md">
        <div class="service-icon">
            <img src="img/icon/s4.png" alt="">
        </div>
        <div class="service-info">
            <h2>Online Support</h2>
            <p>24/7 we provide online support</p>
        </div>
    </div>
</div>
<!-- service end -->
<!-- banner start -->
<div class="banner-area clearfix">
    <div class="single-banner left">
        <a href="#" class="border-hover"><img src="img/banner/1.jpg" alt=""></a>
        <div class="single-banner-text">
            <h3><a href="#">60% OFF<br>
                Woman<br>
                Collection</a></h3>
            <a href="shop-full-grid.html" class="shop-button hidden-sm hidden-xs">shop now</a>
        </div>
    </div>
    <div class="single-banner right">
        <a href="#" class="border-hover"><img src="img/banner/2.jpg" alt=""></a>
        <div class="single-banner-text">
            <h3><a href="#">50%<br>
                OFF Men<br>
                Collection</a></h3>
            <a href="shop-full-grid.html" class="shop-button hidden-sm hidden-xs">shop now</a>
        </div>
    </div>
</div>
<!-- banner end -->
<!-- featured start -->
<div class="featured-area clearfix">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>featured products</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="section-tab">
                    <div class="section-tab-menu text-left">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#women" aria-controls="women" role="tab" data-toggle="tab">women</a></li>
                            <li role="presentation"><a href="#men" aria-controls="men" role="tab" data-toggle="tab">Men</a></li>
                            <li role="presentation"><a href="#trendy" aria-controls="trendy" role="tab" data-toggle="tab">trendy</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="tab-content row">
                        <div id="women" role="tabpanel" class="active section-tab-item">
                            <div class="tab-item-slider">
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <!--                                                            <span class="old-price">$26</span>-->
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                    <!--                                                            <span class="old-price">$180</span>-->
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                    <!--                                                            <span class="old-price">$180</span>-->
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                    <!--                                                            <span class="old-price">$180</span>-->
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                    <!--                                                            <span class="old-price">$180</span>-->
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                    <!--                                                            <span class="old-price">$180</span>-->
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-width">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                    <!--                                                            <span class="old-price">$180</span>-->
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="men" role="tabpanel" class="section-tab-item">
                            <div class="tab-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="trendy" role="tabpanel" class="section-tab-item">
                            <div class="tab-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- featured end -->
<!-- banner timer start -->
<div class="banner-timer-area clearfix">
    <div class="single-banner-small small-one">
        <a class="border-hover" href="#"><img src="img/banner/3.jpg" alt=""></a>
        <div class="timer-banner-text">
            <h2>latest<br> backpack</h2>
            <a href="shop-full-grid.html" class="view-more">view more</a>
        </div>
        <p>backpack</p>
    </div>
    <div class="single-banner-big big-one hidden-xs">
        <a class="border-hover" href="#"><img src="img/banner/4.jpg" alt=""></a>
        <div class="timer-banner-text">
            <h2>taratari<br> offer kintu<br> furieee gelo!</h2>
        </div>
        <div class="timer">
            <div data-countdown="2016/06/01" class="timer-grid"></div>
        </div>
        <p>hot product</p>
    </div>
    <div class="single-banner-small small-two hidden-md hidden-sm">
        <a class="border-hover" href="#"><img src="img/banner/5.jpg" alt=""></a>
        <div class="timer-banner-text">
            <h2>latest<br> sunglass</h2>
            <a href="shop-full-grid.html" class="view-more">view more</a>
        </div>
        <p>women's sunglass</p>
    </div>
</div>
<!-- banner timer end -->
<!-- popular start -->
<div class="popular-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>popular products</h2>
                </div>
                <div class="trend_tab">
                    <div class="tendy-tab-menu text-right">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#watches" aria-controls="watches" role="tab" data-toggle="tab">Watches</a></li>
                            <li role="presentation"><a href="#t-shirt" aria-controls="t-shirt" role="tab" data-toggle="tab">t-shirt</a></li>
                            <li role="presentation"><a href="#shoes" aria-controls="shoes" role="tab" data-toggle="tab">shoes</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="trend_content row">
                        <div id="watches" role="tabpanel" class="active trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="t-shirt" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="shoes" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                                <div class="new-sale">
                                                    <span>new</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">$25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev women shirt</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popular end -->
<!-- newsletter start -->
<div class="newsletter-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>newsletter</h2>
                </div>
                <div class="newsletter-box text-center">
                    <form action="#">
                        <input type="text" placeholder="Type your E-mail address">
                        <button type="submit">Subscribe Now</button>
                    </form>
                    <div class="subscribing">
                        <label class="checkbox-title">
                            <input id="transfer" value="bank" name="subscribe" type="checkbox">By Subscribing to our newsletter you agree to receive emails from us.
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- newsletter end -->
<!-- latest blog start -->
<div class="latest-blog-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>latest news</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="latest-blog-slider">
                <div class="col-md-6 col-xs-12">
                    <div class="single-latest-blog">
                        <div class="single-latest-blog-img">
                            <a href="blog-details.html">
                                <img src="img/blog/1.jpg" alt="">
                            </a>
                        </div>
                        <div class="single-latest-blog-text">
                            <div class="date-comment clearfix">
                                <h4>Art, Business</h4>
                                <h5>Jan 18, 2016 - Comments 5</h5>
                            </div>
                            <div class="blog-content">
                                <h4><a href="blog-details.html">Lorem Ipsum Dammy Title</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodte porincidi ut labore et dolore magna aliqua. </p>
                            </div>
                            <div class="continue-reading">
                                <a href="blog-details.html">Continue Reading</a>
                                <div class="blog-icon">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-share-alt"></i></a></li>
                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12">
                    <div class="single-latest-blog">
                        <div class="single-latest-blog-img">
                            <a href="blog-details.html">
                                <img src="img/blog/2.jpg" alt="">
                            </a>
                        </div>
                        <div class="single-latest-blog-text">
                            <div class="date-comment clearfix">
                                <h4>Art, Business</h4>
                                <h5>Jan 18, 2016 - Comments 5</h5>
                            </div>
                            <div class="blog-content">
                                <h4><a href="blog-details.html">Lorem Ipsum Dammy Title</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodte porincidi ut labore et dolore magna aliqua. </p>
                            </div>
                            <div class="continue-reading">
                                <a href="blog-details.html">Continue Reading</a>
                                <div class="blog-icon">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-share-alt"></i></a></li>
                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12">
                    <div class="single-latest-blog">
                        <div class="single-latest-blog-img">
                            <a href="blog-details.html">
                                <img src="img/blog/1.jpg" alt="">
                            </a>
                        </div>
                        <div class="single-latest-blog-text">
                            <div class="date-comment clearfix">
                                <h4>Art, Business</h4>
                                <h5>Jan 18, 2016 - Comments 5</h5>
                            </div>
                            <div class="blog-content">
                                <h4><a href="blog-details.html">Lorem Ipsum Dammy Title</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodte porincidi ut labore et dolore magna aliqua. </p>
                            </div>
                            <div class="continue-reading">
                                <a href="blog-details.html">Continue Reading</a>
                                <div class="blog-icon">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-share-alt"></i></a></li>
                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12">
                    <div class="single-latest-blog">
                        <div class="single-latest-blog-img">
                            <a href="blog-details.html">
                                <img src="img/blog/2.jpg" alt="">
                            </a>
                        </div>
                        <div class="single-latest-blog-text">
                            <div class="date-comment clearfix">
                                <h4>Art, Business</h4>
                                <h5>Jan 18, 2016 - Comments 5</h5>
                            </div>
                            <div class="blog-content">
                                <h4><a href="blog-details.html">Lorem Ipsum Dammy Title</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodte porincidi ut labore et dolore magna aliqua. </p>
                            </div>
                            <div class="continue-reading">
                                <a href="blog-details.html">Continue Reading</a>
                                <div class="blog-icon">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-share-alt"></i></a></li>
                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- blog end -->
<!-- client start -->
<div class="client-area clearfix">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>popular Brand</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="client-owl">
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/1.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/2.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/3.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/4.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/5.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/1.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/2.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/3.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/4.png" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="img/client/5.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- client end -->
<!-- footer start -->
<footer class="footer-area">
    <div class="footer-middle-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-5 col-xs-12">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <img src="img/logo/footer-logo.png" alt="">
                        </div>
                        <div class="footer-address">
                            <p>28 Green Tower, Street Name New<br> York City, USA</p>

                            <p>TELEPHONE- +88017 222 333<br>
                                Email- admin@DevItems.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                    <div class="footer-widget">
                        <h5>Services</h5>
                        <ul>
                            <li><a href="about.html">About us</a></li>
                            <li><a href="about.html">Return Policy</a></li>
                            <li><a href="blog.html">Our Blog</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li class="hidden-sm"><a href="#">Terms &amp; Condition</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 hidden-sm col-xs-12">
                    <div class="footer-widget">
                        <h5>Account</h5>
                        <ul>
                            <li><a href="#">Your Account</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Register</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <div class="footer-widget">
                        <h5>Get Social</h5>
                        <p>Connected with our social media and<br>
                            get update protidin</p>
                        <ul class="social-icon">
                            <li><a href="www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="www.google-plus.com"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                            <li class="hidden-sm"><a href="www.pinterest.com"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="copyright">
                        <p>2016 ® All Rights Reserved <span><a href="http://jqueryfuns.com/">DevItems</a></span>.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="payment text-right">
                        <img src="img/payment/1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer end -->

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
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/custom-slider/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/custom-slider/home.js"></script>
<!-- main JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
