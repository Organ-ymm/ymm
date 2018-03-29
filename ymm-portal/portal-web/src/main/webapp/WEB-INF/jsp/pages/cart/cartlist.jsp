<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/24
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cartStatic/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cartStatic/css/carts.css">
</head>
<body>
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">
                <%--<!--删除所选商品-->
                <a href="javascript:;" onclick="delSome()" value="">删除所选商品</a>--%>
                商品信息
            </li>
            <li class="list_info">商品参数</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">小计</li>
            <%--<li class="list_store">库存状态</li>--%>
            <li class="list_op">操作</li>
        </ul>
    </div>

    <div class="cartBox">
        <div class="order_content">
            <c:if test="${empty customCartList}">
                <h3 style="color: #999">您的购物车里还没有添加任何商品</h3>
            </c:if>
            <c:if test="${!empty customCartList}">
                <c:forEach items="${customCartList}" var="good">
                    <ul class="order_lists">
                        <li class="list_chk">
                            <input type="hidden" name="goods_id" value="${good.goods_id}">
                            <input type="checkbox" id="${good.goods_id}" class="son_check">
                            <label for="${good.goods_id}"></label>
                        </li>
                        <li class="list_con">
                            <div class="list_img"><a href="javascript:;"><img src="${good.goods_thumb}" title="${good.goods_name}"></a></div>
                            <div class="list_text"><a href="javascript:;">${good.goods_brief}</a></div>
                        </li>
                        <li class="list_info">
                            <p>${good.goods_sn}</p>
                        </li>
                        <li class="list_price">
                            <p class="priceP">￥<span class="price">${good.shop_price}</span></p>
                        </li>
                        <li class="list_amount">
                            <div class="amount_box">
                                <a href="javascript:;" class="reduce reSty">-</a>
                                <input type="text" value="${good.amount}" class="sum" readonly>
                                <a href="javascript:;" class="plus">+</a>
                            </div>
                        </li>
                            <%--<li class="list_store">
                                <c:if test="${good.goods_number>=10}">
                                    <p class="price">有货</p>
                                </c:if>
                                <c:if test="${good.goods_number<10}">
                                    <p class="price">库存紧张</p>
                                </c:if>
                            </li>--%>
                        <li class="list_sum" style="color: red">
                            <p class="myP">￥<span class="sum_price">${good.subTotal}</span></p>
                        </li>
                        <li class="list_op">
                            <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                        </li>
                    </ul>
                </c:forEach>
            </c:if>
        </div>
    </div>

    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <span class="totalSpan">￥<strong class="total_text">0.00</strong></span></div>
            <div class="calBtn"><a href="javascript:;" class="settleAccount">结算</a></div>
        </div>
    </div>
</section>
<%--<section class="model_bg"></section>--%>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>
<%--<section class="doSuccess">
    <p class="title">提示信息<span class="closeModel">X</span></p>
    <p>删除成功</p>
</section>
<section class="doFail">
    <p class="title">提示信息<span class="closeModel">X</span></p>
    <p>删除失败，请稍后重试</p>
</section>--%>

<script src="${pageContext.request.contextPath}/cartStatic/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/cartStatic/js/cartlist.js"></script>
</body>
</html>
