layui.extend({
    admin: '{/}../../static/js/admin'
});

layui.use(['form', 'table', 'jquery', 'admin'], function () {
    var form = layui.form,
        table = layui.table,
        $ = layui.jquery,
        admin = layui.admin;

    table.render({
        //容器元素
        elem: '#delPage',
        //最小宽度
        cellMinWidth: 80,
        //列
        cols: [
            [{
                type: 'checkbox'
            }, {
                field: 'user_id', title: '用户ID'/*, sort: true*/
            },{
                field: 'username', title: '用户名'
            },{
                field: 'alias', title: '昵称'
            },{
                field: 'sex', title: '性别'
            },/*{
                field: 'rank_id', title: '用户等级'
            },*/{
                field: 'email', title: '邮箱'
            }, {
                field: 'mobile_phone', title: '电话'
            },{
                field: 'reg_time', title: '注册时间'
            },{
                field: 'status', title: '状态'
            },{
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
            }]
        ],
        //通过URL进行数据绑定
        url:'../../user/showDelPage',
        //是否开启分页
        page: true,
        limit:5,
        limits: [5, 10, 20, 50, 100],
        done: function (res, curr, count) {
            //console.log(res);
            //console.log(curr);
            //console.log(count);
            $("#countData").text("共有数据："+count+" 条");
            $("[data-field='status']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == '1') {
                    //正常
                    //$(this).text('正常');
                    $(this).html('<span class="layui-btn layui-btn-normal layui-btn-xs">正常</span>');
                } else if ($(this).text() == '0') {
                    //删除
                    $(this).html('<span class="layui-btn layui-btn-danger layui-btn-xs">已删除</span>');
                }
            });
            $("[data-field='sex']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == '1') {
                    //正常
                    $(this).text('女');
                } else if ($(this).text() == '0') {
                    //删除
                    $(this).text('男');
                }
            });
        }
    });
    var active = {
        reload:function(){
            var userText=$.trim($('#userText').val());
            table.reload('delPage',{
                page:{curr:1},//重新从第 1 页开始
                where:{userText:userText}//设定异步数据接口的额外参数，任意设
            });
        },
        getCheckData: function () { //获取选中数据
            var checkStatus = table.checkStatus('delPage'),
                data = checkStatus.data;
            if (data.length > 0) {
                layer.confirm('确认要恢复吗？', function (index) {
                    //在前台页面把选中数据恢复：找到所有被选中的
                    $(".layui-table-body .layui-form-checked").parents('tr').remove();
                    //形成一个ID的数组
                    var ids = [];
                    for (var i = 0; i < data.length; i++) {
                        ids.push(data[i].user_id);
                    }
                    //console.log(ids);
                    //debugger;
                    //post方式发出异步的请求去后台
                    /*$.post(
                        //url
                        '../../user/batchRegain',
                        //data
                        {'ids[]': ids},
                        //success
                        function (data) {
                            console.log(data);
                        }
                    );
                    //提示用户恢复成功
                    layer.msg('恢复成功', {
                        icon: 1
                    });*/
                    //ajax发出异步请求
                    $.ajax({
                        data:{"ids[]":ids},
                        dataType:"text",
                        type:"POST",
                        url:"../../user/batchRegain",
                        success:function (res) {
                            //console.log(res);
                            if(res>0){
                                layer.msg("恢复成功",{
                                    icon:1,
                                    time:1000
                                });
                            }else{
                                layer.msg("恢复失败",{
                                    icon:2,
                                    time:1000
                                });
                            }
                        }

                    });
                });
            } else {
                layer.msg("请先选择需要恢复的用户！");
            }

        }
    };

    $('.demoTable .layui-btn').on('click', function () {
        var type = $(this).data('type');
        console.log(type);
        active[type] ? active[type].call(this) : '';
    });

    /*form.on('submit(search)',function(data){
        console.log(data);
        return false;
    });*/

    $('.we-search .layui-btn').on('click',function(){
        var type = $(this).data('type');
        //console.log(type);
        active[type] ? active[type].call(this) : '';
    });

    /*用户-删除*/
    window.member_del = function (obj) {
        layer.confirm('确认要从数据库删除吗？', function (index) {
            var id=$(obj).parents("tr").children("[data-field='user_id']").text();
            //debugger;
            //console.log(id);
            //发异步删除数据
            $(obj).parents("tr").remove();
            //提交ajax
            $.ajax({
                data:{'id':id},
                dataType:"text",
                type:"GET",
                url:"../../user/delUser",
                success:function(res){
                    if(res>0){
                        layer.msg("已删除",{
                            icon:1,
                            time:1000
                        });
                    }else{
                      layer.msg("删除失败",{
                          icon:2,
                          time:1000
                      });
                    }
                }
            });
        });
    }

    window.member_regain=function(obj){
        layer.confirm("确认要恢复吗？",function(index){
            var id=$(obj).parents("tr").children("[data-field='user_id']").text();
            $(obj).parents("tr").remove();
            $.ajax({
                data:{'id': id},
                dataType:"text",
                type:"POST",
                url:"../../user/singleRegain",
                success:function(res){
                    console.log(res);
                    if(res>0){
                        layer.msg('恢复成功',{
                            icon:1,
                            time:1000
                        });
                    }else{
                        layer.msg('恢复失败',{
                            icon:2,
                            time:1000
                        });
                    }
            }
            });
        })
    }

});

function delAll(argument) {
    var data = tableCheck.getData();
    layer.confirm('确认要删除吗？' + data, function (index) {
        //捉到所有被选中的，发异步进行删除
        layer.msg('删除成功', {
            icon: 1
        });
        $(".layui-form-checked").not('.header').parents('tr').remove();
    });
}