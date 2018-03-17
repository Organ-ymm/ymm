layui.use(['table','jquery'], function(){
    var table = layui.table,
        jquery = layui.jquery;
    table.render({
        elem: '#adminList'
        ,cellMinWidth: 80
        //数据接口
        ,url:'../../adminList'
        ,page: true //开启分页
        ,cols: [[ //表头
            {field: 'ad_id', title: 'ID', width:80, sort: true, fixed: 'left'}
            ,{field: 'ad_username', title: '登陆名', width:80}
            ,{field: 'ad_phone', title: '手机', width:80}
            ,{field: 'ad_email', title: '邮箱', width:80}
            ,{field: 'ad_rank', title: '角色', width: 80}
            ,{field: 'ad_addTime', title: '加入时间', width: 150, sort: true}
            ,{field: 'ad_status', title: '状态', width: 80}
            ,{field: 'classify', title: '操作', width: 150,toolbar: '#operateTpl', unresize: true}
        ]],
        limit:5,
        limits: [5, 10, 20, 50, 100]

    });
    $('.demoTable .layui-btn').on('click', function () {
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

    form.on('submit(search)',function(data){
        console.log(data);
    })

    $('.we-search .layui-btn').on('click',function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

});