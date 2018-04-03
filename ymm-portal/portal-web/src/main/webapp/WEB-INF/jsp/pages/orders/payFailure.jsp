<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/28
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>交易失败 - ymm商城</title>
    <!-- ======================= favicon ========================== -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo_icon.png">

    <link href="${pageContext.request.contextPath}/orderStatic/css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/orderStatic/css/base.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/orderStatic/js/jquery_cart.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/orderStatic/css/buyConfirm.css" />
    <script src="${pageContext.request.contextPath}/orderStatic/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/orderStatic/js/unslider.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/orderStatic/js/index.js" type="text/javascript"></script>
    <script type="text/javascript">

        window.onload = function(){
            new tab('test4-input-input_tab1-input_tab2', '-');
            /*$.ajax({//订单提交页的地址显示
                //data:"",
                dataType:"text",
                type:"POST",
                url:"${pageContext.request.contextPath}/orders/getOrderByUserId",
                success:function (data) {//返回的是Orders对象
                    //console.log(data);
                    if(data!=null){
                        var order=eval("("+data+")");//将json类型字符串转化成json对象
//                        alert(order.order_id);
//                        alert(order.receiver_name);
//                        alert(order.receiver_address);
//                        alert(order.receiver_phone);
//                        alert(order.order_money);
                        $("#order_id").val(order.order_id);
                        $("#order_money").val(order.order_money);
                        $(".order_id").html(order.order_id);
                        $(".receiver_name").html(order.receiver_name);
                        $(".receiver_address").html(order.receiver_address);
                        $(".receiver_phone").html(order.receiver_phone);
                        $(".order_money").html(order.order_money);

                    }
                }
            });*/
            handleCart();
        };
        function handleCart() {

        }
        function tab(o, s, cb, ev){ //tab换类
            var $ = function(o){return document.getElementById(o)};
            var css = o.split((s||'_'));
            if(css.length!=4)return;
            this.event = ev || 'onclick';
            o = $(o);
            if(o){
                this.ITEM = [];
                o.id = css[0];
                var item = o.getElementsByTagName(css[1]);
                var j=1;
                for(var i=0;i<item.length;i++){
                    if(item[i].className.indexOf(css[2])>=0 || item[i].className.indexOf(css[3])>=0){
                        if(item[i].className == css[2])o['cur'] = item[i];
                        item[i].callBack = cb||function(){};
                        item[i]['css'] = css;
                        item[i]['link'] = o;
                        this.ITEM[j] = item[i];
                        item[i]['Index'] = j++;
                        item[i][this.event] = this.ACTIVE;
                    }
                }
                return o;
            }
        }
        tab.prototype = {
            ACTIVE:function(){
                var $ = function(o){return document.getElementById(o)};
                this['link']['cur'].className = this['css'][3];
                this.className = this['css'][2];
                try{
                    $(this['link']['id']+'_'+this['link']['cur']['Index']).style.display = 'none';
                    $(this['link']['id']+'_'+this['Index']).style.display = 'block';
                }catch(e){}
                this.callBack.call(this);
                this['link']['cur'] = this;
            }
        }
    </script>
</head>

<body>
<%--==================================通用头部导航条导入========================================--%>
<jsp:include page="../../top.jsp"/>

<!--订单提交body部分开始-->
<div class="border_top_cart">

    <div class="container payment-con">
            <div class="order-info">
                <div class="msg">
                    <h3>已支付失败！</h3>
                    <p></p>
                    <p class="post-date">成功付款后，48小时内发货</p>
                    <p>立即查看<a href="" target="_blank">订单详情 &gt;</a></p>
                </div>
            <%--<div class="success">
                <h4>支付成功了</h4>
                <p>立即查看<a href="#" target="_blank">订单详情 &gt;</a></p>
            </div>--%>
                <%--<div class="info">
                    <p>
                        <input type="hidden" name="order_id"/>
                        <input type="hidden" name="order_money"/>
                        金额：<span class="pay-total"><span class="order_money"></span>元</span>
                    </p>
                    <p>
                        订单编号：<span class="order_id"></span>         </p>
                    <p>
                        配送：<span class="receiver_name"></span>       <span class="line">/</span>
                        <span class="receiver_phone"></span>             <span class="line">/</span>
                        <span class="receiver_address"></span>           <span class="line">/</span>&lt;%&ndash;
                        不限送货时间                                      <span class="line">/</span>
                        个人电子发票&ndash;%&gt;                                                    </p>
                </div>--%>
                <div class="icon-box">
                    <i class="iconfont"><img src="${pageContext.request.contextPath}/orderStatic/images/yes_ok.png"></i>
                </div>
            </div>
    </div>
    <!-- 支付弹框 -->
    <div class="modal hide to-pay-tip" id="toPayTip">
        <div class="modal-header">
        <span class="close" id="toPayTipClose">
            <i class="iconfont">&#xe617;</i>
        </span>
            <h3>正在支付...</h3>
        </div>
        <div class="modal-body">
            <div class="pay-tip clearfix">
                <div class="fail">
                    <h4>如果支付失败...</h4>
                    <p>额度问题，推荐<a href="#" id="alipayTrigger">支付宝快捷支付 &gt;</a></p>
                    <p>其他问题，查看<a href="#">支付常见问题 &gt;</a></p>
                </div>
                <div class="success">
                    <h4>支付成功了</h4>
                    <p>立即查看<a href="#" target="_blank">订单详情 &gt;</a></p>
                </div>
            </div>
        </div>
    </div>

</div>



<script src="${pageContext.request.contextPath}/orderStatic/js/base.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/orderStatic/js/buyConfirm.js"></script>

</div>


<!--订单提交body部分结束-->



<!-- 底部 -->
<div class="promise_box">
    <div class="w">
        <ul>
            <li><img src="${pageContext.request.contextPath}/orderStatic/images/promise_img01.jpg"><span>365天不打烊</span></li>
            <li><img src="${pageContext.request.contextPath}/orderStatic/images/promise_img02.jpg"><span>无理由退换货</span></li>
            <li><img src="${pageContext.request.contextPath}/orderStatic/images/promise_img03.jpg"><span>担保交易</span></li>
            <li><img src="${pageContext.request.contextPath}/orderStatic/images/promise_img04.jpg"><span>先行赔付</span></li>
            <li><img src="${pageContext.request.contextPath}/orderStatic/images/promise_img05.jpg"><span>支持定制</span></li>
        </ul>
    </div>
</div>
<div class="bottom-links">
    <ul class="clearfix cols">
        <li class="col">
            <div class="bottom-links-title">关于我们</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">招聘英才</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">合作洽谈</a></li>
                <li><a href="#">联系我们</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">客服中心</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">收货地址</a></li>
                <li><a href="#">个人资料</a></li>
                <li><a href="#">修改密码</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">售后服务</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">退换货政策</a></li>
                <li><a href="#">退款说明</a></li>
                <li><a href="#">联系卖家</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">帮助中心</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">FAQ</a></li>
                <li><a href="#">积分兑换</a></li>
                <li><a href="#">积分细则</a></li>
                <li><a href="#">已购商品</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">锡好网公众号</div>
            <ul class="clearfix bottom-links-items">
                <li>
                    <img src="${pageContext.request.contextPath}/orderStatic/images/weixin_big.jpg" />
                </li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">关注我们</div>
            <ul class="clearfix bottom-links-items">
                <li><img src="${pageContext.request.contextPath}/orderStatic/images/icon_sina.png" /><a href="#">新浪微博</a></li>
                <li><img src="${pageContext.request.contextPath}/orderStatic/images/icon_tencent.png" /><a href="#">腾讯微博</a></li>
                <li><img src="${pageContext.request.contextPath}/orderStatic/images/icon_dou.png" /><a href="#">豆瓣小站</a></li>
                <li><img src="${pageContext.request.contextPath}/orderStatic/images/icon_weixin.png" /><a href="#">官方微信</a></li>
            </ul>
        </li>

    </ul>
</div>
<div class="footer_v2013 bottom-about">
    <div class="w">
        <p class="foot_p1">
            <a href="#">首页</a>|<a href="#">招聘英才</a>|<a href="#">广告合作</a>|<a href="#">联系我们</a>|<a href="#">关于我们</a>
        </p>
        <pre>
    经营许可证：苏B2-20130223备案许可证：苏ICP备13041162号-1360网站安全检测平台
    ©2013-2014 无锡太湖云电商网络科技发展有限公司   版权所有
                </pre>
    </div>
    <p>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img01.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img02.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img03.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img04.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img05.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img06.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img07.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img08.png"></a>
        <a href="#"><img src="${pageContext.request.contextPath}/orderStatic/images/bottom_img09.png"></a>
    </p>
</div>
<!-- 底部 -->
<div class="fixed-buttons">
    <ul>
        <li><a href="#" class="fixed-weixin"><img src="${pageContext.request.contextPath}/orderStatic/images/fixed_weixin.png" /><div class="weixin-pic"><img src="${pageContext.request.contextPath}/orderStatic/images/weixin_big.jpg"></div></a></li>
        <li><img id="imgBtn-to-top" src="${pageContext.request.contextPath}/orderStatic/images/back_top.png" /></li>
    </ul>
</div>

</body>
</html>

