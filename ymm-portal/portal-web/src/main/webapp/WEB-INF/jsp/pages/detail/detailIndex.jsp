<%--
  Created by IntelliJ IDEA.
  User: 金城武
  Date: 2018/3/30
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>羊咩咩商城详情页</title>
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/userStatic/js/jquery-1.9.1.js"></script>

</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- header start -->
<jsp:include page="../../top.jsp"/>
<!-- header end -->
<!--Start Product Details area  -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-left">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a><span> - </span></li>
                    <li><a href="shop.html">Shop</a><span> - </span></li>
                    <li class="active">Product Details Full Width</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--Start Product Details area  -->
<div class="product-details-area fullwidth">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="zoomWrapper clearfix">
                    <div class="product-thumb">
                        <ul class="p-details-slider" id="gallery_01">
                            <li>
                                <a class="elevatezoom-gallery" href="#" data-image="img/product-details/1.jpg" data-zoom-image="img/product-details/1.jpg"><img src="img/product-details/1.jpg" alt=""></a>
                            </li>
                            <li>
                                <a class="elevatezoom-gallery" href="#" data-image="img/product-details/2.jpg" data-zoom-image="img/product-details/2.jpg"><img src="img/product-details/2.jpg" alt=""></a>
                            </li>
                            <li>
                                <a class="elevatezoom-gallery" href="#" data-image="img/product-details/3.jpg" data-zoom-image="img/product-details/3.jpg"><img src="img/product-details/3.jpg" alt=""></a>
                            </li>
                            <li>
                                <a class="elevatezoom-gallery" href="#" data-image="img/product-details/4.jpg" data-zoom-image="img/product-details/4.jpg"><img src="img/product-details/4.jpg" alt=""></a>
                            </li>
                        </ul>
                    </div>
                    <div id="img-1" class="zoomWrapper single-zoom">
                        <a href="#">
                            <img id="zoom1" src="img/product-details/1.jpg" data-zoom-image="img/product-details/1.jpg" alt="big-1">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="product-detail shop-product-text">
                    <h4><a href="#">${goods.goods_name}</a></h4>
                    <div class="price-rating-container">
                        <div class="price-box">
                            秒杀价 <span>${goods.shop_price}</span>
                            <del>(${goods.market_price})</del>
                        </div>
                        <div class="rating-right">
                            <div class="star-content">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                        </div>
                    </div>
                    <div class="availability">简介: <span> ${goods.goods_sn}</span></div>
                    <h5 class="overview">配置信息:</h5>
                    <p class="product-desc">${goods.goods_brief}</p>
                    <%--<div class="size-categories">--%>
                    <%--<h5 class="size">Size:</h5>--%>
                    <%--<ul>--%>
                    <%--<li><a href="#">S</a></li>--%>
                    <%--<li><a href="#">M</a></li>--%>
                    <%--<li><a href="#">L</a></li>--%>
                    <%--<li><a href="#">XL</a></li>--%>
                    <%--</ul>--%>
                    <%--</div>--%>
                    <%--<div class="color">--%>
                    <%--<h5 class="color">color:</h5>--%>
                    <%--<div class="color-cat">--%>
                    <%--<select class="category-items " name="category">--%>
                    <%--<option>Select a color</option>--%>
                    <%--<option>red</option>--%>
                    <%--<option>black</option>--%>
                    <%--<option>pink</option>--%>
                    <%--<option>blue</option>--%>
                    <%--<option>green</option>--%>
                    <%--</select>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="shop-buttons">
                        <h5 class="quantity">quantity:</h5>
                        <div id="quantity-wanted-p">
                            <input type="number" value="1" id="buy-num" class="cart-plus-minus-box">
                            <div class="dec qtybutton" id="decbtn">-</div>
                            <div class="inc qtybutton" id="incbtn">+</div>
                            <span class="clearfix"></span>
                        </div>
                        <a href="javascript:void(0);" onclick="toCart(${goods.goods_id})" class="cart-btn"><span>加入购物车</span></a>
                        <a href="#"><img src="img/banner/8.jpg" alt=""></a>
                        <a href="javascript:void(0);" onclick="buyNow('${goods.goods_id}')" class="cart-btn"><span>立刻购买</span></a>
                        <a href="#"><i class="fa fa-refresh"></i></a>
                    </div>
                    <div class="share">
                        <h5 class="share">share this on:</h5>
                        <ul>
                            <li><a href="www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="www.google-plus.com"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="www.pinterest.com"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <div class="product-description-tab">
                        <div class="description-tab-menu">
                            <ul class="clearfix" role="tablist">
                                <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">商品描述</a></li>
                                <li role="presentation"><a href="#specification" aria-controls="specification" role="tab" data-toggle="tab">商品信息</a></li>
                                <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">Reviews</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="description">
                                <p>${goods.goods_desc}</p>

                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <ul>
                                    <li><i class="fa fa-circle"></i>${goods.goods_brief}</li>
                                    <li><i class="fa fa-circle"></i>Duis aute irure dolor in reprehenderit in voluptate velit esse</li>
                                    <li><i class="fa fa-circle"></i>Excepteur sinted occaecat cupidatat non proident products</li>
                                    <li><i class="fa fa-circle"></i>voluptate velit esse cillum</li>
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="specification">
                                <p>Veniam quasi voluptatem facere nesciunt laborum, quibusdam amet totam fugit, blanditiis doloribus alias eveniet dolore pariatur dolores aliquid!</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex consectetur minima quod officiis magni, aspernatur. Ea consectetur ab in, consequatur alias, quo sit. Optio vitae cupiditate, consectetur veritatis cumque odio magnam voluptates voluptas eligendi, minima tenetur voluptatum dolor autem, doloribus expedita obcaecati.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="review">
                                <p>Similique animi consequatur pariatur voluptas tempore, dolores obcaecati dolorum quia odit harum. Quos nemo, minima totam quidem ipsum labore.</p>
                                <ul>
                                    <li> <i class="fa fa-circle"></i> Minus placeat eligendi neque doloribus sed ratione repellendus a illo similique, sint quisquam perferendis eum nam nihil dolor fugit blanditiis, explicabo, recusandae hic qui exercitationem aspernatur excepturi voluptate unde. </li>
                                    <li> <i class="fa fa-circle"></i> Quaerat magnam, perferendis, sapiente doloremque error omnis esse in saepe quos eveniet quasi ex fugit eligendi consectetur nobis amet. </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 hidden-sm col-xs-12">
                    <div class="single-left-widget without-background">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Product Details area  -->
<!-- featured start -->
<%--<div class="featured-area clearfix">--%>
<%--<div class="container">--%>
<%--<div class="row">--%>
<%--<div class="col-xs-12">--%>
<%--<div class="section-title">--%>
<%--<h2>其他商品</h2>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="row">--%>
<%--<div class="col-xs-12">--%>
<%--<div class="section-tab">--%>
<%--<div class="section-tab-menu text-left">--%>
<%--<ul role="tablist">--%>
<%--<li role="presentation" class="active"><a href="#women" aria-controls="women" role="tab" data-toggle="tab">电脑</a></li>--%>
<%--<li role="presentation"><a href="#men" aria-controls="men" role="tab" data-toggle="tab">手机</a></li>--%>
<%--<li role="presentation"><a href="#trendy" aria-controls="trendy" role="tab" data-toggle="tab">家用电器</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="clearfix"></div>--%>
<%--<div class="tab-content row">--%>
<%--<div id="women" role="tabpanel" class="active section-tab-item">--%>
<%--<div class="tab-item-slider">--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="${goods.goods_img}" alt="暂时无法显示">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">${goods.goods_market_price}</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/2.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<!--                                                            <span class="old-price">$26</span>-->--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/3.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--<!--                                                            <span class="old-price">$180</span>-->--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/4.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--<!--                                                            <span class="old-price">$180</span>-->--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/1.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--<!--                                                            <span class="old-price">$180</span>-->--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/2.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--<!--                                                            <span class="old-price">$180</span>-->--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/3.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--<!--                                                            <span class="old-price">$180</span>-->--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12 col-width">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/4.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--<!--                                                            <span class="old-price">$180</span>-->--%>
<%--</div>--%>
<%--<div class="new-sale">--%>
<%--<span>new</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div id="men" role="tabpanel" class="section-tab-item">--%>
<%--<div class="tab-item-slider">--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/2.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/4.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/1.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/3.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/2.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/4.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/1.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/3.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div id="trendy" role="tabpanel" class="section-tab-item">--%>
<%--<div class="tab-item-slider">--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/1.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/4.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/2.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/3.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/1.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/4.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/2.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-xs-12">--%>
<%--<div class="single-product">--%>
<%--<div class="single-product-item box-shadow-effect">--%>
<%--<div class="single-product-img clearfix hover-effect">--%>
<%--<a href="#">--%>
<%--<img class="primary-image" src="img/product/3.jpg" alt="">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="single-product-info clearfix">--%>
<%--<div class="pro-price">--%>
<%--<span class="new-price">$25.99</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="product-content text-center">--%>
<%--<h3>Full sleev women shirt</h3>--%>
<%--<h4><a href="#">view details</a></h4>--%>
<%--</div>--%>
<%--<div class="product-action">--%>
<%--<ul>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>--%>
<%--<li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>--%>
<%--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<!-- featured end -->
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
                            <p>28 Green Tower, Street Name New<br> 中国杭州</p>

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
<script src="js/vendor/jquery-1.12.3.min.js"></script>
<!-- bootstrap JS
============================================ -->
<script src="js/bootstrap.min.js"></script>
<!-- meanmenu JS
============================================ -->
<script src="js/jquery.meanmenu.js"></script>
<!-- wow JS
============================================ -->
<script src="js/wow.min.js"></script>
<!-- owl.carousel JS
============================================ -->
<script src="js/owl.carousel.min.js"></script>
<!-- countdown JS
============================================ -->
<script src="js/jquery.countdown.min.js"></script>
<!-- price-slider JS
============================================ -->
<script src="js/jquery-price-slider.js"></script>
<!-- Elevate Zoom js
============================================ -->
<script src="js/jquery.elevateZoom-3.0.8.min.js"></script>
<!-- scrollUp JS
============================================ -->
<script src="js/jquery.scrollUp.min.js"></script>
<!-- plugins JS
============================================ -->
<script src="js/plugins.js"></script>
<!-- Nevo Slider js
============================================ -->
<script type="text/javascript" src="lib/custom-slider/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="lib/custom-slider/home.js"></script>
<!-- main JS
============================================ -->
<script src="js/main.js"></script>
</body>
<script>
    $("#decbtn").on("click",function () {
        var dec = $('#buy-num').val();
        if(dec>0){
            dec = dec - 1;
        }else {
            dec = 1;
        }
    })
    $("#incbtn").on("click",function () {
        var inc = $('#buy-num').val();
        inc = inc + 1;
    })
    function toCart(a) {
        var goods_id = a;
        var amount = $('#buy-num').val();
        alert("添加成功");
        $.ajax({
            url: "${pageContext.request.contextPath}/cart/addCart",
            type: "POST",
            dataType: "text",
            data: {'goods_id': goods_id, 'amount': amount},
            success: function (res) {

            }
        });
    }
    function buyNow(id) {
        var amount = $('#buy-num').val();
        location.href="${pageContext.request.contextPath}/cart/findOrderItem?id="+id+"&amount="+amount;
    }
</script>
</html>
