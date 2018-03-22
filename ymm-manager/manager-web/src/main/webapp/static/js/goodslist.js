layui.extend({
    admin: '{/}../../static/js/admin'
});
layui.use(['table', 'form', 'jquery', 'admin'], function () {
    var table = layui.table,
        $ = layui.jquery,
        form = layui.form,
        admin = layui.admin;

    table.render({
        elem: '#goodsList', //指定元素
        cellMinWidth: 80,
        cols: [
            [{
                type: 'checkbox'
            }, {
                field: 'goods_id', title: '编号', width: 60, align: 'center'
            }, {
                field: 'goods_name', title: '商品名称', width: 90, align: 'center'
            }, {
                field: 'cat_name', title: '分类名称', width: 90, align: 'center'
            }, {
                field: 'goods_sn', title: '商品货号', width: 90, align: 'center'
            }, {
                field: 'click_count', title: '点击数', align: 'center'
            }, {
                field: 'brand_name', title: '品牌', width: 60, align: 'center'
            }, {
                field: 'goods_number', title: '库存', width: 60, align: 'center'
            }, {
                field: 'market_price', title: '市场售价', width: 90, align: 'center'
            }, {
                field: 'shop_price', title: '本店售价', width: 90, align: 'center'
            }, {
                field: 'promote_price', title: '促销价格', width: 90, align: 'center'
            }, {
                field: 'keywords', title: '关键字', align: 'center'
            }, {
                field: 'goods_brief', title: '简短描述', width: 90, align: 'center'
            }, {
                field: 'goods_desc', title: '详细描述', width: 90, align: 'center'
            }, {
                field: 'goods_img', title: '实际图片', width: 90, align: 'center'
            }, {
                field: 'goods_thumb', title: '缩略图', align: 'center'
            }, {
                field: 'add_time', title: '添加时间', width: 90, align: 'center'
            }, {
                field: 'is_new', title: '新品', templet: '#newTpl', unresize: true, align: 'center'
            }, {
                field: 'is_hot', title: '热销', templet: '#hotTpl', unresize: true, align: 'center'
            }, {
                field: 'give_integral', title: '赠送积分', width: 90, align: 'center'
            }, {
                field: 'status', title: '状态', templet: '#statusTpl', unresize: true, align: 'center'
            }, {
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true, align: 'center'
            }]
        ],
        //通过URL进行数据绑定
        url: '../../goods/goodslist',
        //是否开启分页
        page: true,
        limits: [10, 50, 100],
        done: function (res, curr, count) {
            $("#countData").text("共有数据：" + count + " 条");
            $("[data-field='status']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                //DOM--JQ===$(this)
                //JQ--DOM===[0],get(0)
                // if ($(this).text() == '1') {
                //     //正常
                //     $(this).text('正常');
                // } else if ($(this).text() == '2') {
                //     //下架
                //     $(this).text('下架');
                // }
            });
            // $("[data-field='is_hot']").children().each(function () {
            //     //每次遍历进来得到的this就是DOM对象
            //     //DOM--JQ===$(this)
            //     //JQ--DOM===[0],get(0)
            //     if ($(this).text() == '1') {
            //         //正常
            //         $(this).text('是');
            //     } else if ($(this).text() == '2') {
            //         //下架
            //         $(this).text('否');
            //     }
            // });
            // $("[data-field='is_new']").children().each(function () {
            //     //每次遍历进来得到的this就是DOM对象
            //     //DOM--JQ===$(this)
            //     //JQ--DOM===[0],get(0)
            //     if ($(this).text() == '1') {
            //         //正常
            //         $(this).text('是');
            //     } else if ($(this).text() == '2') {
            //         //下架
            //         $(this).text('否');
            //     }
            // });
        }
    });
	
form.on('switch(is_new)', function (obj) {

        //layer.msg(data.goods_id);
        if (obj.elem.checked) {
            //当开关状态为true时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 1},
                type: 'GET',
                url: "../../goods/goods_is_new",
                success: function (res) {
                    layer.msg("是");
                }
            });
        } else {
            //当开关状态为false时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 2},
                type: 'GET',
                url: "../../goods/goods_is_new",
                success: function (res) {
                    layer.msg("否");
                }
            });
        }


        //layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked, obj.othis);
    });
    form.on('switch(is_hot)', function (obj) {
        if (obj.elem.checked) {
            //当开关状态为true时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 1},
                type: 'GET',
                url: "../../goods/goods_is_hot",
                success: function (res) {
                    layer.msg("是");
                }
            });
        } else {
            //当开关状态为false时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 2},
                type: 'GET',
                url: "../../goods/goods_is_hot",
                success: function (res) {
                    layer.msg("否");
                }
            });
        }
    });
    form.on('switch(status)', function (obj) {
        if (obj.elem.checked) {
            //当开关状态为true时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 1},
                type: 'GET',
                url: "../../goods/goods_status",
                success: function (res) {
                    layer.msg("上架");
                }
            });
        } else {
            //当开关状态为false时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 2},
                type: 'GET',
                url: "../../goods/goods_status",
                success: function (res) {
                    layer.msg("下架");
                }
            });
        }
    });

    var active = {
        is_new: function () {
            layer.msg("请先选择");
        },
        reload: function () {
            //val() text() html()
            var title = $.trim($('#title').val());
            table.reload('goodsList', {
                page: {curr: 1},
                where: {title: title}
            });
        },
        Recommend: function () {
            // var checkStatus = table.checkStatus('articleList'),
            //     data = checkStatus.data;
            // if(data.length > 0) {
            layer.msg("您点击了推荐操作");
            //     for(var i = 0; i < data.length; i++) {
            //         console.log("a:" + data[i].recommend);
            //         data[i].recommend = "checked";
            //         console.log("aa:" + data[i].recommend);
            //         form.render();
            //     }
            //
            // } else {
            //     console.log("b");
            //     layer.msg("请先选择");
            // }

            //$(".layui-table-body .layui-form-checked").parents('tr').children().children('input[name="zzz"]').attr("checked","checked");
        },
        getCheckData: function () { //获取选中数据
            var checkStatus = table.checkStatus('goodsList'),
                data = checkStatus.data;
            if (data.length > 0) {
                // layer.msg(data[0].goods_id);
                layer.confirm('确认要删除吗？', function (index) {
                    //在前台页面把选中数据删除：找到所有被选中的
                    $(".layui-table-body .layui-form-checked").parents('tr').remove();
                    //形成一个ID的数组
                    var ids = [];
                    for (var i = 0; i < data.length; i++) {
                        ids.push(data[i].goods_id);
                    }
                    //发出异步的请求去后台
                    //发出异步请求
                    $.post(
                        //url
                        '../../goods/batch',
                        //data
                        {'ids[]': ids}
                        //success
                        // function (data) {
                        //     console.log(data);
                        // }
                    );
                    //提示用户删除成功
                    layer.msg('删除成功', {
                        icon: 1
                    });
                    //location.reload();//删除后是否刷新当前页面
                });
            } else {
                layer.msg("请先选择需要删除的商品！");
            }
        }
    };

    $('.we-search .layui-btn').on('click', function () {
        var type = $(this).data('type');//reload
        active[type] ? active[type].call(this) : '';//调用active中reload方法
    });

    $('.weadmin-block .layui-btn').on('click', function () {
        var type = $(this).data('type');//getCheckData
        active[type] ? active[type].call(this) : '';
    });
    // $('.layui-form-switch').on('change', function() {
    //     var type = $(this).data('type');
    //     active[type] ? active[type].call(this) : '';
    // });

    /*商品-删除*/
    window.goods_del = function (obj) {
        layer.confirm('确认要删除吗？', function (index) {
            var id = $(obj).parents("tr").children("[data-field='goods_id']").text();
            //提交ajax
            $.ajax({
                data: {'id': id},
                dataType: "text",
                type: "GET",
                url: "../../goods/goods_del",
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

    table.on('tool(goodsList)', function (obj) {
        var data = obj.data //获得当前行数据
            , layEvent = obj.event; //获得 lay-event 对应的值
        if (layEvent === 'edit') {
            var id = data.cat_id;
//               layer.msg(data.cat_id);
            var title = "修改分类";
            var url = "goods_edit";
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
                    var body = layer.getChildFrame('body', index);
                    //巧妙的地方在这里哦
                    body.contents().find("#goods_id").val(data.goods_id);
                    body.contents().find("#goods_name").val(data.goods_name);
                    body.contents().find("#goods_sn").val(data.goods_sn);
                    body.contents().find("#cat_name").val(data.cat_name);
                    body.contents().find("#brand_name").val(data.brand_name);
                    body.contents().find("#goods_number").val(data.goods_number);
                    body.contents().find("#market_price").val(data.market_price);
                    body.contents().find("#shop_price").val(data.shop_price);
                    body.contents().find("#promote_price").val(data.promote_price);
                    body.contents().find("#keywords").val(data.keywords);
                    body.contents().find("#goods_brief").val(data.goods_brief);
                    body.contents().find("#goods_desc").val(data.goods_desc);
                    body.contents().find("#goods_img").val(data.goods_img);
                    body.contents().find("#goods_thumb").val(data.goods_thumb);
                    // body.contents().find("#is_new").val(data.is_new);
                    //body.contents().find("#is_hot").val(data.is_hot);
                    body.contents().find("#give_integral").val(data.give_integral);
                    //body.contents().find("#status").val(data.status);
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }
    });

});
