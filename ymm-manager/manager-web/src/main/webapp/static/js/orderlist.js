layui.extend({
    admin: '{/}../../static/js/admin'
});
layui.use(['form','table', 'jquery', 'admin'], function () {
    var form = layui.form,
        table = layui.table,
        $ = layui.jquery,
        admin = layui.admin;
    table.render({
        elem: '#ordersList', //指定元素
        cellMinWidth: 80,
        cols: [
            [{
                type: 'checkbox'
            }, {
                field: 'order_id', title: '订单编号'
            }, {
                field: 'user_id', title: '下单会员id'
            }, {
                field: 'receiver_name', title: '收货人姓名'
            }, {
                field: 'receiver_address', title: '收货地址'
            },{
                field: 'receiver_phone', title: '收件人电话'
            },{
                field: 'order_time', title: '下单时间'
            },{
                field: 'order_money', title: '订单总金额'
            },{
                field: 'pay_status', title: '支付状态'
            },{
                field: 'deliver_status', title: '发货状态', templet: '#deliver_statusTpl', unresize: true, align: 'center'
            }, {
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true, align: 'center'
            }]
        ],
        url:'../../order/listorders',
        //是否开启分页
        page: true,
        limit:10,
        limits: [10, 20, 50, 100],
        done: function (res, curr, count) {
            // console.log(res);
            // console.log(curr);
            // console.log(count);
            $("#countData").text("共有数据："+count+" 条");
            $("[data-field='pay_status']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == '0') {
                    //正常
                    //$(this).text('正常');
                    $(this).html('<span class="layui-btn layui-btn-normal layui-btn-xs">未支付</span>');
                } else if ($(this).text() == '1') {
                    //删除
                    $(this).html('<span class="layui-btn layui-btn-normal layui-btn-xs">已支付</span>');
                }
            });
      /*      $("[data-field='deliver_status']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == '0') {
                    $(this).text('待发货');
                } else if ($(this).text() == '1') {
                    $(this).text('待收货');
                }
            });*/
        }
    });

    form.on('switch(deliver_status)', function (obj) {
        //layer.msg(data.goods_id);
        if (obj.elem.checked) {
            //当开关状态为true时,执行该段代码
            console.log(id);
            $.ajax({
                data: {"id": this.value,"switchStatus": 0},
                type: 'GET',
                url: "../../order/updateOrdersStatus",
                success: function (res) {
                    layer.msg("待收货");
                }
            });
        } else {
            //当开关状态为false时,执行该段代码
            $.ajax({
                data: {"id": this.value,"switchStatus": 1},
                type: 'GET',
                url: "../../order/updateOrdersStatus",
                success: function (res) {
                    layer.msg("待发货");
                }
            });
        }
    });


    var active = {
        reload:function(){
            var userText=$.trim($('#ordersText').val());
            table.reload('ordersList',{//重新从第 1 页开始
                page:{curr:1},
                where:{ordersText:userText}//设定异步数据接口的额外参数，任意设
            });
        },

        getCheckData: function () { //获取选中数据
            var checkStatus = table.checkStatus('ordersList'),
                data = checkStatus.data;
            if (data.length > 0) {
                layer.confirm('确认要删除吗？', function (index) {
                    //在前台页面把选中数据删除：找到所有被选中的
                    $(".layui-table-body .layui-form-checked").parents('tr').remove();
                    //形成一个ID的数组
                    var ids = [];
                    //console.log(ids);
                    //console.log(data.length);
                    for (var i = 0; i < data.length; i++) {
                        ids.push(data[i].order_id);
                    }
                    //console.log(ids);
                    //发出异步的请求去后台
                    //发出异步请求
                    $.post(
                        //url
                        '../../order/AllUpdateDelStatusById',
                        //data
                        {'ids[]': ids},
                        //success，成功时才会触发的函数
                        function (data) {
                            //console.log(data);
                            if(data>0){
                                layer.msg('删除成功', {
                                    icon: 1
                                });
                            }else{
                                layer.msg('删除失败', {
                                    icon: 2
                                });
                            }
                        }
                    );
                });
            } else {
                layer.msg("请先选择需要删除的订单！");
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


    $('.we-search .layui-btn').on('click',function(){
        var type = $(this).data('type');
        //console.log(type);//reload
        active[type] ? active[type].call(this) : '';
    });

/*    var active = {
        is_new: function () {
            layer.msg("请先选择");
        },
        reload: function () {
            //val() text() html()
            var title = $.trim($('#title').val());
            table.reload('ordersList', {
                page: {curr: 1},
                where: {title: title}
            });
        },
        Recommend: function () {
            layer.msg("您点击了推荐操作");
        },*/
    /*用户-删除*/
    window.order_del = function (obj) {
        layer.confirm('确认要删除吗？', function (index) {
            var id=$(obj).parents("tr").children("[data-field='order_id']").text();
            //console.log(id);
            //发异步删除数据
            $(obj).parents("tr").remove();
            //提交ajax
            $.ajax({
                data:{'id':id},
                dataType:"text",
                type:"GET",
                url: "../../order/UpdateDelierStatusById",
                success:function(res){
                    if(res>0){
                        layer.msg('已删除',{
                            icon:1,
                            time:1000
                        });
                    }else{
                        layer.msg('删除失败',{
                            icon:2,
                            time:1000
                        });
                    }
                }
            });
        });
    }
});


