layui.use(['form','table','jquery','layer'], function(){
    var form = layui.form,
        table = layui.table,
        $ = layui.jquery,
        layer = layui.layer;
    var tableIns = table.render({
        elem: '#adminList'
        ,cellMinWidth: 80
        //数据接口
        ,url:'../../adminList'
        ,page: true //开启分页
        ,cols: [[ //表头
            {type:'checkbox'}
            ,{field: 'ad_id', title: 'ID', width:40, sort: true}
            ,{field: 'ad_username', title: '登陆名', width:120}
            ,{field: 'ad_phone', title: '手机', width:120}
            ,{field: 'ad_email', title: '邮箱', width:120}
            ,{field: 'ad_rank', title: '角色', width: 100}
            ,{field: 'ad_addTime', title: '加入时间', width: 100, sort: true}
            ,{field: 'ad_status', title: '状态', width: 80}
            ,{field: 'classify', title: '操作', width: 130,toolbar: '#operateTpl', }
        ]],
        done: function(res, curr, count){
            //res你接口返回的信息, curr得到当前页码, count得到数据总量
            $("[data-field='ad_status']").children().each(function(){
                if($(this).text()=='1'){
                    $(this).html('<span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span>');
                }else if($(this).text()=='0'){
                    $(this).html('<span class="layui-btn layui-btn-disabled layui-btn-xs">已停用</span>');
                }
            })
        },
        limit:5,
        limits: [5, 10, 20, 50, 100]
    });

    table.on('tool(adminList)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
        var data = obj.data; //获得当前行数据
        var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
        var tr = obj.tr; //获得当前行 tr 的DOM对象
        if(layEvent === 'stop'){ //停用
            layer.confirm('确认要停用吗？', function(index) {
                $.ajax({
                    type: 'post',
                    url: '../../changeStatus',
                    data:{ad_id:data.ad_id, ad_status:data.ad_status},
                    dataType: 'text',
                    success: function (rec) {
                        if (rec == "1") {
                            layer.msg("修改成功")
                        } else {
                            layer.msg("修改失败");
                        }
                    }, error: function (data) {
                        layer.msg("修改失败");
                    }
                });
                return false;
            });
        } else if(layEvent === 'start'){ //启用
            layer.confirm('确认要启用吗？', function(index) {
                $.ajax({
                    type: 'post',
                    url: '../../changeStatus',
                    data: {ad_id:data.ad_id,ad_status:data.ad_status},
                    dataType: 'text',
                    success: function (rec) {
                        if (rec == "1") {
                            layer.msg("修改成功")
                        } else {
                            layer.msg("修改失败");
                        }
                    }, error: function (data) {
                        layer.msg("修改失败");
                    }
                });
                return false;
            });
        } else if(layEvent === 'edit'){           //编辑
            layer.open({
                type: 2,
                area: ["800px","400px"],
                fix: false, //不固定
                maxmin: true,
                shadeClose: true,
                title: "管理员编辑",
                content: "../../pages/admin/edit",
                success: function (layero, index) {
                    //信息的回显
                    var body = layer.getChildFrame('body', index);
                    body.contents().find("#ad_id").val(data.ad_id);
                    body.contents().find("#ad_username").val(data.ad_username);
                    body.contents().find("#ad_phone").val(data.ad_phone);
                    body.contents().find("#ad_email").val(data.ad_email);
                    body.contents().find("#ad_rank").val(data.ad_rank);
                    body.contents().find("#ad_password").val(data.ad_password);
                    body.contents().find("#ad_repass").val(data.ad_password);

                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }else if(layEvent === 'del'){
            layer.confirm('确认要删除吗？', function(index) {
                $.ajax({
                    type: 'post',
                    url: '../../delAdmin',
                    data: {ad_id:data.ad_id},
                    dataType: 'text',
                    success: function (rec) {
                        if (rec == "1") {
                            layer.msg("删除成功")
                        } else {
                            layer.msg("删除失败");
                        }
                    }, error: function (data) {
                        layer.msg("删除失败");
                    }
                });
                return false;
            });
        }
    });
    /*用户-停用*/
    function admin(obj, id) {
        layer.confirm('确认要停用吗？', function(index) {
            if($(obj).attr('title') == '启用') {
                //发异步把用户状态进行更改
                $(obj).attr('title', '停用')
                $(obj).find('i').html('&#xe62f;');
                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!', {
                    icon: 5,
                    time: 1000
                });
            } else {
                $(obj).attr('title', '启用')
                $(obj).find('i').html('&#xe601;');
                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!', {
                    icon: 5,
                    time: 1000
                });
            }
        });
    }
    //模糊查询
    var active = {
        reload: function () {
            var userText = $.trim($('#adminList').val());
            //console.log(userText);
            table.reload('usersList', {//重新从第 1 页开始
                page: {curr: 1},
                where: {userText: userText}//设定异步数据接口的额外参数，任意设
            });
        },
    };
    $('.we-search .layui-btn').on('click',function(){
        var type = $(this).data('type');
        //console.log(type);//reload
        active[type] ? active[type].call(this) : '';
    });
  /*  form.on('submit(search)', function(data){
        var adminQueryName=$.trim($('#adminQueryName').val());
        tableIns.reload('adminList', {
            where: {
                adminQueryName:adminQueryName,
                "adminQueryName":data.field
            }, //设定异步数据接口的额外参数
            page:{ curr:1 }
        });
    });*/

  //添加用户
    window.WeAdminShow = function(title, url, w, h) {
        if(title == null || title == '') {
            title = false;
        };
        if(url == null || url == '') {
            url = "404";
        };
        if(w == null || w == '') {
            w = ($(window).width() * 0.9);
        };
        if(h == null || h == '') {
            h = ($(window).height() - 50);
        };
        var layerOpen = layer.open({
            type: 2,
            area: [w + 'px', h + 'px'],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            shade: 0.4,
            title: title,
            content: url
        });
    }
});