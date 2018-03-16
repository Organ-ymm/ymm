layui.extend({
        admin: '{/}../../static/js/admin'
    });
layui.use(['table', 'jquery', 'admin'], function () {
    var table = layui.table,
        $ = layui.jquery,
        admin = layui.admin;

    table.render({
        elem: '#goodsList', //指定元素
        cellMinWidth: 100,
        cols: [
            [{
                type: 'checkbox'
            }, {
                field: 'goods_id',title:'商品编号'
            },{
                field: 'goods_name',title:'商品名称'
            },{
                field: 'cat_name',title:'分类名称'
            },{
                field: 'goods_sn',title:'商品货号'
            },{
                field: 'click_count',title:'点击数'
            },{
                field: 'brand_name',title:'品牌'
            },{
                field: 'goods_number',title:'库存'
            },{
                field: 'market_price',title:'市场售价'
            },{
                field: 'shop_price',title:'本店售价'
            },{
                field: 'promote_price',title:'促销价格'
            },{
                field: 'keywords',title:'关键字'
            },{
                field: 'goods_brief',title:'简短描述'
            },{
                field: 'goods_desc',title:'详细描述'
            },{
                field: 'goods_img',title:'实际图片'
            },{
                field: 'goods_thumb',title:'缩略图'
            },{
                field: 'add_time',title:'添加时间'
            },{
                field: 'is_new',title:'是否新品'
            },{
                field: 'is_hot',title:'是否热销'
            },{
                field: 'give_integral',title:'赠送积分'
            },{
                field: 'status',title:'状态'
            },{
                field: 'operate', title: '操作', toolbar: '#operateTpl', unresize: true
            }]
        ],
        //通过URL进行数据绑定
        url:'../../goods/goodslist',
        //是否开启分页
        page: true,
        limits: [10, 50, 100],
        done: function (res, curr, count) {
            $("#countData").text("共有数据：" + count + " 条");
            $("[data-field='status']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                //DOM--JQ===$(this)
                //JQ--DOM===[0],get(0)
                if ($(this).text() == '1') {
                    //正常
                    $(this).text('正常');
                } else if ($(this).text() == '2') {
                    //下架
                    $(this).text('下架');
                }
            });
            $("[data-field='is_hot']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                //DOM--JQ===$(this)
                //JQ--DOM===[0],get(0)
                if ($(this).text() == '1') {
                    //正常
                    $(this).text('是');
                } else if ($(this).text() == '2') {
                    //下架
                    $(this).text('否');
                }
            });
            $("[data-field='is_new']").children().each(function () {
                //每次遍历进来得到的this就是DOM对象
                //DOM--JQ===$(this)
                //JQ--DOM===[0],get(0)
                if ($(this).text() == '1') {
                    //正常
                    $(this).text('是');
                } else if ($(this).text() == '2') {
                    //下架
                    $(this).text('否');
                }
            });
        }
    });

    /*分类-删除*/
    window.cat_del = function (id) {
        layer.confirm('确认要删除吗？', function (index) {
            //提交ajax
            $.ajax({
                data: id,
                dataType: "text",
                type: "GET",
                url: "${pageContext.request.contextPath}/category/category_del",
                success: function (res) {
                    if (res == "true") {
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


});
