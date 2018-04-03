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
    <title>订单提交 - ymm商城</title>
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
            $.ajax({//订单提交页的地址显示
                //data:"",
                dataType:"json",
                type:"POST",
                url:"${pageContext.request.contextPath}/orders/getOrderByUserId",
                success:function (data) {//返回的是Orders对象
                    //console.log(data);
                    if(data!=null){
                        $("[name='order_id']").val(data.order_id);
                        $("[name='order_money']").val(data.order_money);
                        $(".order_id").html(data.order_id);
                        $(".receiver_name").html(data.receiver_name);
                        $(".receiver_address").html(data.receiver_address);
                        $(".receiver_phone").html(data.receiver_phone);
                        $(".order_money").html(data.order_money);

                    }else{
                        location.href="${pageContext.request.contextPath}/loginTip";
                    }
                }
            });
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
<script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>

<script>
    layui.use(['jquery','layer'], function () {
        var $ = layui.jquery,
            layer = layui.layer;

        /*window.addCart = function (goods_id) {
            $.ajax({
                data: {"goods_id": goods_id, "amount": 1},
                dataType: "text",
                type: "get",
                url: "${pageContext.request.contextPath}/cart/addCart",
                success: function (res) {
                    if (res > 0) {
                        layer.msg("加入成功!");
                    }
                }
            });
        }*/
        $("#checkoutToPay").on("click",function(){
            var b=$("#checkoutAddrList").find(".selected").length;
            if(0>=b){
                layer.msg("请选择地址");
            }
            if(0<b){
                var address_id=$("#checkoutAddrList").find(".selected").find("#addressNo").val();
                //var orderMoney=parseFloat($('.totalPrice').html()-0);
                var flag=$('.flag').html();
                if(flag=='1'){//直接购买
                    var $item_row=$('.item-row');
                    var goods_id=parseInt($item_row.find('[name="goods_id"]').val());
                    var amount=parseInt($item_row.find('[name="amount"]').html());
                    $.ajax({
                        data:{"address_id":address_id,"goods_id":goods_id,"amount":amount},
                        dataType:"text",
                        type:"POST",
                        url:"../../portal/orders/addOrder",//直接购买
                        success:function (data) {
                            if(data>0){
                                location.href="../../portal/pages/orders/submitOrder";
                            }else{
                                location.href="../../portal/404";
                            }
                        }
                    });
                }else{//购物车购买
                    var $item_row=$('.item-row');
                    var goods_ids=[],
                        amounts=[];
                    //alert($item_row.length);
                    $item_row.each(function () {
                        var goods_id=parseInt($(this).find('[name="goods_id"]').val());
                        //alert(goods_id);
                        goods_ids.push(goods_id);//得到要结算的多个商品id
                        var amount=parseInt($(this).find('[name="amount"]').html());
                        //alert(amount);
                        amounts.push(amount);//得到要结算的多个商品的数量
                    });
                    $.ajax({
                        data:{"address_id":address_id,"goods_ids[]":goods_ids,"amounts[]":amounts},
                        dataType:"text",
                        type:"POST",
                        url:"../../portal/orders/submitOrder",//购物车购买
                        success:function (data) {
                            if(data>0){
                                location.href="../../portal/pages/orders/submitOrder";
                            }else{
                                location.href="../../portal/404";
                            }
                        }
                    });
                }
            }

        });
    });
</script>
<%--==================================通用头部导航条导入========================================--%>
<jsp:include page="../../top.jsp"/>

<!--订单提交body部分开始-->
<div class="border_top_cart">

    <div class="container payment-con">
        <form action="${pageContext.request.contextPath}/orders/payOrder" id="pay-form" method="post">
            <div class="order-info">
                <div class="msg">
                    <h3>您的订单已提交成功！付款咯～</h3>
                    <p></p>

                    <p class="post-date">成功付款后，48小时内发货</p>
                </div>
                <div class="info">
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
                        <span class="receiver_address"></span>           <span class="line">/</span><%--
                        不限送货时间                                      <span class="line">/</span>
                        个人电子发票--%>                                                    </p>
                </div>
                <div class="icon-box">
                    <i class="iconfont"><img src="${pageContext.request.contextPath}/orderStatic/images/yes_ok.png"></i>
                </div>
            </div>

            <div class="xm-plain-box">
                <!-- 选择支付方式 -->
                <div class="box-hd bank-title clearfix">
                    <div id="titleWrap" class="title-wrap">
                        <h2 class="title">选择支付方式</h2>
                        <%--<h2 class="title hide " >你还需要继续支付 <em>49.00</em> 元</h2>--%>
                        <span class="tip-tag"></span>
                    </div>
                </div>
                <div class="box-bd" id="bankList">
                    <div class="payment-bd">
                        <form name="ck">
                            <dl class="clearfix payment-box" >
                                <dt>
                                    <strong>支付平台</strong>
                                    <p>手机等大额支付推荐使用预存款支付</p>
                                </dt>
                                <dd>
                                    <fieldset id="test4-input-input_tab1-input_tab2" style=" border:none;">
                                        <ul class="payment-list clearfix" >
                                            <li> <input class="input_tab1" name="myradio" id="r1" type="radio" checked="checked"/><label for="r1" ><img src="${pageContext.request.contextPath}/orderStatic/images/yck.png" alt=""/></label></li>
                                            <li><input class="input_tab2" name="myradio" id="r2" type="radio" /><label for="r2" ><img src="${pageContext.request.contextPath}/orderStatic/images/zfb.png" alt=""/></label></li>
                                            <%--<li> <input class="input_tab2" name="myradio" id="r2" type="radio" /><label for="r2" ><img src="${pageContext.request.contextPath}/orderStatic/images/yck.png" alt=""/></label></li>--%>
                                            <li>  <input class="input_tab2" name="myradio" id="r3" type="radio" /><label for="r2" ><img src="${pageContext.request.contextPath}/orderStatic/images/zxzf.png" alt=""/></label></li>
                                        </ul>
                                        <%--<div >
                                            <div id="test4_1">
                                                <ul class="payment-list clearfix"  style="background-color:#f3f3f3;   ">
                                                    <div class="xhw">
                                                        <div class="whx_banner">
                                                            <div style="clear:both"><p class="p1">请选择锡货卡：</p><p class="p2">对不起，没有可用的锡货卡！</p><a class="a3" href="#">立即去充值</a></div>
                                                            <div style="clear:both"><p class="p1">已绑定手机号：</p><p class="a3">15961726437</p></div>
                                                            <div style="clear:both"> <p class="p1">短信效验码</p><input id="mobileCode" name="mobileCode" type="text" value=""><input id="send" type="button" style="cursor:hand" value="点击获取手机验证码" onclick="sendMobileCode()"></div>
                                                        </div>
                                                    </div>
                                                </ul>
                                            </div>
                                            <div  id="test4_2" style="display:none;">

                                            </div>
                                            <div  id="test4_3" style="display:none;">

                                            </div>
                                            <div  id="test4_4" style="display:none;">

                                            </div>



                                        </div>--%>
                                    </fieldset>
                                </dd>
                            </dl>
                        </form>
                    </div>
                </div>
                <div class="box-ft clearfix">
                    <input type="submit" class="btn btn-primary" value="去支付" id="payBtn">
                    <%--<a href="#" class="btn btn-lineDakeLight">修改订单</a>--%>
                    <span class="tip"></span>
                </div>
            </div>
        </form>
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
    <!-- 余额支付弹框 -->
    <div class="modal hide  balance-pay" id="balancePay">
        <div class="modal-body">
            <h3>账户余额支付：<span class="num"><em id="useCashAccountPayLeft">0.00</em>元</span></h3>
            <p id="checkCodeTip">短信验证码已下发至您的手机<span class="num"></span></p>
            <input type="text" name="verifycode" id="verifycode" class="input" placeholder="请输入验证码"> <span class="send-again" id="sendAgain">重新发送<em></em></span>
            <p><input type="button" value="确认支付" class="btn btn-primary" id="toPay">
                <div class="select-other">
            <p><span id="bankName"></span> <span class="num">49.00元</span></p>

        </div>
        <a href="javascript:;" id="chooseOther">选择其他方式支付&gt;</a>
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

