



/*
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
});*/
