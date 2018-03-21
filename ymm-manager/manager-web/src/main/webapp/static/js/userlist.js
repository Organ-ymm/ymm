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
                field: 'username', title: '用户名',width:100
            },{
                field: 'alias', title: '昵称',width:100
            },{
                field: 'sex', title: '性别',width:60
            },/*{
                field: 'rank_id', title: '用户等级',width:80
            },*/{
                field: 'email', title: '邮箱'/*,width:120*/
            },{
                field: 'mobile_phone', title: '电话',width:120
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
                    $(this).text('女');
                } else if ($(this).text() == '0') {
                    $(this).text('男');
                }else if ($(this).text() == ''){
                    $(this).text('保密');
                }
            });
            $("[data-field='email']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == "") {
                    $(this).text('（未填写）');
                }
            });
            $("[data-field='alias']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                if ($(this).text() == '') {
                    $(this).text('（未填写）');
                }
            });
        }
    });
    var active = {
        reload:function(){
            var userText=$.trim($('#userText').val());
            //console.log(userText);
            table.reload('usersList',{//重新从第 1 页开始
                page:{curr:1},
                where:{userText:userText}//设定异步数据接口的额外参数，任意设
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

    /*form.on('submit(search)',function(data){
        console.log(data);//模糊查询
        return false;
    });*/

    $('.we-search .layui-btn').on('click',function(){
        var type = $(this).data('type');
        //console.log(type);//reload
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

    //table模块/数据表格文档
    table.on('tool(usersList)', function (obj) {
        var data = obj.data //获得当前行数据
            ,layEvent = obj.event; //获得 lay-event 对应的值
        //console.log(data);

        //会员信息的编辑修改
        if (layEvent === 'edit') {
            var id = data.user_id;
            //layer.msg(id);
            var title = "修改用户信息";
            var url = "../../pages/users/editUser";
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
                    body.contents().find("#L_id").val(data.user_id);
                    body.contents().find("#L_username").val(data.username);
                    body.contents().find("#L_alias").val(data.alias);
                    body.contents().find("#L_sex").val(data.sex);
                    //console.log(data.sex);
                    body.contents().find("#L_phone").val(data.mobile_phone);
                    body.contents().find("#L_email").val(data.email);
                    body.contents().find("#L_password").val(data.password);
                    body.contents().find("#L_repass").val(data.password);
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }

        //会员信息的查看
        if (layEvent === 'show') {
            var id = data.user_id;
            //layer.msg(id);
            var title = "查看会员信息";
            var url = "../../pages/users/showUser";
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
                    body.contents().find("#L_id").val(data.user_id);
                    body.contents().find("#L_username").val(data.username);
                    //body.contents().find("#L_alias").val(data.alias);
                    if(data.email!=null){
                        body.contents().find("#L_alias").val(data.alias);
                    }else{
                        body.contents().find("#L_alias").val("（未填写）");
                    }
                    //body.contents().find("#L_sex").val(data.sex);
                    //console.log(data.sex);
                    if(data.sex==0){
                        body.contents().find("#L_sex").val("男");
                    }else if(data.sex==1){
                        body.contents().find("#L_sex").val("女");
                    }else if(data.sex==null){
                        body.contents().find("#L_sex").val("保密");
                    }
                    body.contents().find("#L_phone").val(data.mobile_phone);
                    //body.contents().find("#L_email").val(data.email);
                    if(data.email!=null){
                        body.contents().find("#L_email").val(data.email);
                    }else{
                        body.contents().find("#L_email").val("（未填写）");
                    }
                    body.contents().find("#L_password").val(data.password);
                    body.contents().find("#L_repass").val(data.password);
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }
    });

});
