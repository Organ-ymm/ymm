layui.extend({
    admin: '{/}../../static/js/admin'
});

layui.use(['table', 'jquery', 'admin','form'],function(){
    var form = layui.form,
        table = layui.table,
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
    var active = {
        reload: function () {
            var brand_name = $('#name').val();
            table.reload('brandList',{
                page:{curr:1},
                where:{brand_name:brand_name}
            });
        }
    }
    /*用户-删除*/
    window.brand_del = function (obj) {
        layer.confirm('确认要删除吗？', function (index) {

            var id = $(obj).parents("tr").childrens("[data-field='brand_id']").text();
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

    table.on('tool(brandList)', function (obj) {
        var data = obj.data //获得当前行数据
            ,layEvent = obj.event; //获得 lay-event 对应的值
        //console.log(data);

        //会员信息的修改
        if (layEvent === 'edit') {
            var id = data.brand_id;
            //layer.msg(id);
            var title = "修改用户信息";
            var url = "../../pages/brand/brand_edit";
            var w = ($(window).width() * 0.9);
            var h = ($(window).height() - 50);

            layer.open({
                type: 2,
                area: [w + 'px', h + 'px'],
                fix: false, //不固定
                maxmin: true,
                shadeClose: true,
                shade: 0.4,
                title: title,
                content: url,
                success: function (layero, index) {
                    //向iframe页的id=house的元素传值  // 参考 https://yq.aliyun.com/ziliao/133150
                    // console.log(layero);
                    // console.log(index);
                    //会员信息的回显
                    var body = layer.getChildFrame('body', index);
                    body.contents().find("#brand_id").val(data.brand_id);
                    body.contents().find("#brand_name").val(data.brand_name);
                    body.contents().find("#cat_id").val(data.cat_id);
                    body.contents().find("#add_time").val(data.add_time);
                    body.contents().find("#country").val(data.country);
                    body.contents().find("#brand_desc").val(data.brand_desc);
                    body.contents().find("#status").val(data.status);
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }
    });
    //魔符查询
    $('.we-search .layui-btn').on('click',function (){
        var type = $(this).data('type');
        active[type]? active[type].call(this):'';
    }
        
    )

})