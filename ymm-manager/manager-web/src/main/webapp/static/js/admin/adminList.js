layui.use(['form','table','jquery'], function(){
    var table = layui.table,
        form = layui.form,
        jquery = layui.jquery;
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

        },
        limit:5,
        limits: [5, 10, 20, 50, 100]
    });

    //模糊查询
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