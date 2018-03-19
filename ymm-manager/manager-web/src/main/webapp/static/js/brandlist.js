layui.extend({
    admin: '{/}../../static/js/admin'
});

layui.use(['table', 'jquery', 'admin'],function(){
    var table = layui.table,
        $ = layui.jquery,
        admin = layui.admin;
    table.render({
        elem:'#brandList'
        ,height: 315

        ,cols: [[
            {field: 'brand_id', title: '品牌编号', width:80, sort: true, fixed: 'left'}
            ,{field: 'brand_name', title: '品牌名称'}
            ,{field: 'add_time', title: '添加时间'}
            ,{field: 'country', title: '所属国家'}
            ,{field: 'brand_desc', title: '描述'}
            ,{field: 'status', title: '商品状态'}
            // ,{field: 'status', title: '状态', width: 135}
            // ,
            ,{
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
            }

        ]]
        ,url:'../../brand',
        page: true,
        limits:[10,20],
        done:function(res,curr,count){
            $("[data-field='status']").children().each(function(){
                if ($(this).text()=='1'){
                    $(this).text("正常")
                }else if ($(this).text()=='2'){
                    $(this),text("下架")
                }else if ($(this).text()=='3'){
                    $(this),text("删除")
                }
            })
        }

    });
    /*用户-删除*/
    window.brand_del = function (obj) {
        layer.confirm('确认要删除吗？', function (index) {

            var id = $(obj).parents("tr").children("[data-field='brand_id']").text();
            //发异步删除数据
            $(obj).parents("tr").remove();

            $.ajax({
                data: {'id': id},
                dataType: "text",
                type: "POST",
                url: "../../brand_del",
                success: function (res) {
                    if (res > 0) {
                        layer.msg('已删除!', {
                            icon: 1,
                            time: 1000
                        });
                    } else {
                        layer.msg('删除失败!', {
                            icon: 2,
                            time: 1000
                        });
                    }
                }
            });
        });
    }

})