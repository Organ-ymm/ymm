<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>羊咩咩3C商城</title>
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

    <!-- layui CSS
    ============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">

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
<jsp:include page="../../top.jsp"/>
<!-- header end -->
<!-- latest blog start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-left">
                <ul class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/index">首页</a><span> - </span></li>
                    <li><a href="#">${goodsCustom.cat_name}</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="shop-fullgrid-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="shop-item-filter">
                    <div class="col-lg-4 col-md-3 col-sm-4 col-xs-12">
                        <div class="shop-tab clearfix">
                            <!-- Nav tabs -->
                            <ul role="tablist">
                                <li role="presentation" class="active"><a class="grid-view"
                                                                          href="#"><i
                                        class="fa fa-th"></i></a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5 col-sm-4 hidden-xs">
                        <div class="filter-by text-center">
                            <h4>排序方式: </h4>
                            <form action="#">
                                <div class="select-filter">
                                    <select>
                                        <option value="#">默认</option>
                                        <option value="color">价格</option>
                                        <option value="brand">品牌</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs">
                        <div class="filter-by right">
                            <h4>每页显示: </h4>
                            <form action="#">
                                <div class="select-filter">
                                    <select>
                                        <option value="10">16</option>
                                        <option value="20">12</option>
                                        <option value="30">20</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <c:forEach items="${goodsCustom.goodsList}" var="goods">
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="single-product">
                        <div class="single-product-item">
                            <div class="single-product-img clearfix hover-effect">
                                <a href="${pageContext.request.contextPath}/detail/detailIndex.do?goods_id=${goods.goods_id}">
                                    <img class="primary-image"
                                         style="max-width:100%;max-height:210px;margin:0 auto;display: block;"
                                         src="${goods.goods_img}" alt="">
                                </a>
                            </div>
                            <div class="single-product-info clearfix">
                                <div class="pro-price">
                                    <span class="new-price"><b style="color: red">￥${goods.market_price}</b></span>
                                </div>
                                <div class="new-sale">
                                    <c:if test="${goods.is_new eq 1}">
                                        <span>new</span>
                                    </c:if>
                                </div>
                            </div>
                            <div class="product-content text-center">
                                <h3>${goods.goods_name}</h3>
                                <h4>
                                    <a href="${pageContext.request.contextPath}/detail/detailIndex.do?goods_id=${goods.goods_id}">点击查看</a>
                                </h4>
                            </div>
                            <div class="product-action">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" title="加入对比"><i class="fa fa-refresh"></i></a>
                                    </li>
                                    <li class="add-bag"><a href="javascript:;"
                                                           onclick="addCart(${goods.goods_id})"
                                                           data-toggle="tooltip"
                                                           title="购物车">加入购物车</a></li>
                                    <li><a href="javascript:void(0)" data-toggle="tooltip" title="收藏"><i
                                            class="fa fa-heart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="shop-item-filter bottom">
                    <div style="text-align:center;	">
                    <div class="select-filter">
                        <div id="testpage"></div>
                    </div>
                </div>
                </div>
            </div>
        </div>

    </div>

</div>

<!-- latest blog end -->

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
                        <p>2016 ® All Rights Reserved <span><a href="#">Backstage Management</a></span>.</p>
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

<!-- layui JS
   ============================================ -->
<script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['layer', 'jquery', 'laypage'], function () {
        var $ = layui.jquery,
            laypage = layui.laypage,
            layer = layui.layer;

        //执行一个laypage实例
        laypage.render({
            elem: 'testpage' //注意，这里的 test1 是 ID，不用加 # 号
            , count: "${goodsCustom.totalCount}" //数据总数，从服务端得到
            , limit: 16
            , first:"首页"
            , last :"尾页"
            ,curr: "${goodsCustom.offSet+1}" //获取起始页
            , jump: function (obj, first) {
                //obj包含了当前分页的所有参数，比如：
                //console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                //console.log(obj.limit); //得到每页显示的条数
                var offSet = obj.curr;
                var pageSize = obj.limit;

                //首次不执行
                if (!first) {
                    //do something
                    location.href="${pageContext.request.contextPath}/goods/listGoods?cat_id=${goodsCustom.cat_id}"+"&brand_id=${goodsCustom.brand_id}"+"&offSet="+offSet+"&pageSize="+pageSize;
                }
            }
        });


    });
    function addCart(goods_id) {

//    }
//    window.addCart = function (goods_id) {
        $.ajax({
            data: {"goods_id": goods_id, "amount": 1},
            dataType: "text",
            type: "get",
            url: "${pageContext.request.contextPath}/cart/addCart",
            success: function (res) {
                if (res > 0) {
                    alert("加入成功!");
                    //top.layer.alert("加入成功!");
                }
            }
        });
    }
</script>

</body>
</html>
