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

    /*等级-删除*/
    window.del = function (obj) {
        layer.confirm('确认要删除吗？', function (index) {
            var rank_id=$(obj).parents("tr").children("[data-field='rank_id']").text();
            //console.log(rank_id);
            //提交ajax
            $.ajax({
                data:{'rank_id':rank_id},
                dataType:"text",
                type:"GET",
                url: "../../rank/verifyRankId",
                success:function(res){
                    if(res==1){
                        $.ajax({
                            data:{'rank_id':rank_id},
                            dataType:"text",
                            type:"get",
                            url:"../../rank/delRank",
                            success:function (res) {
                                //发异步删除数据
                                $(obj).parents("tr").remove();
                                layer.msg('已删除',{
                                    icon:1,
                                    time:1000
                                });
                            }
                        });

                    }else{
                        layer.msg('删除失败！只能删除最后一项',{
                            icon:2,
                            time:1000
                        });
                    }
                }
            });
        });
    }

    /*等级-添加*/
    window.add = function (obj) {
        var title = "添加等级";
        var url = "../../pages/rank/addRank";
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
                //等级ID的自动填写
                $.ajax({
                    data:{"noSense":0},
                    dataType:"text",
                    type:"get",
                    url:"../../rank/getRankId",
                    success:function (res) {
                        var body = layer.getChildFrame('body', index);
                        body.contents().find("#rank_id").val(res);
                    }
                });
            },
            error: function (layero, index) {
                alert("aaa");
            }
        });
    }

    //table模块/数据表格文档
    table.on('tool(rankList)', function (obj) {
        var data = obj.data //获得当前行数据
            ,layEvent = obj.event; //获得 lay-event 对应的值
        //console.log(data);

        //等级信息的编辑修改
        if (layEvent === 'edit') {
            var id = data.rank_id;
            //layer.msg(id);
            var title = "修改等级信息";
            var url = "../../pages/rank/editRank";
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
                    body.contents().find("#rank_id").val(data.rank_id);
                    body.contents().find("#rank_name").val(data.rank_name);
                    body.contents().find("#points").val(data.points);
                    body.contents().find("#discount").val(data.discount);
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }

        //添加等级
        /*if (layEvent === 'add') {
            var id = data.rank_id;
            //layer.msg(id);
            var title = "添加等级";
            var url = "../../pages/rank/addRank";
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
                    //等级ID的自动填写
                    $.ajax({
                        data:{"noSense":0},
                        dataType:"text",
                        type:"get",
                        url:"../../rank/getRankId",
                        success:function (res) {
                            var body = layer.getChildFrame('body', index);
                            body.contents().find("#rank_id").val(res);
                        }
                    });
                },
                error: function (layero, index) {
                    alert("aaa");
                }
            });
        }*/
    });

});
