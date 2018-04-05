<%--
  Created by IntelliJ IDEA.
  User: SmallJIE
  Date: 2018/4/2
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>foot page</title>
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
<!-- footer start -->
<footer class="footer-area">
    <div class="footer-middle-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-5 col-xs-12">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <img src="${pageContext.request.contextPath}/images/logo/footer-logo.png" alt="">
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
                            <li><a href="${pageContext.request.contextPath}/404">Checkout</a></li>
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
                        <p>2016 ® All Rights Reserved <span><a href="javascript:;" onclick="toManage()">Backstage Management</a></span>.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="payment text-right">
                        <img src="${pageContext.request.contextPath}/images/payment/1.png" alt="">
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

<script>
    function toManage() {
        location.href="http://localhost:8080/ymm/manager/login";
    }
</script>
</body>

</html>