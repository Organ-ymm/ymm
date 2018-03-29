<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- header start -->
<%--<header class="header-area">--%>
    <jsp:include page="top.jsp"/>
    <!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM -->
<%--</header>--%>
<!-- header end -->
<!-- 轮播图板块 开始 -->
<div class="slider-wrap">
    <div class="preview-2">
        <div id="nivoslider" class="slides">
            <img src="${pageContext.request.contextPath}/images/slider/xiaomi20.jpg" alt=""
                 title="#slider-direction-1"/>
            <img src="${pageContext.request.contextPath}/images/slider/sz30.jpg" alt="" title="#slider-direction-2"/>
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
                        <h2 class="title">小米最新科技</h2>
                    </div>
                </div>
                <div class="slider-content slider-text-4">
                    <div class="wow zoomInUp" data-wow-delay=".3s">
                        <h3 class="title ti7">骁龙845 + 8GB + 256GB
                            性能王者中的王者！</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-3">
                    <div class="wow zoomInUp" data-wow-delay=".4s">
                        <a href='#' class='slider-button'>立即购买</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction">
            <div class="nivo_text">
                <div class="slider-content slider-text-1">
                    <div class="wow zoomInUp" data-wow-delay="0.3s">
                        <h3>YMM shop</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-2">
                    <div class="wow zoomInUp" data-wow-delay=".2s">
                        <h2 class="title">神舟质量实惠</h2>
                    </div>
                </div>
                <div class="slider-content slider-text-4">
                    <div class="wow zoomInUp" data-wow-delay=".3s">
                        <h3 class="title ti7">精盾 KINGBOOK T97 GTX1070 Max-Q 8G 15.6英寸游戏笔记本电脑</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-3">
                    <div class="wow zoomInUp" data-wow-delay=".4s">
                        <a href='#' class='slider-button'>立即购买</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 轮播图板块 结束 -->
<!-- 各类服务 start -->
<div class="service_area clearfix">
    <div class="single-service">
        <div class="service-icon">
            <img src="${pageContext.request.contextPath}/images/icon/s1.png" alt="">
        </div>
        <div class="service-info">
            <h2>Free Shipping</h2>
            <p>Free for all product</p>
        </div>
    </div>
    <div class="single-service">
        <div class="service-icon">
            <img src="${pageContext.request.contextPath}/images/icon/s2.png" alt="">
        </div>
        <div class="service-info">
            <h2>Money Guarante</h2>
            <p>Money back guarantee</p>
        </div>
    </div>
    <div class="single-service hidden-sm">
        <div class="service-icon">
            <img src="${pageContext.request.contextPath}/images/icon/s3.png" alt="">
        </div>
        <div class="service-info">
            <h2>Safe Shopping</h2>
            <p>Enjoy safe shopping</p>
        </div>
    </div>
    <div class="single-service hidden-sm hidden-md">
        <div class="service-icon">
            <img src="${pageContext.request.contextPath}/images/icon/s4.png" alt="">
        </div>
        <div class="service-info">
            <h2>Online Support</h2>
            <p>24/7 we provide online support</p>
        </div>
    </div>
</div>
<!-- 各类服务 end -->


<!-- popular start -->
<div class="popular-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>热销商品</h2>
                </div>
                <div class="trend_tab">
                    <div class="tendy-tab-menu text-right">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#watches" aria-controls="watches" role="tab"
                                                                      data-toggle="tab">手机</a></li>
                            <li role="presentation"><a href="#t-shirt" aria-controls="t-shirt" role="tab"
                                                       data-toggle="tab">笔记本电脑</a></li>
                            <li role="presentation"><a href="#shoes" aria-controls="shoes" role="tab" data-toggle="tab">智能家电</a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="trend_content row">
                        <div id="watches" role="tabpanel" class="active trend-item">
                            <div class="trend-item-slider">
                                <c:forEach items="${hot2}" varStatus="hot2_status">
                                    <c:if test="${hot2_status.index % 2 eq 0}">
                                        <div class="col-xs-12">
                                            <c:forEach items="${hot2}" begin="${hot2_status.index}"
                                                       end="${hot2_status.index+1}"
                                                       var="goods2">
                                                <div class="single-product">
                                                    <div class="single-product-item">
                                                        <div class="single-product-img clearfix hover-effect">
                                                            <a href="javascript:void(0)">
                                                                <img class="primary-image"
                                                                     style="max-width:100%;height:100%;margin:0 auto;display: block;"
                                                                     src="${goods2.goods_img}"
                                                                     alt="">
                                                            </a>
                                                        </div>
                                                        <div class="single-product-info clearfix">
                                                            <div class="pro-price">
                                                                <span class="new-price">￥${goods2.market_price}</span>
                                                            </div>
                                                            <div class="new-sale">
                                                                <span>hot</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-content text-center">
                                                            <h3>${goods2.goods_name}</h3>
                                                            <h4><a href="javascript:void(0)">点击查看</a></h4>
                                                        </div>
                                                        <div class="product-action">
                                                            <ul>
                                                                <li><a href="javascript:void(0)" data-toggle="tooltip"
                                                                       title="加入对比"><i
                                                                        class="fa fa-refresh"></i></a></li>
                                                                <li class="add-bag"><a href="javascript:void(0)"
                                                                                       data-toggle="tooltip"
                                                                                       title="购物车">加入购物车</a>
                                                                </li>
                                                                <li><a href="javascript:void(0)" data-toggle="tooltip"
                                                                       title="收藏"><i
                                                                        class="fa fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="t-shirt" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <c:forEach items="${hot1}" varStatus="hot1_status">
                                    <c:if test="${hot1_status.index % 2 eq 0}">
                                        <div class="col-xs-12">
                                            <c:forEach items="${hot1}" begin="${hot1_status.index}"
                                                       end="${hot1_status.index+1}"
                                                       var="goods1">
                                                <div class="single-product">
                                                    <div class="single-product-item">
                                                        <div class="single-product-img clearfix hover-effect">
                                                            <a href="javascript:void(0)">
                                                                <img class="primary-image"
                                                                     style="max-width:100%;height:100%;margin:0 auto;display: block;"
                                                                     src="${goods1.goods_img}"
                                                                     alt="">
                                                            </a>
                                                        </div>
                                                        <div class="single-product-info clearfix">
                                                            <div class="pro-price">
                                                                <span class="new-price">￥${goods1.market_price}</span>
                                                            </div>
                                                            <div class="new-sale">
                                                                <span>hot</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-content text-center">
                                                            <h3>${goods1.goods_name}</h3>
                                                            <h4><a href="javascript:void(0)">点击查看</a></h4>
                                                        </div>
                                                        <div class="product-action">
                                                            <ul>
                                                                <li><a href="javascript:void(0)" data-toggle="tooltip"
                                                                       title="加入对比"><i
                                                                        class="fa fa-refresh"></i></a></li>
                                                                <li class="add-bag"><a href="javascript:void(0)"
                                                                                       data-toggle="tooltip"
                                                                                       title="购物车">加入购物车</a>
                                                                </li>
                                                                <li><a href="javascript:void(0)" data-toggle="tooltip"
                                                                       title="收藏"><i
                                                                        class="fa fa-heart"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="shoes" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="section-title">
                                    <h3>敬请期待</h3>
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


<!-- 热门品牌 start -->
<div class="client-area clearfix">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>热门品牌</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="client-owl">
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/OPPO.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/APPLE.jpg"
                                         alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/ASUS.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/HASEE.jpg"
                                         alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/DELL.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/acer.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/MEIZU.jpg"
                                         alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/honor.jpg"
                                         alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/MI.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-client">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/brand_logo/VIVO.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 热门品牌 end -->
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
<script type="text/javascript"
        src="${pageContext.request.contextPath}/lib/custom-slider/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/custom-slider/home.js"></script>
<!-- main JS
============================================ -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
