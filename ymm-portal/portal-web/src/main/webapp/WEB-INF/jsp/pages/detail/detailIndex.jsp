<%--
  Created by IntelliJ IDEA.
  User: 金城武
  Date: 2018/3/27
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <!-- shouji -->
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <title>ymm商品详情展示页</title>
    <meta name="keywords" content="${goods.goods_name}报价"/>
    <meta name="description" content="上ymm,放心又轻松" />
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=//item.m.jd.com/product/5167978.html">
    <meta http-equiv="mobile-agent" content="format=html5; url=//item.m.jd.com/product/5167978.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="canonical" href="//item.jd.com/5167978.html"/>
    <link rel="dns-prefetch" href="//misc.360buyimg.com"/>
    <link rel="dns-prefetch" href="//static.360buyimg.com"/>
    <link rel="dns-prefetch" href="//img10.360buyimg.com"/>
    <link rel="dns-prefetch" href="//img11.360buyimg.com"/>
    <link rel="dns-prefetch" href="//img13.360buyimg.com"/>
    <link rel="dns-prefetch" href="//img12.360buyimg.com"/>
    <link rel="dns-prefetch" href="//img14.360buyimg.com"/>
    <link rel="dns-prefetch" href="//img30.360buyimg.com"/>
    <link rel="dns-prefetch" href="//pi.3.cn"/>
    <link rel="dns-prefetch" href="//ad.3.cn"/>
    <link rel="dns-prefetch" href="//dx.3.cn"/>
    <link rel="dns-prefetch" href="//c.3.cn"/>
    <link rel="dns-prefetch" href="//d.jd.com"/>
    <link rel="dns-prefetch" href="//x.jd.com"/>
    <link rel="dns-prefetch" href="//wl.jd.com"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/detailStatic/css/c63486884c6549e68902f191fde52621.css">
    <style>[style*="2147483647"] div[hui-mod] {display: none !important;}
    .sh-brand-wrap-630128 {
        font: 14px/1.5 '\5fae\8f6f\96c5\9ed1', Arial, sans-serif;
        height: 110px;
        overflow:hidden;
        position:relative;
    }
    .sh-brand-wrap-630128 img {
        vertical-align: middle;
    }
    .sh-brand-wrap-630128 .sh-brand {
        position: relative;
        margin: 0 auto;
        width: 990px;
        overflow:hidden;
    }
    .sh-brand-wrap-630128 .sh-brand .shop-name-box {
        position: absolute;
        top: 50%;
        margin-top: -30px;
        height: 60px;
        left: 190px;
        vertical-align: top;
    }
    .sh-brand-wrap-630128 .sh-brand .shop-name-box .shop-name{
        font-size: 18px;
        color: #333;
    }
    /*.sh-brand-wrap-630128 .sh-brand .shop-logo-box {*/
        /*position: absolute;*/
        /*top: 50%;*/
        /*margin-top: -40px;*/
    /*}*/
    .sh-brand-wrap-630128 .sh-hot-wrap img {
        width: 180px;
        height: 60px;
    }
    .sh-brand-wrap-630128 .sh-brand .hot-link {
        display: 'inline-block';
        position:absolute;
    }
    .sh-brand-wrap-630128 .sh-brand .coupons {
        position: absolute;
        right: 0;
        top: 50%;
        margin-top: -28px;
    }
    .sh-brand-wrap-630128 .sh-brand .coupons .coupon {
        float: left;
        margin-left: 10px;
    }
    .sh-brand-wrap-630128 .sh-brand .follow-me {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        padding-left: 24px;
        width: 47px;
        height: 23px;
        line-height: 23px;
        color: #000;
        font-size: 12px;
        background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEcAAABZCAMAAABbssnGAAAA/1BMVEUAAAD///////+xGRqxGRqxGRr////uub2xGRr////uub2xGRr///+xGRr////////uub3uub3uub3////uub2xGRruub3uub3////uub2xGRr////uub2xGRruub3////uub2xGRqxGRqxGRqxGRqxGRr////uub2xGRr////uub3kOTzlQEOzHx/++/vsoqbsmJzoaWz9+Pj78vL03t7y2Njv0dHtyMjqwcHtq6/jrKzNbG3GV1jEUFHmTE+/QEG8Oju1Jie6MjP57+/25ub25eXou7zgpKTblJTpfYHRdHXnX2LIXV3mWFvmU1bBSEnBR0i3KSrWhofVg4O6NDWxIW+2AAAAKHRSTlMAl9DQlkxEREQGBgbw8JtMTNCb1tbWmJa3t7fx8fHv1dXVm5yZmktLhfBmHAAAAn5JREFUWMPtmMdy2zAQhlfFIq3eZVuWi+IkAIu61SVLcu92kvd/logAMcT4tgBPHn2Xf3n5ZmcxWMwQfBKRaJriSNN0NJIAmdwpVeU0B4L9CNUhu+9rDqgeB1yUpbpkPc0vXl+OL0Xg8WbER/zkEndG6WwbT3hPCSDBigfi8fLC4gEvSgA/qxWRWOE9EYiydGWPi/dEIc1yLXvWeE8aeM5kz4zi8fu5/Qw0n7cq/UR5MQo8I6oyH3G3xmt/OGOqQAQSohyu2JkPqQoJgJKob94Jeb9R0pS83UMFrcWiRZXIhXTfQ9s/XJTV3YeCXEnZUuL7WXov6khDnda992LHju+LUbPwnBRqBsjkzyxVzvIgSFYtHapJX3No6XHIRUVLl6Kn+c3rdqctAo83Iz7irm073W04tr0NLGUAgxWPtsfzM4tHvMiAGsulLbHEe2pQYOnIHgfvKcBJKJ5j4NmVPV0Lj9/PxJHamaj0U+BFJ/B0LJX5iLvVcfxumAZ/XoYo20t25m1LBQOgLOrJm22/TZQ0ZW/3BJ+vr5Ya+ZDue6j7B5JFvW6SIMiXlS3lPMgYKjv6uFA1YMeO74sZj2UIjgzJxOImyOydE1XO90CQuiA6XKR8zRHR44iLfhJdmmw2vL6aX4nA482Ij/i+RXtTQqY92rrHeyoAJiv+UI+7OxZ/8SIT4iwHVGKA98QhxrIne3p4TwwyLPuyp4/3ZIDnVPZMCR6/n811oLn+p9JPjBeLVvDXhajMJ+5X874/nDlRIA6mKD8G7Mw/iAomQEXUmyGlw42SpsLul8AdjVyiBNtBTaLLj1D3D6Saet2kgv1cUbZU9r6+Fw2koUEawXvxHzpC3Z34XwtFAAAAAElFTkSuQmCC) 0 0 no-repeat;
    }
    .sh-brand-wrap-630128 .sh-brand .follow-me:hover {
        background-position: 0 -33px;
    }
    .sh-brand-wrap-630128 .sh-brand .for-light-bg {
        color: #fff;
        background-position: 0 -66px;
    }
    .sh-brand-wrap-630128 .sh-brand .m-search {
        position: absolute;
        right: 0;
        top: 50%;
        margin-top: -32px;
        height: 64px;
    }
    .sh-brand-wrap-630128 .sh-brand .m-search .m-kw {
        margin-right: -6px;
        padding-left: 5px;
        width: 164px;
        height: 32px;
        vertical-align: top;
        border: 2px solid #000;
    }
    .sh-brand-wrap-630128 .sh-brand .m-search .m-submit {
        padding: 0 15px;
        border: 0;
        height: 38px;
        vertical-align: top;
        background-color: #000;
        color: #fff;
        cursor: pointer;
    }
    .sh-brand-wrap-630128 .sh-brand .m-search .m-hw {
        padding-top: 5px;
        font-size: 12px;
    }
    .sh-brand-wrap-630128 .sh-brand .m-search .m-hw .hw-link {
        margin-right: 10px;
        color: #666;
    }
    .sh-brand-wrap-630128 .sh-brand .for-black-bg .m-kw {
        border-color: #b1191a;
    }
    .sh-brand-wrap-630128 .sh-brand .for-black-bg .m-submit {
        background-color: #b1191a;
    }
    .sh-brand-wrap-630128 .sh-brand .for-black-bg .m-hw .hw-link {
        color: #fff;
    }
    .sh-brand-wrap-630128 .userDefinedArea {
        margin: 0 auto;
    }

    .sh-head-menu-922476 ul,
    .sh-head-menu-922476 ol,
    .sh-head-menu-922476 dl,
    .sh-head-menu-922476 li,
    .sh-head-menu-922476 dt,
    .sh-head-menu-922476 dd {
        margin: 0;
        padding: 0;
        list-style: none;
    }
    .sh-head-menu-922476 .sh-hd-container {
        background-color: #fff;
    }
    .sh-head-menu-922476 a {
        text-decoration: none;
        color: #666666;
    }
    .sh-head-menu-922476 {
        width: 100%;
    }
    .sh-head-menu-922476 .sh-hd-wrap {
        font: 14px/1.5 '\5fae\8f6f\96c5\9ed1', Arial, sans-serif;
        position: relative;
        margin: 0 auto;
        height: 40px;
        font-size: 14px;
        color: #333;
        width: 990px;
    }
    .sh-head-menu-922476 .menu-list {
        width: 100%;
        height: 40px;
        list-style: none;
    }
    .sh-head-menu-922476 .mc {
        overflow: visible;
    }
    .sh-head-menu-922476 .menu-list .menu {
        float: left;
        line-height: 24px;
        height: 24px;
        padding: 8px 0;
        border-radius: 12px;
    }
    .sh-head-menu-922476 .menu-list .menu:hover .arrow,
    .sh-head-menu-922476 .menu-list .menu .hover .arrow {
        font-size: 0;
        line-height: 0;
        height: 0;
        width: 0;
        border-top: 0;
        border-left: 5px dashed transparent;
        border-right: 5px dashed transparent;
        border-bottom: 5px solid #fff;
    }
    .sh-head-menu-922476 .menu-list .menu:hover .main-link,
    .sh-head-menu-922476 .menu-list .menu .hover .main-link {
        color: #fff !important;
        background-color: #333;
    }
    .sh-head-menu-922476 .menu-list .menu .main-link {
        position: relative;
        z-index: 4;
        display: block;
        padding: 0 15px;
        color: #333;
        border-radius: 12px;
    }
    .sh-head-menu-922476 .menu-list .menu .home-link {
        font-weight:bold;
    }
    .sh-head-menu-922476 .menu-list .menu .arrow {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: middle;
        margin-left: 10px;
        font-size: 0;
        line-height: 0;
        height: 0;
        width: 0;
        border-bottom: 0;
        border-left: 5px dashed transparent;
        border-right: 5px dashed transparent;
        border-top: 5px solid #666;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap {
        display: none;
        position: absolute;
        left: 0;
        top: 39px;
        right: 0;
        z-index: 99;
        padding: 20px 40px;
        border: 1px solid #bebab0;
        background-color: rgba(247, 242, 234, 0.9);
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .sub-pannel {
        float: left;
        padding: 0;
        _display: inline;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .sub-title {
        margin-bottom: 13px;
        height: 54px;
        line-height: 54px;
        border-bottom: dashed 1px #c9c9c9;
        padding: 0 20px;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .sub-list {
        padding: 0 20px;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .sub-title .sub-tit-link {
        font-size: 14px;
        font-weight: bold;
        color: #333;
        line-height: 24px;
        display: inline-block;
        height: 24px;
        padding: 0 10px;
        margin-left: -10px;
        border-radius: 12px;
        min-width: 74px;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .sub-title .sub-tit-link:hover {
        border: solid 1px #e4393c;
        color: #e4393c;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .leaf {
        font-size: 12px;
        height: 26px;
        line-height: 26px;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .leaf .leaf-link:hover {
        color: #c81623;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .all-goods-wrap {
        clear: both;
        padding-left: 20px;
    }
    .sh-head-menu-922476 .menu-list .menu .sub-menu-wrap .all-goods-wrap .all-goods-link {
        font-weight: bold;
        padding-left: 20px;
        border: solid 1px #666;
        border-radius: 12px;
        height: 24px;
        line-height: 24px;
        padding: 0 10px;
    }
    .sh-head-menu-922476 .menu-list .menu:hover .sub-menu-wrap {
        display: block;
    }
    .sh-head-menu-922476 .menu-list .menu .all-goods-link-wrap {
        clear: both;
        padding: 23px 20px 0;
    }
    .sh-head-menu-922476 .menu-list .menu .all-goods-link {
        display: inline-block;
        border: solid 1px #666;
        height: 24px;
        line-height: 24px;
        border-radius: 12px;
        padding: 0 10px;
        margin-left: -10px;
        font-weight:bold;
        color: #000;
    }
    .sh-head-menu-922476 .s-form {
        position: absolute;
        top: 8px;
        right: 0;
    }
    .sh-head-menu-922476 .s-form .s-inp {
        padding: 0 0 0 10px;
        width: 130px;
        line-height: 22px;
        height: 22px;
        background-color: #ffffff;
        color: #c9c9c9;
        vertical-align: top;
        outline: none;
        border: solid 1px #e1e1e1;
        border-top-left-radius: 11px;
        border-bottom-left-radius: 11px;
    }
    .sh-head-menu-922476 .s-form .s-submit {
        margin-left: -5px;
        padding: 0 10px;
        border: 0;
        height: 24px;
        width: 46px;
        cursor: pointer;
        border-top-right-radius: 11px;
        border-bottom-right-radius: 11px;
        background:#333 url("${pageContext.request.contextPath}/detailStatic/images/583543d4nc7e0c1a4.png") no-repeat center;
    }</style>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/detailStatic/css/4970be6c820a4e3eb79661dc42510827.css" />
    <script charset="gbk">
        var pageConfig = {
            compatible: true,
            product: {
                modules: [
                    'address',
                    'prom',
                    'colorsize',
                    'buytype',
                    'baitiao',
                    'summary',
                    'o2o',
                    'buybtn',
                    'track',
                    'suits',
                    'crumb',
                    'fittings',
                    'detail',
                    'contact',
                    'popbox',
                    'preview',
                    'info',
                    'imcenter',
                    'jdservice',
                    'commitments',
                    'gift',
                    'popupCar'                ],
                imageAndVideoJson: {},
                ostime: 1522208633.882,
                skuid: 5167978,
                skuMarkJson: {"isxg":false,"isJDexpress":false,"isrecyclebag":false,"isSopUseSelfStock":false,"isTimeMark":false,"isSopJSOLTag":false,"NosendWMS":false,"isOripack":false,"unused":false,"presale":false,"isyy":false,"isSopWareService":false,"isPOPDistribution":false,"isGlobalPurchase":false},
                name: '\u673a\u68b0\u9769\u547d\uff08\u004d\u0045\u0043\u0048\u0052\u0045\u0056\u004f\uff09\u6df1\u6d77\u6cf0\u5766\u0058\u0036\u0054\u0069\u002d\u0053\u0020\u0031\u0035\u002e\u0036\u82f1\u5bf8\u6e38\u620f\u7b14\u8bb0\u672c\u0020\u0069\u0037\u002d\u0037\u0037\u0030\u0030\u0048\u0051\u0020\u0038\u0047\u0020\u0031\u0032\u0038\u0047\u0053\u0053\u0044\u002b\u0031\u0054\u0020\u0047\u0054\u0058\u0031\u0030\u0035\u0030\u0054\u0069\u0020\u0034\u0047\u0020\u673a\u68b0\u952e\u76d8',
                skuidkey:'8F76E7A0563C8A4A36A56871EA032F9E',
                href: '//item.jd.com/5167978.html',
                seckillType:1,
                koEndOffset : 80166000,koEndTime:1522288799000,
                src: 'jfs/t14182/9/2348254453/328467/a4355173/5a3b90adN6555b5d5.jpg',
//                imageList: ["jfs/t14182/9/2348254453/328467/a4355173/5a3b90adN6555b5d5.jpg","jfs/t13690/228/949953261/252972/e8bcd22f/5a169e35Nbb2bcaf4.jpg","jfs/t11095/337/2366861573/185397/49e6b24e/5a169e41Nbb814c2c.jpg","jfs/t12775/226/878005653/216297/b229fca0/5a169e46N670350cb.jpg","jfs/t13075/213/930448688/247503/4e7897c0/5a169e36N94b95cc2.jpg","jfs/t13342/328/918118974/116058/74fd8b9a/5a169e47Nd7f3f11a.jpg","jfs/t11461/360/2368137849/132713/4af0da67/5a169e47N86450548.jpg","jfs/t12610/221/923027096/135339/9b632ad/5a169e48Nd2587a38.jpg","jfs/t13222/209/929601681/116647/ca23a40/5a169e38Nf86f6e9a.jpg","jfs/t12796/243/922374149/135321/d07e91f8/5a169e49N8d189191.jpg"],
                image:"${goods.goods_img}",
                cat: [670,671,1105],
                forceAdUpdate: '8274',
                brand: 54605,
                pType: 1,
                isClosePCShow: false,
                pTag:0,                                         isPop:false,
                venderId:1000000948,
                shopId:'1000000948',
                commentVersion:'2382',         specialAttrs:["isFlashPurchase-0","nationallySetWare-5","SoldOversea","packType","mspd","IsJX","isOverseaPurchase-0","is7ToReturn-1","YushouStepType-0","IsNewGoods"],
                recommend : [0,1,2,3,4,5,6,7,8,9],
                easyBuyUrl:"//easybuy.jd.com/skuDetail/newSubmitEasybuyOrder.action",
                qualityLife: "//c.3.cn/qualification/info?skuId=5167978&pid=5167978&catId=1105",
                colorSize: [{"skuId":5167978,"颜色":"X6Ti-S【i7 GTX1050Ti机械键盘】"},{"skuId":3773815,"颜色":"X6TI-S【GTX1050Ti i7进阶版】黑"},{"skuId":6439537,"颜色":"【新品】72%色域 i7 GTX1050Ti"},{"skuId":4365894,"颜色":"X6TI-S【GTX1050 i7 高玩版】银"},{"skuId":4243538,"颜色":"X6Ti-S【i7 GTX1050Ti进阶版】银"},{"skuId":4365892,"颜色":"X6TI-S【GTX1050 i7 高玩版】黑"},{"skuId":5168060,"颜色":"X6TI-S【i7 GTX1050 机械键盘】"}],        warestatus: 1,                         desc: '//cd.jd.com/description/channel?skuId=5167978&mainSkuId=5167978&cdn=2',
                cmsNavigation: [{"address":"//channel.jd.com/670-671.html","corner":"","name":"电脑办公","order":1},{"address":"//intelrxt.jd.com/","corner":"","name":"用芯选机","order":2},{"address":"//gaming.jd.com/","corner":"","name":"京东游戏","order":3},{"address":"//jdz.jd.com/","corner":"","name":"电脑私人定制","order":4},{"address":"//channel.jd.com/670-671.html","corner":"","name":"本周热卖","order":5},{"address":"//sale.jd.com/act/F5ZurL6zbcN.html","corner":"优惠多","name":"吃鸡利器","order":6}],        /**/
                /**/
                twoColumn: true,                isFeeType: true,                                        isBookMvd4Baby: false,        addComments:true,
                foot: '//dx.3.cn/footer?type=common_config2',
                shangjiazizhi: false        }
        };
        try {
            function is_sort_black_list() {
                var jump_sort_list = {"6881":3,"1195":3,"10011":3,"6980":3,"12360":3};
                if(jump_sort_list['670'] == 1 || jump_sort_list['671']==2 || jump_sort_list['1105']==3) {
                    return false;
                }
                return false;
            }

            function jump_mobile() {
                if(is_sort_black_list()) {
                    return;
                }

                var userAgent = navigator.userAgent || "";
                userAgent = userAgent.toUpperCase();
                if(userAgent == "" || userAgent.indexOf("PAD") > -1) {
                    return;
                }

                if(window.location.hash == '#m') {
                    var exp = new Date();
                    exp.setTime(exp.getTime() + 30 * 24 * 60 * 60 * 1000);
                    document.cookie = "pcm=1;expires=" + exp.toGMTString() + ";path=/;domain=jd.com";
                    window.showtouchurl = true;
                    return;
                }

                if (/MOBILE/.test(userAgent) && /(MICROMESSENGER|QQ\/)/.test(userAgent)) {
                    var paramIndex = location.href.indexOf("?");
                    window.location.href = "//item.m.jd.com/product/5167978.html"+(paramIndex>0?location.href.substring(paramIndex,location.href.length):'');
                    return;
                }

                var jump = true;
                var cook = document.cookie.match(/(^| )pcm=([^;]*)(;|$)/);
                if(cook && cook.length > 2 && unescape(cook[2]) == "1") {
                    jump = false;
                }
                var mobilePhoneList = ["IOS","IPHONE","ANDROID","WINDOWS PHONE"];
                for(var i=0, len=mobilePhoneList.length; i<len; i++) {
                    if(userAgent.indexOf(mobilePhoneList[i]) > -1) {
                        if(jump) {
                            var paramIndex = location.href.indexOf("?");
                            window.location.href = "//item.m.jd.com/product/5167978.html"+(paramIndex>0?location.href.substring(paramIndex,location.href.length):'');
                        } else {
                            window.showtouchurl = true;
                        }
                        break;
                    }
                }
            }
            jump_mobile();
        } catch(e) {}
        var __FE_Monitor_Config = { sid: 'item', browsers: [ 'chrome' ] };
    </script>
    <script src="js/28ab72bf8893457eb921697d2ce893e2.js"></script>

    <script>
        seajs.config({
            paths: {
                'MISC' : '//misc.360buyimg.com',
                'MOD_ROOT' : '//static.360buyimg.com/item/default/1.0.37/components',
                'PLG_ROOT' : '//static.360buyimg.com/item/default/1.0.37/components/common/plugins',
                'JDF_UI'   : '//misc.360buyimg.com/jdf/1.0.0/ui',
                'JDF_UNIT' : '//misc.360buyimg.com/jdf/1.0.0/unit'
            }
        });
    </script>
    <script src="js/log_client.js" crossorigin></script>

</head>
<body version="140120" class="cat-1-670 cat-2-671 cat-3-1105 item-5167978 JD JD-1">
<div id="shortcut-2014">
    <div class="w">
        <ul class="fl" clstag="shangpin|keycount|topitemnormal|a01">
            <li class="dorpdown" id="ttbar-mycity"></li>
        </ul>
        <ul class="fr">
            <li class="fore1" id="ttbar-login" clstag="shangpin|keycount|topitemnormal|a02">
                <a target="_blank" href="javascript:login();" class="link-login">你好，请登录</a>
                &nbsp;&nbsp;
                <a href="javascript:regist();" class="link-regist style-red">免费注册</a>
            </li>
            <li class="spacer"></li>
            <li class="fore2"  clstag="shangpin|keycount|topitemnormal|a03">
                <div class="dt">
                    <a target="_blank" href="//order.jd.com/center/list.action">我的订单</a>
                </div>
            </li>
            <li class="spacer"></li>
            <%--<li class="fore3 dorpdown" id="ttbar-myjd" clstag="shangpin|keycount|topitemnormal|b04">--%>
                <%--<div class="dt cw-icon">--%>
                    <%--<i class="ci-right"><s>◇</s></i>--%>
                    <%--<a target="_blank" href="//home.jd.com/">我的京东</a>--%>
                <%--</div>--%>
                <%--<div class="dd dorpdown-layer"></div>--%>
            <%--</li>--%>
            <li class="spacer"></li>
            <li class="fore4" clstag="shangpin|keycount|topitemnormal|a04">
                <div class="dt">
                    <a target="_blank" href="${pageContext.request.contextPath}/pages/user/personalCenter">ymm会员</a>
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore5"  clstag="shangpin|keycount|topitemnormal|a05">
                <div class="dt">
                    <a target="_blank" href="//b.jd.com/">企业采购</a>
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore7 dorpdown" id="ttbar-atte" clstag="shangpin|keycount|topitemnormal|a09">
                <div class="dt cw-icon">
                    <i class="ci-right"><s>◇</s></i>关注ymm
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore8 dorpdown" id="ttbar-serv" clstag="shangpin|keycount|topitemnormal|a07">
                <div class="dt cw-icon">
                    <i class="ci-right"><s>◇</s></i>客户服务
                </div>
                <div class="dd dorpdown-layer"></div>
            </li>
            <li class="spacer"></li>
            <li class="fore9 dorpdown" id="ttbar-navs" clstag="shangpin|keycount|topitemnormal|a08">
                <div class="dt cw-icon">
                    <i class="ci-right"><s>◇</s></i>网站导航
                </div>
                <div class="dd dorpdown-layer"></div>
            </li>
        </ul>
        <span class="clr"></span>
    </div>
</div><!-- #shortcut-2014 --><style type="text/css">
    #search-2014 .button {
        width: auto;
        padding: 0 8px;
        font:12px simsun;
        overflow:visible;
    }
    #search-2014 .button01 {
        background: #474e5c;
    }
    #search-2014 .text {
        width: 340px;
    }
    #search-2014 .form {
        width: 480px;
    }
    #shelper {
        width: 349px;
    }
    .root61 #search-2014, .root61 #search-2014 .form {
        _width: 560px;
    }
</style>

<div class="w">
    <div id="logo-2014">
        <%--<a href="//www.jd.com/" class="logo" clstag="shangpin|keycount|topitemnormal|d01"></a>--%>
        <img src="/ymm/portal/images/logo/logo.png" alt="SHOPPPIE">
        <div class="extra">
            <div id="channel"></div>
            <div id="categorys-mini">
                <%--<div class="cw-icon">--%>
                    <%--<h2><a href="//www.jd.com/allSort.aspx" clstag="shangpin|keycount|topitemnormal|d02">全部分类<i class="ci-right"><s>◇</s></i></a></h2>--%>
                <%--</div>--%>
                <div id="categorys-mini-main">
                    <span class="loading"></span>
                </div>
            </div>
        </div>
    </div>

    <div id="search-2014" >
        <ul id="shelper" class="hide"></ul>
        <div class="form">
            <input type="text" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" />
            <button onclick="search('key');return false;" class="button cw-icon" clstag="shangpin|keycount|topitemnormal|d03">搜全站</button>
            <button type="button" class="button button01" clstag="shangpin|keycount|topitemnormal|d04">搜本店</button>
        </div>
    </div>
    <div id="settleup-2014" class="dorpdown">
        <div class="cw-icon">
            <i class="ci-left"></i>
            <i class="ci-right">&gt;</i>
            <a target="_blank" href="${pageContext.request.contextPath}/cart/listCustomCart" clstag="shangpin|keycount|topitemnormal|d05">我的购物车</a>
        </div>
        <div class="dorpdown-layer">
            <div class="spacer"></div>
            <div id="settleup-content">
                <span class="loading"></span>
            </div>
        </div>
    </div>
    <div id="hotwords"></div>
    <span class="clr"></span>
    <script>
        (function() {
            $('.button01').click(function() {
                url = '//mall.jd.com/advance_search-' + 406951 + '-' + pageConfig.product.venderId + '-' + pageConfig.product.shopId + '-0-0-0-1-1-24.html';
                location.href = url + '?keyword=' + encodeURIComponent(encodeURIComponent(jQuery.trim($('#key').val())));
            });
            $(function() {
                $("#navmore").hover(function() {
                    $(this).addClass("hover")
                }, function() {
                    $(this).removeClass("hover")
                });
            });
        })();
        seajs.use(['jdf/1.0.0/unit/globalInit/2.0.0/globalInit.js','jdf/1.0.0/unit/category/2.0.0/category.js'],function(globalInit,category){
            globalInit();
            category({type:'mini', mainId:'#categorys-mini', el:'#categorys-mini-main'});
        });
        seajs.use('MOD_ROOT/common/vendor/jshop-lib.min');

        (function(cfg) {
            function setPlaceholder(val) {
                $('#key').val(val)
                    .bind('focus',function(){
                        if (this.value==val){ this.value='';this.style.color='#333' }
                    })
                    .bind('blur',function(){
                        if (this.value==''){ this.value=val;this.style.color='#999' }
                    });
            }
            function render(r) {
                if (!r || !r.length) return;
                var html = '';
                var el = document.getElementById('hotwords')

                for (var i = 0; i < r.length; i++) {
                    var item = r[i];

                    if (i === 0) {
                        setPlaceholder(item.name)
                    } else {
                        html += '<a target="_blank" data-id="'+ item.id +'" href="'+ item.url_info +'">'+ item.name +'</a>'
                    }
                }

                if (el) el.innerHTML = html
            }
            $.ajax({
                url: '//cds.3.cn/hotwords/get',
                data: { cate: cfg.cat.join(',') },
                dataType: 'jsonp',
                success: render
            })
        })(pageConfig.product);
    </script>
</div><div id="shop-head" clstag="shangpin|keycount|product|dianputou"><div class="layout-area J-layout-area" >
    <div class="layout layout-auto J-layout" name="通栏布局（100%）" id="62327829" prototypeId="20" area="" layout_name="insertLayout" >
        <div class="layout-one" name="main">




            <div onclick="log('shop_03','mall_03','1000000948','19268','630128')" class="fn-clear sh-brand-wrap-630128" instanceId="62327830" module-name="new_shop_signs" style="margin-bottom:0px;;margin-bottom: 0px" origin="0">
                <div class="mc" style=";">

                    <div class="j-module sh-brand-wrap" module-function="autoCenter" module-param="{}">
                        <div class="userDefinedArea" style="width:1920px;" data-title="">
                            <%--<table width="1920" border="0" cellspacing="0" cellpadding="0" class="ke-zeroborder">--%>
                                <%--<tbody>--%>
                                <%--<tr>--%>
                                    <%--<td>--%>
                                        <%--<img src="picture/5a7d4066n2f0f630d.gif" width="1920" height="110" border="0" usemap="#TAISHIJ店招" />--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--</tbody>--%>
                            <%--</table>--%>
                            <map name="TAISHIJ店招">
                                <area shape="rect" coords="965,6,1197,101" href="//item.jd.com/4800445.html" target="_blank" />
                                <area shape="rect" coords="1205,1,1406,100" href="//item.jd.com/5048818.html" target="_blank" />
                                <area shape="rect" coords="1425,6,1570,101" href="//item.jd.com/4281052.html" target="_blank" />
                            </map>
                        </div>
                    </div>

                    <script type="text/javascript">
                        function importHotZoneData() {
                            $.each($('.hot-link'), function(index, item) {
                                var pxArray = $(item).attr('px').split(',');
                                $(item).css({
                                    left: pxArray[0] + 'px',
                                    top: pxArray[1]+ 'px',
                                    width: pxArray[2] - 2+ 'px',
                                    height: pxArray[3] - 2+ 'px'
                                });
                            });
                        }
                        importHotZoneData();
                        function addAttentHtml(){
                            var attentHtml = '<div class="j-attent-dialog-wrap">'
                                +'<div class="attent-dialog-mask"></div>'
                                +'<div class="attent-dialog">'
                                +   '<div class="attent-mt">'
                                +       '<span class="attent-close"  title="关闭">关闭</span>'
                                +       '<span class="attent-title">提示</span>'
                                +   '</div>'
                                +   '<div class="attent-mc">'
                                +       '<div class="attent-con">'
                                +           '<span class="attent-msg"></span>'
                                +           '<span class="attent-other"></span>'
                                +       '</div>'
                                +   '</div>'
                                +'</div>'
                                +'</div><div class="j-attent-tip-wrap attent-tip-wrap"><i></i></div>';

                            var jAttWrap = $(".j-attent-dialog-wrap");

                            if(jAttWrap.length === 0){
                                jAttWrap = $(attentHtml).appendTo("body");
                            }
                        }
                        addAttentHtml();
                        function _seacrh_hot_keyword(obj){
                            var base_url = "//mall.jd.com/view_search" +  "-406951" + "-1000000948" + "-1000000948"   + "-0-1-0-0-1-1-24.html";
                            var keyword = $(obj).html();
                            if(keyword){
                                keyword = encodeURIComponent(keyword);
                                keyword = encodeURIComponent(keyword);
                            }else{
                                keyword="";
                            }
                            var url = base_url + "?keyword="+keyword+"&isGlobalSearch=1";
                            window.open(url);
                        }

                        function shop_signs_search(obj){
                            var base_url = "//mall.jd.com/view_search" +  "-406951" + "-1000000948" + "-1000000948"   + "-0-1-0-0-1-1-24.html";
                            var keyword = $(obj).prev().val();
                            if(keyword){
                                keyword = encodeURIComponent(keyword);
                                keyword = encodeURIComponent(keyword);
                            }else{
                                keyword="";
                            }
                            var url = base_url + "?keyword="+keyword+"&isGlobalSearch=1";
                            window.open(url);
                        }

                        $('.m-kw').keydown(function(e){
                            if(e.keyCode==13){
                                var base_url = "//mall.jd.com/view_search" +  "-406951" + "-1000000948" + "-1000000948"   + "-0-1-0-0-1-1-24.html";
                                var keyword = $(this).val();
                                if(keyword){
                                    keyword = encodeURIComponent(keyword);
                                    keyword = encodeURIComponent(keyword);
                                }else{
                                    keyword="";
                                }
                                var url = base_url + "?keyword="+keyword+"&isGlobalSearch=1";
                                window.open(url);
                                return false;
                            }
                        });

                        function _shop_attention(){
                            jQuery('#shop-signs-attention').unbind('click');
                            jQuery('#shop-signs-attention').click(function() {
                                S_ifollow.follow(this);
                                var url = "//follow-soa.jd.com/vender/follow";
                                url+="?venderId=" +"1000000948";
                                jQuery.ajax({
                                    url:url,
                                    type : 'GET',
                                    dataType : 'jsonp',
                                    //jsonp: 'jsonpCallback',
                                    success:function (data){
                                        S_ifollow.requestSuccess(data);
                                    },
                                    error:function(){

                                    }
                                });
                            });
                        }
                        _shop_attention();
                    </script>

                </div>
            </div>




            <div onclick="log('shop_03','mall_03','1000000948','18169','922476')" class="fn-clear sh-head-menu-922476" instanceId="62327831" module-name="shop_link" style="margin-bottom:0px;;margin-bottom: 0px" origin="0">
                <div class="mc" style=";">
                    <div class="J_ShopHeaderLinkWithDropdown sh-hd-container" style="background-color: #595959">
                        <div class="sh-hd-wrap">
                            <ul class="menu-list">
                                <li class="menu">
                                    <a class="main-link" style="font-weight: bold;color: #ffffff" href="//mall.jd.com/index-1000000948.html" target="_self" clstag="jshopmall|keycount|1000000948|xdpdh">首页</a>
                                </li>
                                <li class="menu" clstag="jshopmall|keycount|1000000948|xdpdh1">
                                    <a style="color: #ffffff" class="main-link"  target="_blank"  href="${pageContext.request.contextPath}/index1">全部商品</a>
                                </li>
                            </ul>
                            <div class="s-form">
                                <div class="form-body">
                                    <input type="text" class="J_shopLinkSearchInput s-inp" value="X1" onkeydown="javascript:if(event.keyCode==13) shop_link_search();" maxlength="60" size="60">
                                    <input type="button" onclick="shop_link_search();" class="s-submit">
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        function shop_link_search(){
                            var prefix = "//mall.jd.com";
                            if (window.location.host.indexOf("yhd.com") != -1) {
                                prefix = "//mall.yhd.com";
                            }
                            var base_url = prefix + "/view_search" +  "-406951" + "-1000000948" + "-1000000948"   + "-0-1-0-0-1-1-24.html";
                            var keyword = $('.J_shopLinkSearchInput').val();
                            if(keyword){
                                keyword = encodeURIComponent(keyword);
                                keyword = encodeURIComponent(keyword);
                            }else{
                                keyword="";
                            }
                            var url = base_url + "?keyword="+keyword+"&isGlobalSearch=1";
                            window.location.href = url;
                        }
                        function autoHeight(){
                            var subNode = $(this).find('.sub-pannel'),
                                row = subNode.length%7 === 0?(subNode.length/7):(subNode.length/7 + 1);
                            var autoRowHeight = function(row) {
                                var maxHeight = 0;
                                for (var i = 0; i < 7; i++) {
                                    if ($(subNode[row*7 + i]).height() > maxHeight) {
                                        maxHeight = $(subNode[row*7 + i]).height();
                                    }
                                }
                                for (var i = 0; i < 7; i++) {
                                    $(subNode[row*7 + i]).height(maxHeight);
                                }
                            };

                            for (var i = 0; i < row; i++) {
                                autoRowHeight(i);
                            }
                        }
                        $(function(){
                            $('.J_ShopHeaderLinkWithDropdown').each(function(idx, dp){
                                var _this = $(dp);
                                _this.parents('.mc,.layout-one,.J-layout').css('overflow', 'visible');
                                _this.parents('.J-layout-area').css('position', 'relative').css('zIndex', 4);
                            });
                            $('.all-cate').hover(function(){
                                autoHeight.call(this);
                            });
                        });
                    </script>

                </div>
            </div>

        </div>
    </div>
</div></div><!--#shop-head-->
<script>
    (function(cfg) {
        var $nav1 = $('#navitems-group1');
        var $nav2 = $('#navitems-group2');
        var html = '<li class="fore1" id="nav-home"> <a href="//www.jd.com/">首页</a> </li>';

        if (cfg.cmsNavigation && cfg.cmsNavigation.length && $nav1.length) {
            $nav2.html('');
            var corner_class = "";
            var corner_i="";
            for (var i = 0; i < cfg.cmsNavigation.length; i++) {
                var nav = cfg.cmsNavigation[i];
                if(nav.corner&&nav.corner!=""){
                    corner_class = "new-tab";
                    corner_i="<i class='icon-new'>"+nav.corner+"<span></span></i>";
                }else{
                    corner_class="";
                    corner_i="";
                }
                var j = i + 3;
                if(j.toString().length == 1) {
                    j = "0" + j;
                }
                html += '<li class="fore'+ i +' '+corner_class+'" clstag="shangpin|keycount|topitemnormal|c' + j + '">'+corner_i+'<a href="'+ nav.address +'" target="_blank">'+ nav.name +'</a> </li>';
            }

            $nav1.html(html);
        }
    })(pageConfig.product);
</script>

<div class="crumb-wrap" id="crumb-wrap">
    <div class="w">
        <div class="crumb fl clearfix">
            <div class="item first"><a href='//diannao.jd.com' clstag="shangpin|keycount|product|mbNav-1">电脑、办公</a></div>
            <div class="item">
                <div class="J-crumb-br crumb-br EDropdown">
                    <div class="inner border">
                        <%--<div class="head" data-drop="head">--%>
                            <%--<a href='//list.jd.com/list.html?cat=670,671,1105&ev=exbrand_54605' clstag="shangpin|keycount|product|mbNav-4">机械革命（MECHREVO）</a>--%>
                            <%--<span class="arrow arr-close"></span>--%>
                        <%--</div>--%>
                        <div class="content hide" data-drop="content">
                            <ul class="br-reco plist-1 lh clearfix" clstag="shangpin|keycount|product|mbTJ-1"></ul>

                        </div>
                    </div>
                </div>
            </div>
            <div class="item sep">&gt;</div>
            <div class="item ellipsis" title="华硕">${goods.goods_name}</div>
        </div><!-- .crumb -->

        <div class="contact fr clearfix">
            <div class="name goodshop EDropdown">
                <em class="u-jd">
                    <span>Ymm</span>自营
                </em>
            </div>
            <div class="J-hove-wrap EDropdown fr">

                <div class="contact-layer ">
                    <div class="content " data-drop="content">
                        <div class="score-body">
                            <div class="pop-shop-im">
                                <div class="hide J-contact-text">客服</div>
                                <div class="hide J-im-item">
                                    <div class="J-im-btn clearfix"></div>
                                </div>
                                <div class="hide J-jimi-item">
                                    <div class="J-jimi-btn clearfix"></div>
                                </div>

                            </div>
                            <div class="pop-shop-qr-code J-contact-qrcode clearfix">
                                <div class="qr-code hide J-wd-qrcode">
                                    <img src="picture/blank.gif" width="78" height="78" alt="关注微店"/>
                                    <p>关注微店</p>
                                </div>
                                <div class="qr-code J-m-qrcode" data-url="https://cd.jd.com/qrcode?skuId=5167978&location=3&isWeChatStock=2">
                                    <div class="J-m-wrap"></div>
                                    <p>手机下单</p>
                                </div>
                            </div>
                            <div class="btns">
                                <a href="//mechrevo.jd.com" target="_blank" class="btn-def enter-shop J-enter-shop" clstag="shangpin|keycount|product|jindian1">
                                    <i class="sprite-enter"></i><span>进店逛逛</span>
                                </a>
                                <span class="separator">|</span>
                                <a href="#none" class="btn-def follow-shop J-follow-shop" data-vid="1000000948" clstag="shangpin|keycount|product|guanzhu1">
                                    <i class="sprite-follow"></i><span>关注店铺</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- .contact -->

        <div class="clr"></div>
    </div>
</div>

<div class="w">
    <div class="product-intro clearfix">
        <div class="preview-wrap">
            <div class="preview" id="preview">
                <div id="spec-n1" class="jqzoom main-img" data-big="1" clstag="shangpin|keycount|product|mainpic_1">
                    <ul class="preview-btn J-preview-btn">
                    </ul>
                    <%--<img id="spec-img" width="450" data-origin="//img13.360buyimg.com/n1/s450x450_jfs/t14182/9/2348254453/328467/a4355173/5a3b90adN6555b5d5.jpg" alt="机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘">--%>
                    <i></i>
                    <div id="belt"></div>
                </div>
                <script>
                    (function(doc, cfg) {
                        var img = doc.getElementById('spec-img');
                        var src = img.getAttribute('data-origin');
                        var nsz = 300;

                        if ((!cfg.wideVersion || !cfg.compatible) && !cfg.product.ctCloth) {
                            img.setAttribute('width', nsz);
                            /*img.setAttribute('height', nsz);*/
                            img.setAttribute('src', src.replace('s450x450', 's'+ nsz +'x' + nsz));
                        } else {
                            img.setAttribute('src', src);
                        }

                        if(cfg.product.ctCloth) {
                            if (!cfg.wideVersion || !cfg.compatible) {
                                img.setAttribute('width', nsz);
                            }
                        }
                    })(document, pageConfig);
                </script>
                <div class="spec-list" clstag="shangpin|keycount|product|lunbotu_1">
                    <a id="spec-forward" href="javascript:;" class="arrow-prev"><i class="sprite-arrow-prev"></i></a>
                    <a id="spec-backward" href="javascript:;" class="arrow-next"><i class="sprite-arrow-next"></i></a>
                    <%--<div id="spec-list" class="spec-items">--%>
                        <%--<ul class="lh">--%>
                            <%--<li  class='img-hover'><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a3b90adn6555b5d5.jpg' data-url='jfs/t14182/9/2348254453/328467/a4355173/5a3b90adN6555b5d5.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e35nbb2bcaf4.jpg' data-url='jfs/t13690/228/949953261/252972/e8bcd22f/5a169e35Nbb2bcaf4.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e41nbb814c2c.jpg' data-url='jfs/t11095/337/2366861573/185397/49e6b24e/5a169e41Nbb814c2c.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e46n670350cb.jpg' data-url='jfs/t12775/226/878005653/216297/b229fca0/5a169e46N670350cb.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e36n94b95cc2.jpg' data-url='jfs/t13075/213/930448688/247503/4e7897c0/5a169e36N94b95cc2.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e47nd7f3f11a.jpg' data-url='jfs/t13342/328/918118974/116058/74fd8b9a/5a169e47Nd7f3f11a.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e47n86450548.jpg' data-url='jfs/t11461/360/2368137849/132713/4af0da67/5a169e47N86450548.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e48nd2587a38.jpg' data-url='jfs/t12610/221/923027096/135339/9b632ad/5a169e48Nd2587a38.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e38nf86f6e9a.jpg' data-url='jfs/t13222/209/929601681/116647/ca23a40/5a169e38Nf86f6e9a.jpg' data-img='1' width='54' height='54'></li>--%>
                            <%--<li ><img alt='机械革命（MECHREVO）深海泰坦X6Ti-S 15.6英寸游戏笔记本 i7-7700HQ 8G 128GSSD+1T GTX1050Ti 4G 机械键盘' src='picture/5a169e49n8d189191.jpg' data-url='jfs/t12796/243/922374149/135321/d07e91f8/5a169e49N8d189191.jpg' data-img='1' width='54' height='54'></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                </div>
                <div class="preview-info">
                    <div class="left-btns">
                        <a class="follow J-follow" data-id="5167978" href="#none" clstag="shangpin|keycount|product|guanzhushangpin_1">
                            <i class="sprite-follow-sku"></i><em>关注</em>
                        </a>
                        <a class="share J-share" href="#none" clstag="shangpin|keycount|product|share_1">
                            <i class="sprite-share"></i><em>分享</em>
                        </a>
                        <a class="compare J-compare J_contrast" id="comp_5167978" data-sku="5167978" href="#none" clstag="shangpin|keycount|product|jiaruduibi">
                            <i class="sprite-compare"></i><em>对比</em>
                        </a>
                    </div>
                    <div class="right-btns">
                        <a class="report-btn" href="//jubao.jd.com/index.html?skuId=5167978" target="_blank" clstag="shangpin|keycount|product|jubao">举报</a>
                    </div>
                </div>

                <div class="purchase-op">
                    <a href="//smb.jd.com/?cpdad=1DLSUE" class="volume-purchase" target="_blank">企业购更优惠</a>
                </div>
            </div>
        </div>
        <div class="itemInfo-wrap">
            <div class="sku-name">
                <img src="/ymm/portal/images/logo/logo.png" alt="精选">/>
                ${goods.goods_name}                </div>
            <div class="news">
                <div class="item hide" id="p-ad" clstag="shangpin|keycount|product|slogana" data-hook="hide"></div>
                <div class="item hide" id="p-ad-phone" clstag="shangpin|keycount|product|sloganb" data-hook="hide"></div>
            </div>

            <%--<div class="activity-banner  J-seckill" id="banner-miaosha" style="display:none">--%>
                <%--<div class="activity-type">--%>
                    <%--<i class=""></i>--%>
                    <%--<strong>京东秒杀</strong>--%>
                <%--</div>--%>
                <%--<div class="activity-message">--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="summary summary-first">
                <div class="summary-price-wrap">
                    <div class="summary-price J-summary-price">
                        <div class="dt">秒 杀 价 </div>
                        <div class="dd">
                            <span class="p-price"><span>￥</span><span class="price J-p-5167978">${goods.promote_price}</span></span>
                            <span class="pricing">[<del id="page_origin_price">${goods.shop_price}</del>]</span>
                            <a class="notice J-notify-sale" data-type="1" data-sku="5167978" href="#none" clstag="shangpin|keycount|product|jiangjia_1">降价通知</a>
                            <!-- 高端品 限时特惠start，这段代码中的样式，是需要改的，请前端同学定义样式。还有用js代码，完成对应的需求 -->
                            <span class="J-xsth-sale" style="display: none;">
                                    <a href="#none" class="J-xsth-panel" clstag="shangpin|keycount|product|xianshitehui">限时特惠<s class="s-arrow">></s></a>
                                    <i class="sprite-question"></i>
                                </span>
                            <!-- 高端品 限时特惠end -->


                            <div class="plus-price J-plus-price hide" style="display: none;">
                                    <span class="p-price-plus">
                                        <span class="price J-p-p-5167978"></span>
                                    </span>
                                <img src="picture/59224a28n48552ed2.png" alt="plus" class="plus-icon">
                                <span class="text"><strong>PLUS会员</strong>专享价</span>
                                <a clstag="shangpin|keycount|product|whatisplus" href="//plus.jd.com/index" target="_blank">银牌及以上用户开通PLUS可享限时特惠 >></a>
                            </div>
                            <div class="user-price J-user-price hide" style="display: none;">
                                    <span class="p-price-user">
                                        <span class="price J-p-s-5167978"></span>
                                    </span>
                                <img src="picture/59535259n6eed475d.png" alt="sam's" class="sam-icon">

                                <span class="text">您购买此商品可享受专属价</span>

                                <i class="sprite-question"></i>
                            </div>
                        </div>
                    </div>

                    <!-- 分期用分区价格展示需求 start -->
                    <!-- 分期用分区价格展示需求 end -->

                    <div class="summary-info J-summary-info clearfix">
                        <div id="comment-count" class="comment-count item fl" clstag="shangpin|keycount|product|pingjiabtn_1">
                            <p class="comment">累计评价</p>
                            <a class="count J-comm-5167978" href="#comment">0</a>
                        </div>
                    </div>
                    <div id="summary-quan" class="li p-choose hide" clstag="shangpin|keycount|product|lingquan"></div>
                    <%--<div id="J-summary-top" class="summary-top" clstag="shangpin|keycount|product|cuxiao">--%>
                        <%--<div id="summary-promotion" class="summary-promotion" data-hook="hide">--%>
                            <%--<div class="dt">促&#x3000;&#x3000;销</div>--%>
                            <%--<div class="dd J-prom-wrap p-promotions-wrap">--%>
                                <%--<div class="p-promotions">--%>
                                    <%--<ins id="prom-mbuy" data-url="https://cd.jd.com/qrcode?skuId=5167978&location=3&isWeChatStock=2"></ins>--%>
                                    <%--<ins id="prom-car-gift"></ins>--%>
                                    <%--<ins id="prom-gift" clstag="shangpin|keycount|product|zengpin_1"></ins>--%>
                                    <%--<ins id="prom-fujian" clstag="shangpin|keycount|product|fujian_1"></ins>--%>
                                    <%--<ins id="prom"></ins>--%>
                                    <%--<ins id="prom-one"></ins>--%>
                                    <%--<ins id="prom-phone"></ins>--%>
                                    <%--<ins id="prom-phone-jjg"></ins>--%>
                                    <%--<ins id="prom-tips"></ins>--%>
                                    <%--<ins id="prom-quan"></ins>--%>
                                    <%--<div class="J-prom-more view-all-promotions" data-hook="hide">--%>
                                        <%--<span class="prom-sum">展开促销</span>--%>
                                        <%--<a href="#none" class="view-link"><i class="sprite-arr-close"></i></a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>
            <div class="summary p-choose-wrap">
                <div id="summary-support" class="li hide">
                    <div class="dt">增值业务</div>
                    <div class="dd">
                        <ul class="choose-support lh">
                        </ul>
                    </div>
                </div>
                <div class="summary-stock" clstag="shangpin|keycount|product|quyuxuanze_1" >
                    <div class="dt">配 送 至</div>
                    <div class="dd">
                        <div class="store clearfix">
                            <div id="stock-address" class="stock-address EDropdown" data-role="drop">
                                <div class="inner">
                                    <div data-drop="head" class="head">
                                        <span class="text" data-res>请选择</span>
                                        <span class="arrow arr-close"></span>
                                    </div>
                                    <div data-drop="content" class="content hide">
                                        <!--<div class="close" data-close>x</div>-->
                                        <dl class="address-used hide">
                                            <dt data-drop="head"><strong>常用地址</strong><span class="arrow"></span></dt>
                                            <dd class="stock-address-list J-common-address hide" clstag="shangpin|keycount|product|morendizhi_1"></dd>
                                        </dl>
                                        <div class="line hide"></div>
                                        <dl class="address-select clicked">
                                            <dt data-drop="head"><strong>选择新地址</strong><span class="arrow"></span></dt>
                                            <dd class="stock-address-list hide">
                                                <div class="address-tab J-address-tab ETab">
                                                    <ul class="tab">
                                                        <li data-tab="trigger" class="current" clstag="shangpin|keycount|product|yijidizhi">请选择</li>
                                                        <li data-tab="trigger" clstag="shangpin|keycount|product|erjidizhi">请选择</li>
                                                        <li data-tab="trigger" clstag="shangpin|keycount|product|sanjidizhi">请选择</li>
                                                        <li data-tab="trigger" style="display:none" clstag="shangpin|keycount|product|sijidizhi">请选择</li>
                                                    </ul>
                                                    <div class="tab-con">
                                                        <div data-tab="item" data-level="0" clstag="shangpin|keycount|product|yijidizhi_1">请选择</div>
                                                        <div data-tab="item" data-level="1" class="hide" clstag="shangpin|keycount|product|erjidizhi_1">请选择</div>
                                                        <div data-tab="item" data-level="2" class="hide" clstag="shangpin|keycount|product|sanjidizhi_1">请选择</div>
                                                        <div data-tab="item" data-level="3" class="hide" clstag="shangpin|keycount|product|sijidizhi_1">请选择</div>
                                                    </div>
                                                </div>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <div id="store-prompt" class="store-prompt"></div>
                            <div class="J-promise-icon promise-icon fl promise-icon-more" clstag="shangpin|keycount|product|promisefw_1">
                                <div class="title fl">支持</div>
                                <div class="icon-list fl">
                                    <ul></ul>
                                    <span class="clr"></span>
                                </div>
                            </div>
                            <div class="J-dcashDesc dcashDesc fl"></div>
                        </div>
                    </div>
                </div>
                <%--<div id="summary-supply" class="li" style="display:none">--%>
                    <%--<div class="dt">&#x3000;&#x3000;</div>--%>
                    <%--<div class="dd">--%>
                        <%--<div id="summary-service" class="summary-service"  clstag="shangpin|keycount|product|fuwu_1"></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div id="summary-weight" class="li" style="display:none">
                    <div class="dt">重&#x3000;&#x3000;量</div>
                    <div class="dd"></div>
                </div>

                <div class="summary-line"></div>
                <div id="choose-attrs"  >
                    <div id="choose-attr-1" class="li p-choose" data-type="颜色" data-idx="0">
                        <div class="dt">选择颜色</div>
                        <%--<div class="dd">--%>
                            <%--<div class="item  " data-sku="5168060" data-value="X6TI-S【i7 GTX1050 机械键盘】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-X6TI-S【i7 GTX1050 机械键盘】">--%>
                                    <%--<img data-img="1" src="picture/5a3b90d8n71e226e3.jpg" width="40" height="40" alt="X6TI-S【i7 GTX1050 机械键盘】"><i>X6TI-S【i7 GTX1050 机械键盘】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  selected  " data-sku="5167978" data-value="X6Ti-S【i7 GTX1050Ti机械键盘】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-X6Ti-S【i7 GTX1050Ti机械键盘】">--%>
                                    <%--<img data-img="1" src="picture/5a3b90adn6555b5d5.jpg" width="40" height="40" alt="X6Ti-S【i7 GTX1050Ti机械键盘】"><i>X6Ti-S【i7 GTX1050Ti机械键盘】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  " data-sku="3773815" data-value="X6TI-S【GTX1050Ti i7进阶版】黑">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-X6TI-S【GTX1050Ti i7进阶版】黑">--%>
                                    <%--<img data-img="1" src="picture/5a260351nf23ecf57.jpg" width="40" height="40" alt="X6TI-S【GTX1050Ti i7进阶版】黑"><i>X6TI-S【GTX1050Ti i7进阶版】黑</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  " data-sku="4243538" data-value="X6Ti-S【i7 GTX1050Ti进阶版】银">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-X6Ti-S【i7 GTX1050Ti进阶版】银">--%>
                                    <%--<img data-img="1" src="picture/5a25f7d7nbfaa139c.jpg" width="40" height="40" alt="X6Ti-S【i7 GTX1050Ti进阶版】银"><i>X6Ti-S【i7 GTX1050Ti进阶版】银</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  " data-sku="4365892" data-value="X6TI-S【GTX1050 i7 高玩版】黑">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-X6TI-S【GTX1050 i7 高玩版】黑">--%>
                                    <%--<img data-img="1" src="picture/5a260368n8fba0269.jpg" width="40" height="40" alt="X6TI-S【GTX1050 i7 高玩版】黑"><i>X6TI-S【GTX1050 i7 高玩版】黑</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  " data-sku="4365894" data-value="X6TI-S【GTX1050 i7 高玩版】银">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-X6TI-S【GTX1050 i7 高玩版】银">--%>
                                    <%--<img data-img="1" src="picture/5a25f811n1b67cf82.jpg" width="40" height="40" alt="X6TI-S【GTX1050 i7 高玩版】银"><i>X6TI-S【GTX1050 i7 高玩版】银</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  " data-sku="6439537" data-value="【新品】72%色域 i7 GTX1050Ti">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-【新品】72%色域 i7 GTX1050Ti">--%>
                                    <%--<img data-img="1" src="picture/5a715859nb5976b9d.jpg" width="40" height="40" alt="【新品】72%色域 i7 GTX1050Ti"><i>【新品】72%色域 i7 GTX1050Ti</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <span style="background: red">由于货源稀缺，并无其他配色！</span>
                    </div>
                    <%--<div id="choose-results" class="li" style="display:none"><div class="dt">已选择</div><div class="dd"></div></div>--%>
                </div>


                <div id="choose-luodipei" class="choose-luodipei li" style="display:none">
                    <div class="dt">送装服务</div>
                    <div class="dd"></div>
                </div>
                <div id="choose-type" class="li" data-hook="hide" style="display:none;">
                    <div class="dt">购买方式</div>
                    <div class="dd clearfix"> </div>
                </div>
                <div id="choose-type-hy" class="li" data-hook="hide" style="display:none;">
                    <div class="dt">优惠类型</div>
                    <div class="dd clearfix"> </div>
                </div>
                <div id="choose-type-suit" class="li" data-hook="hide" style="display:none;">
                    <div class="dt">优惠套餐</div>
                    <div class="dd clearfix">
                        <div class="item J-suit-trigger" clstag="shangpin|keycount|product|taocanleixing">
                            <i class="sprite-selected"></i>
                            <a href="#none" title="选择套餐与资费">选择套餐与资费</a>
                        </div>
                        <div class="fl" style="padding-top:5px;">
                            <span class="J-suit-tips hide">请选择套餐内容</span>
                            <span class="J-suit-resel J-suit-trigger hl_blue hide" href="#none">重选</span>
                        </div>
                    </div>
                </div>
                <div id="btype-tip" data-hook="hide" style="display:none;">&#x3000;您选择的地区暂不支持合约机销售！</div>
                <div id="choose-suits" class="li choose-suits" style="display:none">
                    <div class="dt">套&#x3000;&#x3000;装</div>
                    <div class="dd clearfix"></div>
                </div>
                <div id="choose-gift" class="choose-gift li"  style="display: none;">
                    <div class="dt">搭配赠品</div>
                    <div class="dd clearfix">
                        <div class="gift J-gift" clstag="shangpin|keycount|product|dapeizengpin">
                            <i class="sprite-gift J-popup"></i><span class="gift-tips">选择搭配赠品(共<em>0</em>个)</span>
                        </div>
                        <!--choosed-->
                        <div class="J-gift-selected hide">
                            <div class="gift choosed J-gift-choosed"></div>
                            <a href="#none" class="gift-modify J-popup" clstag="shangpin|keycount|product|zengpin-genggai">更改</a>
                        </div>
                    </div>
                </div>

                <div id="choose-service" class="li" data-hook="hide" style="display:none;">
                    <div class="dt" data-yb="new_yb_server"></div>
                    <div class="dd"></div>
                </div>
                <%--<div id="choose-baitiao" class="li choose-baitiao" style="display:none"></div>--%>
                <div id="choose-jincai" class="li choose-jincai" style="display:none">
                    <div class="dt">企业金采</div>
                    <div class="dd">
                        <div class="jincai-list J-jincai-list">
                            <div class="item">
                                <a href="#none">先采购，后付款</a>
                            </div>
                            <div class="bt-info-tips">
                                <a class="J-bt-tips question icon fl" href="#none">　</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="summary-line"></div>
                <div id="choose-btns" class="choose-btns clearfix" >
                    <div class="choose-amount "  clstag="shangpin|keycount|product|goumaishuliang_1">
                        <div class="wrap-input">
                            <input class="text buy-num" onkeyup="setAmount.modify('#buy-num');" id="buy-num" value="1"  data-max="200"/>
                            <a class="btn-reduce" onclick="setAmount.reduce('#buy-num')" href="#none">-</a>
                            <a class="btn-add" onclick="setAmount.add('#buy-num')" href="#none">+</a>
                        </div>
                    </div>
                    <!--<a id="choose-btn-gift" class="btn-special1 btn-lg" style="display:none;" href="//cart.gift.jd.com/cart/addGiftToCart.action?pid=5167978&pcount=1&ptype=1" class="btn-gift" clstag="shangpin|keycount|product|选作礼物购买_1"><b></b>选作礼物购买</a>-->

                    <%--<a href="#none" id="btn-heyue" class="btn-special1 btn-lg" style="display:none;" clstag="shangpin|keycount|product|选择号码和套餐_1">选择号码和套餐</a>--%>
                    <a href="javascript:void(0);" onclick="toCart()" id="InitCartUrl" class="btn-special1 btn-lg "  clstag="shangpin|keycount|product|加入购物车_1">加入购物车</a>
                    <%--<a href="#none" id="btn-baitiao" class="btn-special2 btn-lg" style="display:none;" clstag="shangpin|keycount|product|dabaitiaobutton_670_671_1105">打白条</a>--%>
                    <%--<a href="//jc.jd.com" target="_blank" id="btn-jincai" class="btn-special2 btn-lg" style="display: none;" clstag="shangpin|keycount|product|jincai_1">使用金采</a>--%>

                    <%--<a href="#none" id="btn-onkeybuy" class="btn-special2 btn-lg" style="display:none;" clstag="shangpin|keycount|product|easybuy_1">一键购</a>--%>

                    <a href="#none" id="btn-notify" class="J-notify-stock btn-special3 btn-lg notify-stock" style="display:none;" data-type="2" data-sku="5167978" clstag="shangpin|keycount|product|daohuo_1">到货通知</a>
                </div>
                <div id="local-tips" class="summary-tips hide">
                    <div class="dt">本地活动</div>
                    <div class="dd">
                        <ol class="tips-list clearfix"></ol>
                    </div>
                </div>
                <div id="summary-tips" class="summary-tips" clstag="shangpin|keycount|product|wenxintishi_1" style="display: none">
                    <div class="dt">温馨提示</div>
                    <div class="dd">
                        <ol class="tips-list clearfix">
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="w">
    <div class="m m-content hide" id="similar">
        <div class="mt">
            <h3 class="fl">为你推荐</h3>
            <div class="extra">
                <div class="page-num"></div>
            </div>
        </div>
        <div class="mc">
            <a href="#none" class="arrow-prev disabled"><i class="sprite-arrow-prev"></i></a>
            <div class="list clearfix"></div>
            <a href="#none" class="arrow-next disabled"><i class="sprite-arrow-next"></i></a>
        </div>
    </div>
</div>




<div class="w">
    <div id="shopRecSuit" class="ETab hide" >
        <div class="tab-main large">
            <ul>
                <li data-tab="trigger" class="J-shopRec-trigger shopRec-trigger current hide" data-name="店长推荐">店长推荐</li>
            </ul>
        </div>
        <div class="tab-con clearfix">
            <div class="J-shopRec-content shopRec-content hide" data-tab="item" clstag="shangpin|keycount|product|dianzhangtuijian_2">
            </div>
        </div>
    </div>
</div>

<div class="w">
    <div class="aside">
        <div class="m m-aside popbox" id="popbox">
            <div class="popbox-inner" data-fixed="pro-detail-hd-fixed">
                <div class="mt">
                    <%--<h3>--%>
                        <%--<a href="//mechrevo.jd.com" target="_blank" title="机械革命京东自营官方旗舰店" clstag="shangpin|keycount|product|dianpuname2_机械革命京东自营官方旗舰店">机械革命京东自营官方旗舰店</a>--%>
                    <%--</h3>--%>
                    <div class="im-wrap clearfix">
                        <a class="J-popbox-im im" title="联系供应商" data-code="1" data-name="联系供应商" data-seller="联系供应商" data-domain="chat.jd.com" clstag="shangpin|keycount|product|dongdong2_1"><i
                                class="sprite-im"></i></a>
                    </div>
                    <span class="arrow"></span>
                </div>
                <div class="mc">
                    <div class="pop-score-summary">
                        <div class="btns">
                            <a href="//mechrevo.jd.com" target="_blank" class="btn-def enter-shop J-enter-shop" clstag="shangpin|keycount|product|jindian2">
                                <i class="sprite-enter"></i>
                                <span>进店逛逛</span>
                            </a>
                            <a href="#none" class="btn-def follow-shop J-follow-shop" data-vid="1000000948" clstag="shangpin|keycount|product|guanzhu2">
                                <i class="sprite-follow"> </i>
                                <span>关注店铺</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="m m-aside hide" id="view-buy" clstag="shangpin|keycount|product|darenxuangou_1"></div>

        <div class="m m-aside" id="view-view" clstag="shangpin|keycount|product|seemore_1"></div>
        <%--<div class="m m-aside" id="rank">--%>
            <%--&lt;%&ndash;<div class="mt">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h3>游戏本热销榜</h3>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--<div class="mc no-padding">--%>
                <%--<div class="ETab">--%>
                    <%--<div class="tab-main medium">--%>
                        <%--<ul>--%>
                            <%--<li data-tab="trigger" class="current">同价位</li>--%>
                            <%--<li data-tab="trigger">同品牌</li>--%>
                            <%--<li data-tab="trigger">总排行</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                    <%--<div class="tab-con">--%>
                        <%--<div data-tab="item">--%>
                            <%--<ul class="plist-1" clstag="shangpin|keycount|product|rexiaobang_price_1105">--%>
                                <%--<li class="fore1" data-sku="4335674">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4335674.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img14.360buyimg.com/n5/s85x85_jfs/t11629/191/1276989832/225318/b467b501/59ffd116N3b2043c6.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4335674.html" target="_blank" title='联想拯救者'>联想拯救者</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4335674"></strong></div>--%>
                                    <%--<div class="p-num">1</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore2" data-sku="4274505">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4274505.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img10.360buyimg.com/n5/s85x85_jfs/t11047/282/2202572883/127852/5bc71723/5a13836eN42423a13.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4274505.html" target="_blank" title='惠普暗影精灵III代'>惠普暗影精灵III代</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4274505"></strong></div>--%>
                                    <%--<div class="p-num">2</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore3" data-sku="3704564">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/3704564.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img14.360buyimg.com/n5/s85x85_jfs/t16141/36/2196856485/249877/66c01372/5a979e16N2a61d95a.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/3704564.html" target="_blank" title='华硕FX60VM'>华硕FX60VM</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-3704564"></strong></div>--%>
                                    <%--<div class="p-num">3</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore4" data-sku="4707322">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4707322.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img12.360buyimg.com/n5/s85x85_jfs/t12790/60/542896272/319777/f266f597/5a0e5697Nfac9650d.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4707322.html" target="_blank" title='戴尔灵越游匣15PR-5545B'>戴尔灵越游匣15PR-5545B</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4707322"></strong></div>--%>
                                    <%--<div class="p-num">4</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore5" data-sku="4237832">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4237832.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img12.360buyimg.com/n5/s85x85_jfs/t13456/165/2500246230/180894/e479cebe/5a41c663Nf48ac946.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4237832.html" target="_blank" title='微星GL62M 7RD-223CN'>微星GL62M 7RD-223CN</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4237832"></strong></div>--%>
                                    <%--<div class="p-num">5</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore6" data-sku="3818645">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/3818645.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img10.360buyimg.com/n5/s85x85_jfs/t17848/63/476499298/196830/bfb66927/5a8f93bfN8bebe6ee.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/3818645.html" target="_blank" title='雷神911'>雷神911</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-3818645"></strong></div>--%>
                                    <%--<div class="p-num">6</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore7" data-sku="4357281">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4357281.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img11.360buyimg.com/n5/s85x85_jfs/t14668/85/1075823324/247511/e636d30b/5a4495c9N06567faa.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4357281.html" target="_blank" title='神舟战神Z7-KP7GT'>神舟战神Z7-KP7GT</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4357281"></strong></div>--%>
                                    <%--<div class="p-num">7</div>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                        <%--<div data-tab="item" class="hide">--%>
                        <%--</div>--%>
                        <%--<div data-tab="item" class="hide">--%>
                            <%--<ul class="plist-1" clstag="shangpin|keycount|product|rexiaobang_all_1105">--%>
                                <%--<li class="fore1" data-sku="5512975">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/5512975.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img10.360buyimg.com/n5/s85x85_jfs/t13519/289/570849623/290501/37fcc600/5a0e9a16N55e43e87.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/5512975.html" target="_blank" title='联想拯救者R720'>联想拯救者R720</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-5512975"></strong></div>--%>
                                    <%--<div class="p-num">1</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore2" data-sku="4824733">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4824733.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img13.360buyimg.com/n5/s85x85_jfs/t12472/179/736139380/319777/f266f597/5a128bf6N079a87ba.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4824733.html" target="_blank" title='戴尔灵越游匣15PR-6748B'>戴尔灵越游匣15PR-6748B</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4824733"></strong></div>--%>
                                    <%--<div class="p-num">2</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore3" data-sku="4274569">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4274569.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img14.360buyimg.com/n5/s85x85_jfs/t18109/275/1025166053/231850/f0cb771d/5ab64d74N73055b25.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4274569.html" target="_blank" title='惠普暗影精灵III代'>惠普暗影精灵III代</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4274569"></strong></div>--%>
                                    <%--<div class="p-num">3</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore4" data-sku="5523485">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/5523485.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img10.360buyimg.com/n5/s85x85_jfs/t17968/47/909279496/279731/2d701b44/5ab0b51fN7db99a1f.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/5523485.html" target="_blank" title='华硕FX63VD'>华硕FX63VD</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-5523485"></strong></div>--%>
                                    <%--<div class="p-num">4</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore5" data-sku="5288412">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/5288412.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img12.360buyimg.com/n5/s85x85_jfs/t15451/89/183172450/315898/c8b9dd79/5a26054dN30e65984.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/5288412.html" target="_blank" title='机械革命深海泰坦X1'>机械革命深海泰坦X1</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-5288412"></strong></div>--%>
                                    <%--<div class="p-num">5</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore6" data-sku="4237832">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4237832.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img12.360buyimg.com/n5/s85x85_jfs/t13456/165/2500246230/180894/e479cebe/5a41c663Nf48ac946.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4237832.html" target="_blank" title='微星GL62M 7RD-223CN'>微星GL62M 7RD-223CN</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4237832"></strong></div>--%>
                                    <%--<div class="p-num">6</div>--%>
                                <%--</li>--%>
                                <%--<li class="fore7" data-sku="4335706">--%>
                                    <%--<div class="p-img"><a href="//item.jd.com/4335706.html" target="_blank"><img data-img="1" height="85" width="85"  data-lazyload="//img11.360buyimg.com/n5/s85x85_jfs/t14422/327/2259374554/195803/bb3bc83c/5a8f94beN59468ba3.jpg"/></a></div>--%>
                                    <%--<div class="p-name"><a href="//item.jd.com/4335706.html" target="_blank" title='雷神911'>雷神911</a></div>--%>
                                    <%--<div class="p-price"><strong class="J-p-4335706"></strong></div>--%>
                                    <%--<div class="p-num">7</div>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div id="miaozhen7886" class="m m-aside" clstag="shangpin|keycount|product|ad_1"></div>
        <div id="miaozhen10767" class="m m-aside" clstag="shangpin|keycount|product|ad_1"></div>
        <div id="ad_market_1" class="m m-aside"></div>
    </div>
    <div class="detail">
        <div class="ETab" id="detail">
            <div class="tab-main large" data-fixed="pro-detail-hd-fixed">
                <ul>
                    <li data-tab="trigger" data-anchor="#detail" class="current" clstag="shangpin|keycount|product|shangpinjieshao_1">商品介绍</li>
                    <li data-tab="trigger" data-anchor="#detail" clstag="shangpin|keycount|product|pcanshutab">规格与包装</li>
                    <li data-tab="trigger" data-anchor="#detail" clstag="shangpin|keycount|product|ershouzhijian" style="display:none">质检报告</li>
                    <li data-tab="trigger" data-anchor="#detail" clstag="shangpin|keycount|product|psaleservice">售后保障</li>
                    <%--<li data-tab="trigger" data-offset="38" data-anchor="#comment" clstag="shangpin|keycount|product|shangpinpingjia_1">商品评价<s></s></li>--%>
                    <li data-tab="trigger" data-offset="38" data-anchor="#club" clstag="shangpin|keycount|product|shequ">
                        与组长互动                    </li>
                    <li style="display:none" data-tab="trigger" data-offset="38" data-anchor="#try-holder" clstag="shangpin|keycount|product|try-entry">ymm试用<sup>new<b>◤</b></sup></li>
                </ul>
                <div class="extra">
                    <div class="item addcart-mini">
                        <div class="J-addcart-mini EDropdown">
                            <div class="inner">
                                <%--<div class="head" data-drop="head">--%>
                                    <%--<a id="InitCartUrl-mini" class="btn-primary" href="//cart.jd.com/gate.action?pid=5167978&pcount=1&ptype=1" clstag="shangpin|keycount|product|gouwuchexuanfu_1">加入购物车</a>--%>
                                <%--</div>--%>
                                <div class="content hide" data-drop="content">
                                    <div class="mini-product-info">
                                        <div class="p-img fl">
                                            <img src="picture/5a3b90adn6555b5d5.jpg" data-img="1" width="100" height="100" />
                                        </div>
                                        <div class="p-info lh">
                                            <div class="p-name">${goods.goods_name}</div>
                                            <div class="p-price">
                                                <strong class="J-p-5167978"></strong> <span>X <span class="J-buy-num"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-con">
                <div data-tab="item">
                    <div class="p-parameter">
                        <ul id="parameter-brand" class="p-parameter-list">
                            <li title='机械革命（MECHREVO）'>品牌： <a href='//list.jd.com/list.html?cat=670,671,1105&ev=exbrand_54605' clstag='shangpin|keycount|product|pinpai_1' target='_blank'>${goods.goods_name}</a>
                                <!--a href="#none" class="follow-brand btn-def" clstag='shangpin|keycount|product|guanzhupinpai'><b>&hearts;</b>关注 -->
                            </li>
                        </ul>
                        <ul class="parameter2 p-parameter-list">
                            <li title='单个商品'>商品名称：${goods.goods_name}</li>
                            <li title='5167978'>商品编号：${goods.goods_id}</li>
                            <%--<li title='4.54kg'>商品毛重：4.54kg</li>
                            <li title='中国大陆'>商品产地：中国大陆</li>--%>
                            <li title='Windows 10'>系统：Windows 10</li>
                            <li title='全高清屏（1920×1080）'>分辨率：全高清屏（1920×1080）</li>
                            <%--<li title='20.0mm以上'>厚度：20.0mm以上</li>--%>
                            <%--<li title='8G'>内存容量：8G</li>--%>
                            <%--<li title='GTX1050Ti'>显卡型号：GTX1050Ti</li>--%>
                            <%--<li title='吃鸡性能，发烧级'>游戏性能：吃鸡性能，发烧级</li>--%>
                            <%--<li title='小于5小时'>待机时长：小于5小时</li>--%>
                            <%--<li title='Intel i7标准电压版'>处理器：Intel i7标准电压版</li>
                            <li title='机械键盘，背光键盘'>特性：机械键盘，背光键盘</li>--%>
                            <li title='机械革命 - 深海泰坦'>系列：${goods.goods_name}</li>
                            <li title='大于2.5KG'>裸机重量：大于2.5KG</li>
                            <li title='高性能游戏独立显卡'>显卡类别：高性能游戏独立显卡</li>
                            <li title='4G'>显存容量：4G</li>
                            <%-- <li title='128G+1T'>硬盘容量：128G+1T</li>
                            <li title='15.6英寸'>屏幕尺寸：${goods.goods_sn}英寸</li>--%>
                        </ul>
                        <p class="more-par">
                            <a href="#product-detail" class="J-more-param">更多参数<s class="txt-arr">&gt;&gt;</s></a>
                        </p>
                    </div>
                    <div id="quality-life" class="quality-life" style="display:none" clstag="shangpin|keycount|product|pinzhishenghuo">
                        <div class="q-logo">
                            <img src="picture/56ca6792n64e5eafc.png" alt="品质生活"/>
                        </div>
                        <ul class="quality-icon">
                            <li class="J-ql-iframe ql-ico-1" data-type="1" data-text="质量承诺" style="display:none" data-title="质量承诺" clstag="shangpin|keycount|product|zhijianchengnuo">
                                <a href="#none"><i></i><span>质量承诺</span></a>
                            </li>
                            <li class="ql-ico-5" data-type="5" data-text="耐久性标签" style="display:none" clstag="shangpin|keycount|product|naijiuxingbiaoqian">
                                <a href="#none"><i></i><span>耐久性标签</span></a>
                            </li>
                            <li class="ql-ico-3" data-type="3" data-text="吊牌" style="display:none" clstag="shangpin|keycount|product|diaopai">
                                <a href="#none"><i></i><span>吊牌</span></a>
                            </li>
                            <li class="ql-ico-4" data-type="4" data-text="质检报告" style="display:none" clstag="shangpin|keycount|product|zhijianbaogao">
                                <a href="#none"><i></i><span>质检报告</span></a>
                            </li>
                            <li class="ql-ico-2" data-type="2" data-text="CCC证书" style="display:none" clstag="shangpin|keycount|product|3czhengshu">
                                <a href="#none"><i></i><span>CCC证书</span></a>
                            </li>
                            <li class="fresh-ico-1" data-text="实时温控" data-type="v1" style="display:none" clstag="shangpin|keycount|product|shishiwenkong">
                                <a href="#none"><i></i><span class="J-fresh-wd fresh-wd"></span><span>实时温控</span></a>
                            </li>
                            <li class="fresh-ico-2" data-text="检验报告" data-type="v2" style="display:none" clstag="shangpin|keycount|product|jiancebaogao">
                                <a href="#none"><i></i><span>检验报告</span></a>
                            </li>
                        </ul>
                    </div>
                    <div id="suyuan-video"></div>
                    <div id="J-detail-banner"></div>                                                            <div class="detail-content clearfix" data-name="z-have-detail-nav">
                    <div class="detail-content-wrap">

                        <div class="detail-content-item">
                            <div id="activity_header" clstag="shangpin|keycount|product|activityheader"><div style="text-align: center;"><div style="text-align: center;"><img data-lazyload="//img11.360buyimg.com/cms/jfs/t11749/118/23009709/124736/d66a5416/59e5d7c6N3ae36b67.gif" width="750" height="200" usemap="#Map_Others" border="0" alt="" /><map name="Map_Others" id="Map_Others">  <area shape="rect" coords="5,5,371,195" href="//mall.jd.com/index-1000007482.html" target="_blank" /></map></div></div></div>
                            <div id="J-detail-content">
                                <div class="loading-style1"><b></b>商品介绍加载中...</div>                                </div><!-- #J-detail-content -->
                            <div id="activity_footer" clstag="shangpin|keycount|product|activityfooter"></div>
                        </div>
                    </div>
                    <div id="J-detail-nav" class="detail-content-nav">
                        <ul id="J-detail-content-tab" class="detail-content-tab"></ul>
                    </div>
                </div>
                    <div class="clb"></div>
                </div>

                <div data-tab="item" class="hide">
                    <!--质检报告-->
                </div>
                <div data-tab="item" class="hide">
                    <!--售后保障 家用电器展示一个图文的字段 -->
                </div>
                <div data-tab="item" class="hide">
                    <!--商品评价-->
                </div>
                <div data-tab="item" class="hide">
                    <!--手机社区 or 达人测评-->
                </div>
                <div data-tab="item" class="hide"></div>
            </div>
        </div>

        <div class="m m-content guarantee" id="guarantee">
            <div class="mt">
                <h3>售后保障</h3>
            </div>
            <div class="mc">
                <div class="item-detail item-detail-copyright">
                    <div class="serve-agree-bd">
                        <dl>


                            <dt>
                                <i class="goods"></i>
                                <strong>厂家服务</strong>
                            </dt>
                            <dd>
                                本产品全国联保，享受三包服务，质保期为：二年质保<br/>
                                您可以查询本品牌在各地售后服务中心的联系方式，<a target='_blank' href='http://www.mechrevo.com'>请点击这儿查询......</a><br/><br/>
                                品牌官方网站：<a target='_blank' href='http://www.mechrevo.com'>http://www.mechrevo.com</a><br/>
                                售后服务电话：400-990-5898                                </dd>

                            <dt>
                                <i class="goods"></i>
                                <strong>ymm承诺</strong>
                            </dt>
                            <dd>
                                ymm平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！<br />
                                注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                            </dd>

                            <dt>
                                <i class="goods"></i><strong>
                                正品行货             </strong>
                            </dt>
                            <dd>ymm商城向您保证所售商品均为正品行货，ymm自营商品开具机打发票或电子发票。</dd>
                            <dt><i class="unprofor"></i><strong>全国联保</strong></dt>
                            <dd>
                                凭质保证书及ymm商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由ymm联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。ymm商城还为您提供具有竞争力的商品价格和<a href='//help.jd.com/help/question-892.html' target='_blank'>运费政策</a>，请您放心购买！
                                <br/><br/>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                            </dd>
                            <dt><i class="no-worries"></i><strong>无忧退换货</strong></dt>
                            <dd class="no-worries-text">
                                客户购买ymm自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）
                            </dd>
                        </dl>
                    </div>
                    <div id="state">
                        <strong>权利声明：</strong><br />ymm上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是ymm重要的经营资源，未经许可，禁止非法转载使用。
                        <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
                        <br />
                        <strong>价格说明：</strong><br />
                        <p><b>ymm价：</b>ymm价为商品的销售价，是您最终决定是否购买商品的依据。</p>
                        <p><b>划线价：</b>商品展示的划横线价格为参考价，并非原价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在ymm平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
                        <p><b>折扣：</b>如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。</p>
                        <p><b>异常问题：</b>商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。</p>

                        <br />
                        <strong>能效标识说明：</strong><br />
                        <p>根据国家相关能效标识法规和标准的要求，京东自营在售商品的能效标识图样，将会逐步替换为新版能源效率标识贴；受能效标识标准变化影响，部分产品的新版和旧版能效标识，在能效等级、测试值等方面会有差异，但产品实际性能完全一样，并不影响购买和使用，加贴新版或旧版能效标识的商品会随机发放，请您放心购买；如有疑问，请在购买前通过咚咚或来电咨询。</p>
                    </div>
                </div>
            </div>
        </div>
        <%--<div style="display: none"><a href="//cps.jd.com">销售联盟</a><a href="//gongyi.jd.com">京东公益</a><a href="//club.jd.com/links.aspx">友情链接</a>--%>
            <%--<div id="hidconsultations"><a href="//club.jd.com/consultation/5167978-503497397.html">能吃鸡么？</a> <span>您好！可以，感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503473884.html">请问打开网页字体模糊怎么设置</a> <span>您好！可以设置下哦，方法如下：鼠标右键--显示设置--高级显示设置--文本和其他项目大小的调整的高级选项--设置自定义缩放级别--选择100%---确定----应用，就可以了。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503336146.html">可以外接显卡吗？</a> <span>您好！不支持。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503301046.html">这款屏幕到底是不是72色域的</a> <span>您好！详询店铺客服了解咨询，感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503248002.html">x1和x6tis对比哪个好？区别是？</a> <span>您好！这是两个系列，每个系列里面都有很多款式，如需咨询区别，请提供给客服具体链接，帮您对比哦。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503178978.html">可以更换显卡吗？</a> <span>您好！显卡是焊接主板的，无法支持更换升级。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503131785.html">色域多少</a> <span>您好！详询店铺客服为您解答。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503119434.html">平面设计，视频编辑可以用吗</a> <span>您好！可以支持设计，作图，游戏等方面。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-503052812.html">屏幕有没有给贴膜，有没有键盘保护套</a> <span>您好！出售的均为裸机没有配件配赠的，建议您单独选购。感谢您对京东的支持！祝您购物愉快！</span> <a href="//club.jd.com/consultation/5167978-502954626.html">你们买的时候多少钱</a> <span>您好！价格以京东页面显示为准，感谢您对京东的支持！祝您购物愉快！</span> </div>--%>
            <%--<div id="hidcomment">--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-12-03</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_bd677303-e483-4956-96f1-bc35807c4292_1.html">到货马上拆，不得不说，京东速度真的快，昨晚我从9点看电脑看到11点，结果还是选择了机械革命，拿到手，果然和我理想一样，不过也就开个机，啥也没干。哈哈。果断好评。没毛病老铁，先用再说。</a></strong><span class="star sa5"></span><span class="date-comment">2017-12-03 11:55:03</span></div><div class="comment-content">使用心得：到货马上拆，不得不说，京东速度真的快，昨晚我从9点看电脑看到11点，结果还是选择了机械革命，拿到手，果然和我理想一样，不过也就开个机，啥也没干。哈哈。果断好评。没毛病老铁，先用再说。</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-12-31</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_318a1227-eb8f-4355-9867-22a8c5f7c6cb_1.html">对比了几个品牌的游戏本 机械革命在*这个价位无论是在配置或颜值上 都是挺不错的 京东的物流一如既往地快 检查了屏幕也没有评论提到的坏点现象 马上下了个FF14 玩了大半天本子一点发热的迹象都没有 散热声音也不大 一键制冷按键估计很难有用武之地～从各方面来说完全高出了我之前的预期 给我们的国产品牌点赞！</a></strong><span class="star sa5"></span><span class="date-comment">2017-12-31 18:56:01</span></div><div class="comment-content">使用心得：对比了几个品牌的游戏本 机械革命在*这个价位无论是在配置或颜值上 都是挺不错的 京东的物流一如既往地快 检查了屏幕也没有评论提到的坏点现象 马上下了个FF14 玩了大半天本子一点发热的迹象都没有 散热声音也不大 一键制冷按键估计很难有用武之地～从各方面来说完全高出了我之前的预期 给我们的国产品牌点赞！</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-11-15</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_7eb24ff8-5ab1-422a-8f4f-3d48f289d32a_1.html">电脑很不错  性价比很高  不过做工有些不敢恭维  屏幕有些漏光 总体不错</a></strong><span class="star sa5"></span><span class="date-comment">2017-11-15 10:17:04</span></div><div class="comment-content">使用心得：电脑很不错  性价比很高  不过做工有些不敢恭维  屏幕有些漏光 总体不错</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2018-01-25</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_30f6207e-4ece-45ad-9430-48d9811941da_1.html">准备买机械革命 那个i7   1060的机子，*元，本来都要要下单了，后来一想不值当的，我得初心就是能玩cf就行，不玩吃鸡。在也就是玩个植物大战僵尸，爱看个电影，主要还是为了做文档。所以还是买了这款（这也很暴殄天物了），又因为我真不喜欢那个红黑配色（红黑配色好像是**吧），所以选择了黑金（本人最爱金色和黑色秒杀才*），确实很好看！！！真的很好看！美爆了。再说说使用的感觉吧，感觉现在自己装系统好简单，而且还支持语音，像苹果的siri 。键盘回弹超级有质感，我也没注意是不是机械键盘，我对那个也不是很看中，要说我最喜欢这个电脑的事它的键盘背光，真的屌爆了，打开myapp 将键盘背光调到多色，真的很美。将win10选成win7桌面的时候我感动的都快哭了，因为我真的不喜欢win10。鲁大师跑分21w多也就很可以了。因为我用这个电脑就是浏览网页和做文档是主要任务，打游戏就是偶尔小憩。真的很喜欢！总结一下，外观配色，质感好。键盘回弹手感好，背光美爆了。屏幕显示很清晰。再说一下缺点，触摸板质感廉价，应该是装配问题。还有就是电池太小了。再有一个就是可不可以给个电脑包啊！！！！！</a></strong><span class="star sa5"></span><span class="date-comment">2018-01-25 23:02:19</span></div><div class="comment-content">使用心得：准备买机械革命 那个i7   1060的机子，*元，本来都要要下单了，后来一想不值当的，我得初心就是能玩cf就行，不玩吃鸡。在也就是玩个植物大战僵尸，爱看个电影，主要还是为了做文档。所以还是买了这款（这也很暴殄天物了），又因为我真不喜欢那个红黑配色（红黑配色好像是**吧），所以选择了黑金（本人最爱金色和黑色秒杀才*），确实很好看！！！真的很好看！美爆了。再说说使用的感觉吧，感觉现在自己装系统好简单，而且还支持语音，像苹果的siri 。键盘回弹超级有质感，我也没注意是不是机械键盘，我对那个也不是很看中，要说我最喜欢这个电脑的事它的键盘背光，真的屌爆了，打开myapp 将键盘背光调到多色，真的很美。将win10选成win7桌面的时候我感动的都快哭了，因为我真的不喜欢win10。鲁大师跑分21w多也就很可以了。因为我用这个电脑就是浏览网页和做文档是主要任务，打游戏就是偶尔小憩。真的很喜欢！总结一下，外观配色，质感好。键盘回弹手感好，背光美爆了。屏幕显示很清晰。再说一下缺点，触摸板质感廉价，应该是装配问题。还有就是电池太小了。再有一个就是可不可以给个电脑包啊！！！！！</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-06-22</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_451a3008-732e-409f-a6d4-14dd5782a276_1.html">关注这台电脑半年了，主要被72色域的屏幕吸引，1050ti显卡的笔记本，除了这台，也就G4560那台是这个屏幕了，屏幕是京东方的。不过女同学是小白，只认i7处理器，就买了这台。货到之后，感觉包装很漂亮，可惜就是没有送铁牌和杀人游戏的卡片。电脑的A面是金属的，很有质感，可惜C面是塑料的，稍显廉价。如果不是给女同学用，估计就买黑色的了。机器的背光键盘很漂亮，键帽稍微有点松。之后鲁大师跑分有21万多，由于没有屏蔽核显，CPU跑分偏低，不过令人大跌眼镜的是总分还有21万多，只比我的暗影2plus低1万。果然是娱乐鲁大师！之后烤鸡测试CPU有降频，之后解锁TDP之后，开启强冷模式，可以50w满载运行！看来这台机器的散热你是完全没有问题！对这台电脑的性能很满意，接下来就看售后了！如果机械革命的售后能像联想惠普那样，完全可以跻身一线品牌！?</a></strong><span class="star sa5"></span><span class="date-comment">2017-06-22 17:16:20</span></div><div class="comment-content">使用心得：关注这台电脑半年了，主要被72色域的屏幕吸引，1050ti显卡的笔记本，除了这台，也就G4560那台是这个屏幕了，屏幕是京东方的。不过女同学是小白，只认i7处理器，就买了这台。货到之后，感觉包装很漂亮，可惜就是没有送铁牌和杀人游戏的卡片。电脑的A面是金属的，很有质感，可惜C面是塑料的，稍显廉价。如果不是给女同学用，估计就买黑色的了。机器的背光键盘很漂亮，键帽稍微有点松。之后鲁大师跑分有21万多，由于没有屏蔽核显，CPU跑分偏低，不过令人大跌眼镜的是总分还有21万多，只比我的暗影2plus低1万。果然是娱乐鲁大师！之后烤鸡测试CPU有降频，之后解锁TDP之后，开启强冷模式，可以50w满载运行！看来这台机器的散热你是完全没有问题！对这台电脑的性能很满意，接下来就看售后了！如果机械革命的售后能像联想惠普那样，完全可以跻身一线品牌！?</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2018-02-20</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_2a32bc1c-e61f-41a8-8f38-53dfe0637083_1.html">值得入手！发货速度超快。玩了几天才来评价，吃鸡，大型游戏随便玩！</a></strong><span class="star sa5"></span><span class="date-comment">2018-02-20 13:48:09</span></div><div class="comment-content">使用心得：值得入手！发货速度超快。玩了几天才来评价，吃鸡，大型游戏随便玩！</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2018-02-22</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_dd47d802-0e9a-41b2-b607-da975862764f_1.html">看了这个牌子很长时间，我身边也有很多人用着牌子的电脑，一直犹豫买x1还是x6，最后还是选择了x6。首先京东物流还是这么给力，速度快。电脑不错，性价比很高，外观很帅气，个人感觉比x1外观好看一点。机械键盘很好是我用过的笔记本里面按着最舒服的。我平时只玩玩剑灵和吃鸡，剑灵五档fps稳定在50帧到60帧左右，人多的地方就30多帧了。吃鸡还没下。跑分二十多万，算是革命成功了？唯一的遗憾就是没送狗牌！先用段时间再来追评吧。</a></strong><span class="star sa5"></span><span class="date-comment">2018-02-22 20:34:01</span></div><div class="comment-content">使用心得：看了这个牌子很长时间，我身边也有很多人用着牌子的电脑，一直犹豫买x1还是x6，最后还是选择了x6。首先京东物流还是这么给力，速度快。电脑不错，性价比很高，外观很帅气，个人感觉比x1外观好看一点。机械键盘很好是我用过的笔记本里面按着最舒服的。我平时只玩玩剑灵和吃鸡，剑灵五档fps稳定在50帧到60帧左右，人多的地方就30多帧了。吃鸡还没下。跑分二十多万，算是革命成功了？唯一的遗憾就是没送狗牌！先用段时间再来追评吧。</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-05-06</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_82067c36-6ffc-4fd9-9b47-8534fc80fffc_1.html">体验了一下午，客观的评价下。外观稳重大气，扛得住的感觉。磨砂硬塑外壳，也很结实。接口做工比较细致，设计的也挺合理。电脑开机后，感觉屏幕很细腻，色彩比较艳丽。键盘手感不错，回力感挺强的。玩了一下午魔兽世界，感觉5档效果，野外自己的话90帧左右，主城的话掉到30到40，CPU显卡温度基本在60到70度，还不错。风扇硬盘声音是有点明显，不过也可以理解。鼠标有时候有卡顿的现象，可能是驱动的原因吧。屏幕是京东方的，也非常不错，总体评价，性价比比较高，很满意。</a></strong><span class="star sa5"></span><span class="date-comment">2017-05-06 22:00:22</span></div><div class="comment-content">使用心得：体验了一下午，客观的评价下。外观稳重大气，扛得住的感觉。磨砂硬塑外壳，也很结实。接口做工比较细致，设计的也挺合理。电脑开机后，感觉屏幕很细腻，色彩比较艳丽。键盘手感不错，回力感挺强的。玩了一下午魔兽世界，感觉5档效果，野外自己的话90帧左右，主城的话掉到30到40，CPU显卡温度基本在60到70度，还不错。风扇硬盘声音是有点明显，不过也可以理解。鼠标有时候有卡顿的现象，可能是驱动的原因吧。屏幕是京东方的，也非常不错，总体评价，性价比比较高，很满意。</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-10-20</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_22bea5be-5927-4bf6-b911-b71b62163663_1.html">总的来说还可以，我很喜欢！就是触摸板那一块有一点翘起，不影响正常使用！</a></strong><span class="star sa4"></span><span class="date-comment">2017-10-20 14:20:12</span></div><div class="comment-content">使用心得：总的来说还可以，我很喜欢！就是触摸板那一块有一点翘起，不影响正常使用！</div></div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="user"><div class="u-address">()</div><div class="date-buy">购买日期<br>2017-06-02</div></div>--%>
                    <%--<div class="i-item"><div class="o-topic"><strong class="topic"><a href="//club.jd.com/repay/5167978_95eaf673-5a09-4c8a-a8db-67f72ac4f358_1.html">表白快递不愧是自营，早上8点秒的单下午4点就到了。电脑很好看啊，低调奢华，C面拉丝手感也很不错，整机沉稳厚实，没想象中那么重和厚。机械键盘很棒，终于不是旧笔记本那种超短键程的尴尬手感，用起来很舒服，背光很好看，用户可以完全自定义。很幸运得了革命军牌，屏幕也是LG的，色彩很饱满。总的来说革命成功，最后娱乐大师意思意思。</a></strong><span class="star sa5"></span><span class="date-comment">2017-06-02 20:05:09</span></div><div class="comment-content">使用心得：表白快递不愧是自营，早上8点秒的单下午4点就到了。电脑很好看啊，低调奢华，C面拉丝手感也很不错，整机沉稳厚实，没想象中那么重和厚。机械键盘很棒，终于不是旧笔记本那种超短键程的尴尬手感，用起来很舒服，背光很好看，用户可以完全自定义。很幸运得了革命军牌，屏幕也是LG的，色彩很饱满。总的来说革命成功，最后娱乐大师意思意思。</div></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="m m-content comment" id="comment">--%>
            <%--<div class="mt">--%>
                <%--<h3>商品评价</h3>--%>
            <%--</div>--%>
            <%--<div class="mc">--%>
                <%--<div class="J-i-comment i-comment clearfix"></div>--%>
                <%--<div class="J-comments-list comments-list ETab" >--%>
                    <%--<div class="tab-main small">--%>
                        <%--<ul>--%>
                            <%--<li data-tab="trigger" clstag="shangpin|keycount|product|allpingjia_1" class="current"><a href="javascript:;">全部评论<em>()</em></a></li>--%>
                            <%--<li data-tab="trigger" clstag="shangpin|keycount|product|shaipic"><a href="javascript:;">晒图<em>()</em></a></li>--%>
                            <%--<li data-tab="trigger" clstag="shangpin|keycount|product|haoping_1"><a href="javascript:;">好评<em>()</em></a></li>--%>
                            <%--<li data-tab="trigger" clstag="shangpin|keycount|product|zhongping_1"><a href="javascript:;">中评<em>()</em></a></li>--%>
                            <%--<li data-tab="trigger" clstag="shangpin|keycount|product|chaping_1"><a href="javascript:;">差评<em>()</em></a></li>--%>
                            <%--<li clstag="shangpin|keycount|product|sybg-bq" class="try-report-btn" style="display:none;"><a href="#try-report">试用报告<em>()</em></a></li>--%>
                        <%--</ul>--%>
                        <%--<div class="extra">--%>
                            <%--<div class="sort-select J-sort-select hide">--%>
                                <%--<div class="current"><span class="J-current-sortType">推荐排序</span><i></i></div>--%>
                                <%--<div class="others">--%>
                                    <%--<div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>--%>
                                    <%--<ul>--%>
                                        <%--<li class="J-sortType-item" data-sorttype="5" clstag="shangpin|keycount|product|morenpaixu">推荐排序</li>--%>
                                        <%--<li class="J-sortType-item" data-sorttype="6" clstag="shangpin|keycount|product|shijianpaixu">时间排序</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="tab-con">--%>
                        <%--<div id="comment-0" data-tab="item">全部评论</div>--%>
                        <%--<div id="comment-1" data-tab="item" class="hide"><div class="iloading">正在加载中，请稍候...</div></div>--%>
                        <%--<div id="comment-2" data-tab="item" class="hide"><div class="iloading">正在加载中，请稍候...</div></div>--%>
                        <%--<div id="comment-3" data-tab="item" class="hide"><div class="iloading">正在加载中，请稍候...</div></div>--%>
                        <%--<div id="comment-4" data-tab="item" class="hide"><div class="iloading">正在加载中，请稍候...</div></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div id="askAnswer" class="m m-content askAnswer hide">
            <div class="mt">
                <h3>商品问答</h3>
            </div>
            <div class="mc">
                <div class="ask-wrap">
                    <i class="icon-dog"></i><span>心中疑惑就问问买过此商品的同学吧~</span><a href="#none" clstag="shangpin|keycount|product|woyaotiwen" class="J-btn-ask btn-ask">我要提问</a>
                </div>
                <div class="askAnswer-list">
                </div>
            </div>
        </div>
        <div id="try-holder"></div>

        <div id="try-report" class="try-report"></div>
        <div class="m m-content consult" id="consult">
            <div class="mt">
                <h3 class="fl">购买咨询</h3>
                <div class="extra">
                    <div class="item">
                        <a href="//club.jd.com/allconsultations/5167978-1-1.html#form1" target="_blank" class="btn-primary">发表咨询</a>
                    </div>
                    <div class="item">
                        <div class="J-jimi-btn" clstag="shangpin|keycount|product|consult12"></div>
                    </div>
                    <div class="item">
                        <div class="J-im-btn" clstag="shangpin|keycount|product|consult11"></div>
                    </div>
                </div>
            </div>
            <div class="mc">
                <div class="ETab consult">
                    <div class="tab-main small">
                        <ul>
                            <li data-tab="trigger" class="current" clstag="shangpin|keycount|product|consult01">全部</li>
                            <li data-tab="trigger" clstag="shangpin|keycount|product|consult02">商品咨询</li>
                            <li data-tab="trigger" clstag="shangpin|keycount|product|consult03">库存配送</li>
                            <li data-tab="trigger" clstag="shangpin|keycount|product|consult04">支付</li>
                            <li data-tab="trigger" clstag="shangpin|keycount|product|consult05">发票保修</li>
                            <li data-tab="trigger" style="display:none"></li>
                        </ul>
                    </div>
                    <div class="tab-con">
                        <div class="search">
                            <p>温馨提示：因每位咨询者购买情况、咨询时间等不同，以下回复对咨询者3天内有效，其他网友仅供参考。</p>
                            <div class="search-from">
                                <input id="txbReferSearch" class="s-text" type="text" placeholder="输入关键词" />
                                <button id="btnReferSearch" clstag="shangpin|keycount|product|consult09"><i></i>搜索</button>
                            </div>
                            <div data-tab="item" class="search-list">
                                <div class="loading-style1"><b></b>加载中，请稍候...</div>
                            </div>
                            <div data-tab="item" class="search-list hide">
                                <div class="loading-style1"><b></b>加载中，请稍候...</div>
                            </div>
                            <div data-tab="item" class="search-list hide">
                                <div class="loading-style1"><b></b>加载中，请稍候...</div>
                            </div>
                            <div data-tab="item" class="search-list hide">
                                <div class="loading-style1"><b></b>加载中，请稍候...</div>
                            </div>
                            <div data-tab="item" class="search-list hide">
                                <div class="loading-style1"><b></b>加载中，请稍候...</div>
                            </div>
                            <div data-tab="item" class="search-list hide">
                                <div class="loading-style1"><b></b>加载中，请稍候...</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="m m-content club" id="club">
            <div class="mt">
                <h3 class="fl">社区互动</h3>
                <div class="extra">
                    <div class="item">
                        <a target="_blank" href="//club.jd.com/bbs/5167978-1.html" class="btn-primary J-postforum" clstag="shangpin|keycount|product|fabiaotiezi__1">发表帖子</a>
                    </div>
                </div>
            </div>
            <div class="mc">
                <div class="ETab club">
                    <div class="tab-main small">
                        <ul>
                            <li data-tab="trigger" class="current">热门帖</li>
                            <li data-tab="trigger">晒单帖</li>
                        </ul>
                    </div>
                    <div class="tab-con">
                        <div data-tab="item" class="list-content hot-post" clstag="shangpin|keycount|product|taolunquan__1">
                            <div class="loading-style1"><b></b>加载中，请稍候...</div>
                        </div>

                        <div data-tab="item" class="list-content show-post hide" clstag="shangpin|keycount|product|shaidantie__1">
                            <div class="loading-style1"><b></b>加载中，请稍候...</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clb"></div>
</div>


<!-- 主站品牌页 , 口碑、排行榜 SEO结束 -->

<div id="footmark" class="w footmark"></div>
<div id="GLOBAL_FOOTER"></div>
<script>
    seajs.use('MOD_ROOT/main/main.js', function (App) {
        App.init(pageConfig.product);
    });


    function toCart() {
        alert("添加成功");
        $.ajax({

            type:"POST",
            url:"${pageContext.request.contextPath}/cart/addCart",
            dataType:"json",
            data:[{'goods_id':${goods.goods_id}},{'num':$("#buy-num").val()}],
            success:function(res){

            }
        });
    }

    function totouchbate() {
        var exp = new Date();
        exp.setTime(exp.getTime() + 30 * 24 * 60 * 60 * 1000);
        document.cookie = "pcm=2;expires=" + exp.toGMTString() + ";path=/;domain=jd.com";
        window.location.href="//item.m.jd.com/product/5167978.html";
    }
    if(window.showtouchurl) {
        $("#GLOBAL_FOOTER").after("<div class='ac' style='padding-bottom:30px;'>你的浏览器更适合浏览触屏版&nbsp;&nbsp;&nbsp;&nbsp;<a href='#none' style='text-decoration:underline;' onclick='totouchbate()'>京东触屏版</a></div>");
    } else {
        $("#GLOBAL_FOOTER").css("padding-bottom", "30px");
    }
</script>
<script type="text/javascript">
    $(".Ptable-tips").mouseover(function(){
        $(this).find(".tips").show();
    });
    $(".Ptable-tips").mouseout(function(){
        $(this).find(".tips").hide();
    });
</script>


<img src="picture/9e6b4aef869c4fa0b4200a22fb9fb348.gif" width="0" height="0" style="display:none"/>
<script>
    seajs.use('//wl.jd.com/wl.js');
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();

    dataLayer = [{
        'google_tag_params': {
            ecomm_prodid:pageConfig.product.skuid,
            ecomm_pagetype:"item",
            ecomm_pname:pageConfig.product.name,
            ecomm_pcat:['670|671|1105'],
            ecomm_pvalues:['670|671|1105'],
            ecomm_totalvalue:null,
            ecomm_pbrand:54605    }
    }]
</script>
<noscript>iframe(src='//www.googletagmanager.com/ns.html?id=GTM-T947SH', height='0', width='0', style='display: none; visibility: hidden;')</noscript>
<script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src= '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-T947SH');
</script><div id="J-global-toolbar"></div>
<script>
    /*
    (function(cfg) {
        cfg.toolbarParam = {
            bars: {
                history: {
                    enabled: false
                }
            }
        }
    })(pageConfig);
        ;(function(cfg) {
            var sid = cfg.cat[2] === 832 ? '737542' : '992349';
            var phoneNetwork = cfg.phoneNetwork
                ? cfg.phoneNetwork.join(',')
                : '';

            var hallEnable = cfg.cat[2] === 655;
            var hallUrl = {
                url: '//ctc.jd.com/hall/index?',
                param: {
                    sku: cfg.skuid,
                    cat: cfg.cat.join(','),
                    mode: phoneNetwork
                }
            };

            var ad_entry = { enabled: false };
            var isDecCat = cfg.cat[0] == 1620 || cfg.cat[0] == 9847
                            || cfg.cat[0] == 9855 || cfg.cat[0] == 6196

            if (isDecCat) {
                ad_entry = {
                    enabled: true,
                    id: "0_0_7209",
                    startTime: +new Date(2017, 3, 1, 0, 0, 1) / 1000,
                    endTime: +new Date(2017, 4, 3, 0, 0, 0) / 1000
                }
            }

            var isEleCat = cfg.cat[0] === 737
            if (isEleCat) {
                ad_entry = {
                    enabled: true,
                    id: "0_0_7860",
                    startTime: +new Date(2017, 3, 11, 0, 0, 1) / 1000,
                    endTime: +new Date(2017, 4, 8, 0, 0, 0) / 1000
                }
            }

            seajs.use(['//static.360buyimg.com/devfe/toolbar/1.0.0/js/main'], function(toolbar) {
                pageConfig.toolbar = new toolbar({
                    pType: 'item',
                    bars: {
                        hall: {
                            index: 0.5,
                            title: '营业厅',
                            login: true,
                            enabled: hallEnable,
                            iframe: hallUrl.url + $.param(hallUrl.param)
                        },
                        cart: {
                            enabled: true
                        },
                        coupon: {
                            index: 1.5,
                            enabled: true,
                            title: '优惠券',
                            login: true,
                            iframe: '//cd.jd.com/coupons?' + $.param({
                                skuId: cfg.skuid,
                                cat: cfg.cat.join(','),
                                venderId: cfg.venderId
                            })
                        },
                        jimi: {
                            iframe: '//jimi.jd.com/index.action?productId='+ cfg.skuid +'&source=jdhome'
                        }
                    },
                    links: {
                        feedback: {
                            href: '//surveys.jd.com/index.php?r=survey/index/sid/323814/newtest/Y/lang/zh-Hans'
                        },
                        top:{ anchor:"#" }
                    },
                    ad: ad_entry
                });
            });
        })(pageConfig.product)
    */
</script>

</body>
</html>

