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
        elem: '#usersList',
        //最小宽度
        cellMinWidth: 80,
        //列
        cols: [
            [{
                type: 'checkbox'
            }, {
                field: 'user_id', title: '用户ID',width:80/*, sort: true*/
            },{
                field: 'username', title: '用户名',width:80
            },{
                field: 'alias', title: '昵称',width:80
            },{
                field: 'sex', title: '性别',width:60
            },/*{
                field: 'rank_id', title: '用户等级',width:80
            },*/{
                field: 'email', title: '邮箱',width:120
            }, {
                field: 'mobile_phone', title: '电话'
            },{
                field: 'reg_time', title: '注册时间'
            },{
                field: 'status', title: '状态',width:70
            },{
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
            }]
        ],
        //通过URL进行数据绑定
        //注意：不能写成users，否则会访问：http://localhost:8080/ymm/pages/users/users
        //因为http://localhost:8080/ymm/pages/users是userlist.jsp，而该js页面嵌在这个jsp中。所以只会在之后加上/users
        // 也不能写成${pageContext.request.contextPath}/users，否则会访问http://localhost:8080/users。因为这是客户端地址
        url:'../../user/listusers',
        //是否开启分页
        page: true,
        limits: [5, 10, 20, 50, 100],
        done: function (res, curr, count) {
            // console.log(res);
            // console.log(curr);
            // console.log(count);
            $("#countData").text("共有数据："+count+" 条");
            $("[data-field='status']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == '1') {
                    //正常
                    //$(this).text('正常');
                    $(this).html('<span class="layui-btn layui-btn-normal layui-btn-xs">正常</span>');
                } else if ($(this).text() == '0') {
                    //删除
                    $(this).html('<span class="layui-btn layui-btn-normal layui-btn-xs">已删除</span>');
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
            table.reload('usersList',{
                page:{curr:1},
                where:{title:userText}
            });
        },
        getCheckData: function () { //获取选中数据
            var checkStatus = table.checkStatus('usersList'),
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
                        ids.push(data[i].user_id);
                    }
                    //console.log(ids);
                    //发出异步的请求去后台
                    //发出异步请求
                    $.post(
                        //url
                        '../../user/batchUpdateDel',
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
                layer.msg("请先选择需要删除的用户！");
            }

        }
    };

    $('.demoTable .layui-btn').on('click', function () {
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

    form.on('submit(search)',function(data){
        console.log(data);
    });

    $('.we-search .layui-btn').on('click',function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

    /*用户-删除*/
    window.user_del = function (obj) {
        layer.confirm('确认要删除吗？', function (index) {
            var id=$(obj).parents("tr").children("[data-field='user_id']").text();
            //console.log(id);
            //发异步删除数据
            $(obj).parents("tr").remove();
            //提交ajax
            $.ajax({
                data:{'id':id},
                dataType:"text",
                type:"GET",
                url: "../../user/singleUpdateDel",
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

    table.on('tool(usersList)', function (obj) {
        var data = obj.data //获得当前行数据
            , layEven = obj.even; //获得 lay-even 对应的值
        if (layEven === 'edit') {
            var id = data.user_id;
//               layer.msg(data.cat_id);
            var title = "修改用户信息";
            var url = "${pageContext.request.contextPath}/pages/users/editUser";
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
                    body.contents().find("#username").val(data.username);
                    body.contents().find("#alias").val(data.alias);
                    body.contents().find("#sex").val(data.sex);
                    body.contents().find("#mobile_phone").val(data.mobile_phone);
                    body.contents().find("#email").val(data.email);
                    //body.contents().find("#status").val(data.status);
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }
    });

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