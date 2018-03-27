<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="UTF-8" />
    <title>个人中心</title>
    <meta name="viewport" content="width=1226" />
    <meta name="description" content="" />
    <meta name="keywords" content="ymm商城" />
    <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/userStatic/css/main.min.css" />
</head>
<body>
<div class="site-topbar">
    <div class="container">
        <div class="topbar-nav">
            <a href="${pageContext.request.contextPath}/index" >ymm商城</a><span class="sep">|</span>
        </div>
        <div class="topbar-cart" id="J_miniCartTrigger">
            <a class="cart-mini" id="J_miniCartBtn" href="//static.mi.com/cart/"><i class="iconfont">&#xe60c;</i>购物车<span class="cart-mini-num J_cartNum"></span></a>
            <div class="cart-menu" id="J_miniCartMenu">
                <div class="loading"><div class="loader"></div></div>
            </div>
        </div>
        <div class="topbar-info" id="J_userInfo">
            <a class="link" href="${pageContext.request.contextPath}/pages/user/login" data-needlogin="true">登录</a><span class="sep">|</span><a class="link" href="${pageContext.request.contextPath}/pages/user/login" >注册</a>        </div>
    </div>
</div>

<div class="breadcrumbs">
    <div class="container">
        <a href='${pageContext.request.contextPath}/index'>首页</a><span class="sep">&gt;</span><span>个人中心</span>    </div>
</div>

<div class="page-main user-main">
    <div class="container">
        <div class="row">
            <div class="span4">
                <div class="uc-box uc-sub-box">
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">订单中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="//static.mi.com/order/">我的订单</a></li>
                                <li><a href="#">意外保</a></li>
                                <li><a href="#">团购订单</a></li>
                                <li><a href="#" data-count="comment" data-count-style="bracket">评价晒单</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">个人中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li class="active"><a href="${pageContext.request.contextPath}/pages/user/personalCenter">我的个人中心</a></li>
                                <li><a href="https://order.mi.com/message/list?r=61115.1522138533">消息通知<i class="J_miMessageTotal"></i></a></li>
                                <li><a href="https://order.mi.com/user/address?r=61115.1522138533">收货地址</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">售后服务</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="//service.order.mi.com/record/list?_r=61115.1522138533">服务记录</a></li>
                                <li><a href="//service.order.mi.com/apply/front?_r=61115.1522138533">申请服务</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="https://account.xiaomi.com/" target="_blank">个人信息</a></li>
                                <li><a href="https://account.xiaomi.com/pass/auth/security/home#service=setPassword" target="_blank">修改密码</a></li>
                                <li><a href="http://uvip.xiaomi.cn" target="_blank">社区VIP认证</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="span16">
                <div class="protal-content-update hide">
                    <div class="protal-username">
                        Hi, 陈士明        </div>
                    <p class="msg">我们做了一个小升级：你的用户名可以直接修改啦，去换个酷炫的名字吧。<a href="https://account.xiaomi.com/pass/auth/profile/home" target="_blank"> 立即前往></a></p>
                </div>
                <div class="uc-box uc-main-box">
                    <div class="uc-content-box portal-content-box">
                        <div class="box-bd">
                            <div class="portal-main clearfix">
                                <div class="user-card">
                                    <h2 class="username">用户名${user.username}</h2>
                                    <p class="tip">下午好～</p>
                                    <a class="link" href="https://account.xiaomi.com/pass/userInfo" target="_blank">修改个人信息 &gt;</a>
                                    <img class="avatar" src="picture/avna8j0kgin8eh_320.jpg" width="150" height="150" alt="头像" />
                                </div>
                                <div class="user-actions">
                                    <ul class="action-list">
                                        <li>账户安全：<span class="level level-3">较高</span></li>
                                        <li>绑定手机：<span class="tel">133********71</span></li>

                                        <li>绑定邮箱：<span class="tel">49******1@q*.com</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="portal-sub">
                                <ul class="info-list clearfix">
                                    <li>
                                        <h3>待支付的订单：<span class="num">0</span></h3>
                                        <a href="//static.mi.com/order/?type=7">查看待支付订单<i class="iconfont">&#xe623;</i></a>
                                        <img src="picture/portal-icon-1.png" alt="" />
                                    </li>
                                    <li>
                                        <h3>待收货的订单：<span class="num">0</span></h3>
                                        <a href="//static.mi.com/order/?type=8">查看待收货订单<i class="iconfont">&#xe623;</i></a>
                                        <img src="picture/portal-icon-2.png" alt="" />
                                    </li>
                                    <li>
                                        <h3>待评价商品数：<span class="num">2</span></h3>
                                        <a href="https://order.mi.com/user/comment?filter=1&r=61115.1522138533">查看待评价商品<i class="iconfont">&#xe623;</i></a>
                                        <img src="picture/portal-icon-3.png" alt="" />
                                    </li>
                                    <li>
                                        <h3>喜欢的商品：<span class="num">1</span></h3>
                                        <a href="https://order.mi.com/user/favorite?r=61115.1522138533">查看喜欢的商品<i class="iconfont">&#xe623;</i></a>
                                        <img src="picture/portal-icon-4.png" alt="" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>        </div>
    </div>
</div>

<div class="site-footer">
    <div class="container">
        <div class="footer-service">
            <ul class="list-service clearfix">
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">&#xe634;</i>预约维修服务</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">&#xe635;</i>7天无理由退货</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">&#xe636;</i>15天免费换货</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">&#xe638;</i>满150元包邮</a></li>
                <li><a rel="nofollow" href="#" target="_blank"><i class="iconfont">&#xe637;</i>520余家售后网点</a></li>
            </ul>
        </div>
        <div class="footer-links clearfix">

            <dl class="col-links col-links-first">
                <dt>帮助中心</dt>

                <dd><a rel="nofollow" href="#"   target="_blank">账户管理</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">购物指南</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">订单操作</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>服务支持</dt>

                <dd><a rel="nofollow" href="#"   target="_blank">售后政策</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">自助服务</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">相关下载</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>线下门店</dt>

                <dd><a rel="nofollow" href="#"   target="_blank">服务网点</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">零售网点</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关于羊咩咩</dt>

                <dd><a rel="nofollow" href="#"   target="_blank">了解羊咩咩</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">加入羊咩咩</a></dd>

                <dd><a rel="nofollow" href="#"   target="_blank">联系我们</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关注我们</dt>

                <dd><a rel="nofollow" href="#"   target="_blank">新浪微博</a></dd>

                <dd><a rel="nofollow" href="#" data-toggle="modal" >官方微信</a></dd>

            </dl>

            <div class="col-contact">
                <p class="phone">15005816787</p>
                <p>
                    周一至周日 8:00-18:00<br>（仅收市话费）
                </p>
                <a rel="nofollow" class="btn btn-line-primary btn-small" href="#" target="_blank"><i class="iconfont">&#xe600;</i> 在线客服</a>            </div>
        </div>
    </div>
</div>
  <script src="js/base.min.js"></script>
<script>
    (function() {
        MI.namespace('GLOBAL_CONFIG');
        MI.GLOBAL_CONFIG = {
            orderSite: 'https://order.mi.com',
            wwwSite: '//www.mi.com',
            cartSite: '//cart.mi.com',
            itemSite: '//item.mi.com',
            assetsSite: '//s01.mifile.cn',
            listSite: '//list.mi.com',
            searchSite: '//search.mi.com',
            mySite: '//my.mi.com',
            damiaoSite: 'http://tp.hd.mi.com/',
            damiaoGoodsId:[],
            logoutUrl: 'https://order.mi.com/site/logout',
            staticSite: '//static.mi.com',
            quickLoginUrl: 'https://account.xiaomi.com/pass/static/login.html'
        };
        MI.setLoginInfo.orderUrl = MI.GLOBAL_CONFIG.orderSite + '/user/order';
        MI.setLoginInfo.logoutUrl = MI.GLOBAL_CONFIG.logoutUrl;
        MI.setLoginInfo.init(MI.GLOBAL_CONFIG);
        MI.miniCart.init();
        MI.updateMiniCart();
    })();
</script>

<script type="text/javascript" src="js/user.min.js"></script>

<script>
    var _msq = _msq || [];
    _msq.push(['setDomainId', 100]);
    _msq.push(['trackPageView']);
    (function() {
        var ms = document.createElement('script');
        ms.type = 'text/javascript';
        ms.async = true;
        ms.src = '//s1.mi.com/stat/18/xmst.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ms, s);
    })();
</script>
</body>
</html>

