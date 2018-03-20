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
        elem: '#rankList',
        //最小宽度
        cellMinWidth: 80,
        //列
        cols: [
            [/*{
                type: 'checkbox'
            },*/ {
                field: 'rank_id', title: '等级ID'/*,width:80*//*, sort: true*/
            },{
                field: 'rank_name', title: '等级称号'
            },{
                field: 'points', title: '等级最低积分'
            },{
                field: 'discount', title: '所享折扣'
            },{
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
            }]
        ],
        //通过URL进行数据绑定
        url:'../../rank/listrank',
        //是否开启分页
        page: false,
        // limits: [5, 10, 20, 50, 100],
        done: function (res, curr, count) {
            // console.log(res);
            // console.log(curr);
            // console.log(count);
            $("#countData").text("共有："+count+" 个等级");
        }
    });
    // var active = {
    //     reload:function(){
    //         var userText=$.trim($('#userText').val());
    //         //console.log(userText);
    //         table.reload('rankList',{//重新从第 1 页开始
    //             page:{curr:1},
    //             where:{userText:userText}//设定异步数据接口的额外参数，任意设
    //         });
    //     },
    //     getCheckData: function () { //获取选中数据
    //         var checkStatus = table.checkStatus('rankList'),
    //             data = checkStatus.data;
    //         if (data.length > 0) {
    //             layer.confirm('确认要删除吗？', function (index) {
    //                 //在前台页面把选中数据删除：找到所有被选中的
    //                 $(".layui-table-body .layui-form-checked").parents('tr').remove();
    //                 //形成一个ID的数组
    //                 var ids = [];
    //                 //console.log(ids);
    //                 //console.log(data.length);
    //                 for (var i = 0; i < data.length; i++) {
    //                     ids.push(data[i].user_id);
    //                 }
    //                 //console.log(ids);
    //                 //发出异步的请求去后台
    //                 //发出异步请求
    //                 $.post(
    //                     //url
    //                     '../../user/batchUpdateDel',
    //                     //data
    //                     {'ids[]': ids},
    //                     //success，成功时才会触发的函数
    //                     function (data) {
    //                         //console.log(data);
    //                         if(data>0){
    //                             layer.msg('删除成功', {
    //                                 icon: 1
    //                             });
    //                         }else{
    //                             layer.msg('删除失败', {
    //                                 icon: 2
    //                             });
    //                         }
    //                     }
    //                 );
    //             });
    //         } else {
    //             layer.msg("请先选择需要删除的用户！");
    //         }
    //
    //     }
    // };

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
    table.on('tool(rankList)', function (obj) {
        var data = obj.data //获得当前行数据
            ,layEvent = obj.event; //获得 lay-event 对应的值
        //console.log(data);

        //会员信息的修改
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
