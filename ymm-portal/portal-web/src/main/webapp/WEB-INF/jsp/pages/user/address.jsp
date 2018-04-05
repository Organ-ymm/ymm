<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zh-CN" xml:lang="zh-CN">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta charset="UTF-8"/>
    <title>我的订单</title>
    <meta name="viewport" content="width=1226"/>
    <meta name="description" content=""/>
    <meta name="keywords" content="ymm商城"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo_icon.png" type="image/x-icon"/>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo_icon.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/userStatic/css/main.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/userStatic/js/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/userStatic/js/address.js" charset="utf-8"></script>
</head>

<body>
<input type="hidden" id="user_id" value="${user.user_id}"/>
<div class="site-topbar" style="height: 61px;background-color: #262626">
    <div class="container">

        <div class="topbar-nav" style="height: 55px">
            <a href="${pageContext.request.contextPath}/index"><img
                    src="${pageContext.request.contextPath}/images/logo2.png"></a><span class="sep">|</span>
        </div>
        <div class="topbar-cart" id="J_miniCartTrigger">

            <a class="cart-mini" id="J_miniCartBtn" href="${pageContext.request.contextPath}/cart/listCustomCart"><i
                    class="iconfont">&#xe60c;</i>购物车<span class="cart-mini-num J_cartNum"></span></a>
            <div class="cart-menu" id="J_miniCartMenu">
                <div class="loading">
                    <div class="loader"></div>
                </div>
            </div>
        </div>
        <div class="topbar-info" id="J_userInfo">
            <a class="link" href="#" data-needlogin="true">${user.username}</a>
            <span class="sep">|</span><a class="link" href="${pageContext.request.contextPath}/loginOut">注销</a>
        </div>
    </div>
</div>
<div class="breadcrumbs">
    <div class="container">
        <a href='${pageContext.request.contextPath}/index'>首页</a><span class="sep">&gt;</span><span>个人中心</span></div>
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
                                <li><a href="${pageContext.request.contextPath}/pages/orders/myOrder">我的订单</a></li>
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
                                <li class="active"><a
                                        href="${pageContext.request.contextPath}/pages/user/personalCenter">我的个人中心</a>
                                </li>
                                <li><a href="#">消息通知<i class="J_miMessageTotal"></i></a></li>
                                <li><a href="${pageContext.request.contextPath}/addressList">收货地址</a></li>
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
                                <li><a href="changePass" target="_blank">修改密码</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="span16">

                <div class="uc-box uc-main-box">
                    <div class="uc-content-box">
                        <div class="box-hd">
                            <h1 class="title">收货地址</h1>
                        </div>
                        <div class="box-bd">
                            <div class="user-address-list J_addressList clearfix" >
                                <div class="address-item address-item-new" id="addAddress"  >
                                    <input type="hidden" value="${user.user_id}">

                                    <i class="iconfont"><div class="layui-icon">&#xe61f</div></i>
                                     添加新地址
                                </div>
                                <c:forEach items="${addresses}" var="address">
                                    <div class="address-item J_addressItem"
                                         data-consignee=${address.consignee}
                                                 data-tel="${address.phone}"
                                         data-province_name="${address.province}"
                                         data-city_name="${address.city}"
                                         data-area_name='${address.county}'
                                         data-zipcode="${address.zipcode}"
                                         data-address="${address.street}"
                                         data-tag_name="${address.tag}">
                                        <dl>
                                            <dt>
                                                <em class="uname">${address.consignee}</em>
                                            </dt>
                                            <dd class="utel">${address.phone}</dd>
                                            <dd class="uaddress">${address.province} &nbsp&nbsp ${address.city}
                                                &nbsp&nbsp ${address.county} &nbsp&nbsp <br/>${address.street}&nbsp&nbsp
                                                (${address.tag})
                                            </dd>
                                        </dl>
                                        <input type="hidden" id="address_id" value="${address.address_id}">
                                        <div class="actions">
                                            <a class="modify J_addressModify" data-id="10171007554402320"
                                             id="editAddress" onclick="change(${address.address_id})" href="javascript:void(0);">修改</a>
                                            <a class="modify J_addressDel" data-id="10171007554402320" onclick="deleteAdd(${address.address_id})">删除</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

                <dd><a rel="nofollow" href="#" target="_blank">账户管理</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">购物指南</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">订单操作</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>服务支持</dt>

                <dd><a rel="nofollow" href="#" target="_blank">售后政策</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">自助服务</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">相关下载</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>线下门店</dt>

                <dd><a rel="nofollow" href="#" target="_blank">服务网点</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">零售网点</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关于羊咩咩</dt>

                <dd><a rel="nofollow" href="#" target="_blank">了解羊咩咩</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">加入羊咩咩</a></dd>

                <dd><a rel="nofollow" href="#" target="_blank">联系我们</a></dd>

            </dl>

            <dl class="col-links ">
                <dt>关注我们</dt>

                <dd><a rel="nofollow" href="#" target="_blank">新浪微博</a></dd>

                <dd><a rel="nofollow" href="#" data-toggle="modal">官方微信</a></dd>

            </dl>

            <div class="col-contact">
                <p class="phone">15005816787</p>
                <p>
                    周一至周日 8:00-18:00<br>（仅收市话费）
                </p>
                <a rel="nofollow" class="btn btn-line-primary btn-small" href="#" target="_blank"><i class="iconfont">&#xe600;</i>
                    在线客服</a></div>
        </div>
    </div>
</div>
<%--修改密码--%>
<%--
<script>
    layui.use(['laypage','jquery'], function(){
        var laypage = layui.laypage;
        var $ = layui.jquery;
        //执行一个laypage实例
        laypage.render({
            elem: 'orderList' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: $('#ordersSize').val()//数据总数，从服务端得到
            ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
            ,limit: 5
            ,limits:[5, 10, 20, 30, 50]
            ,curr: location.hash.replace('page=', '')
            ,hash:'page'
            /*,jump: function(obj, first){
                //obj包含了当前分页的所有参数，比如：
                //console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                //console.log(obj.limit); //得到每页显示的条数
                //首次不执行
                if(!first){
                    //location.href="${pageContext.request.contextPath}/pages/orders/myOrder?page="+obj.curr+"&limit="+obj.limit;
                    $.ajax({
                        type: 'post',
                        url: '../../pages/orders/myOrder',
                        data:{"page":obj.curr,"limit":obj.limit},
                        dataType: 'text',

                    });
                }

            }*/
        });
    });
</script>
--%>
<script>
    function change(data) {
        layer.open({
            type: 2,
            area: ["800px", "500px"],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            title: "修改收货地址",
            content: "pages/user/editAddress",
            success: function (layero, index) {
                //信息的回显
                var id =  $('#address_id').val();
                var body = layer.getChildFrame('body', index);
                $.ajax({
                    type: 'post',
                    url: 'getAddress',
                    data: {"address_id":data},
                    dataType: 'json',
                    success: function (add) {
                        //信息的回显
                        if (add!=null) {
                            body.contents().find('#address_id').val(add.address_id);
                            body.contents().find('#consignee').val(add.consignee);
                            body.contents().find('#phone').val(add.phone);
                            body.contents().find('#province').val(add.province);
                            body.contents().find('#city').val(add.city);
                            body.contents().find('#county').val(add.county);
                            body.contents().find('#street').val(add.street);
                            body.contents().find('#tag').val(add.tag);
                            body.contents().find('#zipcode').val(add.zipcode);

                        } else {

                        }
                    }, error: function (data) {

                    }
                });
                return false;
                body.contents().find("#ad_id").val(data.ad_id);

            },
            error: function (layero, index) {
            }
        });
    };

</script>
<script>
    function deleteAdd(id) {
        $.ajax({
            type: 'post',
            url: 'delAddress',
            data: {"address_id":id},
            dataType: 'json',
            success: function (sec) {
                //信息的回显
                if (sec==1) {
                    layer.msg("删除成功");
                } else {
                    layer.msg("删除失败");

                }
            }
        });
        return false;
    }
</script>

</body>
</html>

