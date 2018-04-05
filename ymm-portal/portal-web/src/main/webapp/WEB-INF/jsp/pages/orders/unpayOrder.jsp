<!doctype html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="UTF-8" />
    <title>个人中心</title>
    <meta name="viewport" content="width=1226" />
    <meta name="description" content="" />
    <meta name="keywords" content="小米商城" />
    <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/base.min.css" />
    <link rel="stylesheet" type="text/css" href="css/main.min.css" />
</head>
<body>
<div class="site-topbar">
    <div class="container">
        <div class="topbar-nav">
            <a href="//www.mi.com/index.html" >小米商城</a><span class="sep">|</span><a href="https://www.miui.com/" target="_blank">MIUI</a><span class="sep">|</span><a href="https://iot.mi.com/index.html" >IoT</a><span class="sep">|</span><a href="https://i.mi.com/" target="_blank">云服务</a><span class="sep">|</span><a href="https://shuidi.mi.com/" target="_blank">水滴</a><span class="sep">|</span><a href="https://jr.mi.com?from=micom" target="_blank">金融</a><span class="sep">|</span><a href="https://youpin.mi.com/" target="_blank">有品</a><span class="sep">|</span><a href="#J_modal-globalSites" data-toggle="modal">Select Region</a>
        </div>
        <div class="topbar-cart" id="J_miniCartTrigger">
            <a class="cart-mini" id="J_miniCartBtn" href="//static.mi.com/cart/"><i class="iconfont">&#xe60c;</i>购物车<span class="cart-mini-num J_cartNum"></span></a>
            <div class="cart-menu" id="J_miniCartMenu">
                <div class="loading"><div class="loader"></div></div>
            </div>
        </div>
        <div class="topbar-info" id="J_userInfo">
            <a class="link" href="//order.mi.com/site/login" data-needlogin="true">登录</a><span class="sep">|</span><a class="link" href="https://account.xiaomi.com/pass/register" >注册</a>        </div>
    </div>
</div>



<div class="breadcrumbs">
    <div class="container">
        <a href='//www.mi.com/index.html'>首页</a><span class="sep">&gt;</span><span>个人中心</span>    </div>
</div>


</div>
<!-- .modal-globalSites END -->

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
