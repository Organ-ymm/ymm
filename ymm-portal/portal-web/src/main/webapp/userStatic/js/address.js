layui.use(['form', 'table', 'jquery', 'layer'], function () {
    var form = layui.form,
        table = layui.table,
        $ = layui.jquery,
        layer = layui.layer;
    $(document).on("click","#addAddress",function(){
        layer.open({
            type: 2,
            area: ["800px", "500px"],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            title: "新增收货地址",
            content: "pages/user/addAddress",
            error: function (layero, index) {
            }
        });
    });
    /*$(document).on("click","#editAddress",function(){

    });*/

});
