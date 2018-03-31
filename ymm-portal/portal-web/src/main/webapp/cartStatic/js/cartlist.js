/**
 * Created by Administrator on 2018/3/24.
 */
$(function () {

    /*$.ajax({
        data:{"user_id":user_id},
        dataType:"json",
        type:"get",
        url:"../../cart/listCustomCart",
        success:function(data){

        }

    });*/

    //全局的checkbox选中和未选中的样式
    var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox
        $wholeChexbox = $('.whole_check'),
        $cartBox = $('.cartBox'),                       //每个商铺盒子
        //$shopCheckbox = $('.shopChoice'),               //每个商铺的checkbox
        $sonCheckBox = $('.son_check');                 //每个商铺下的商品的checkbox
    $allCheckbox.click(function () {
        if ($(this).is(':checked')) {
            $(this).next('label').addClass('mark');
        } else {
            $(this).next('label').removeClass('mark')
        }
    });

    //===============================================全局全选与单个商品的关系================================
    $wholeChexbox.click(function () {//单选框和全选框的样式
        var $checkboxs = $cartBox.find('input[type="checkbox"]');
        if ($(this).is(':checked')) {
            $checkboxs.prop("checked", true);
            $checkboxs.next('label').addClass('mark');
        } else {
            $checkboxs.prop("checked", false);
            $checkboxs.next('label').removeClass('mark');
        }
        totalMoney();
    });

    $sonCheckBox.each(function () {
        $(this).click(function () {
            if ($(this).is(':checked')) {
                //判断：所有单个商品是否勾选
                var len = $sonCheckBox.length;
                var num = 0;
                $sonCheckBox.each(function () {
                    if ($(this).is(':checked')) {
                        num++;
                    }
                });
                if (num == len) {//若单选框全部被选中，则全选框被选中
                    $wholeChexbox.prop("checked", true);
                    $wholeChexbox.next('label').addClass('mark');
                }
            } else {
                //单个商品取消勾选，全局全选取消勾选
                $wholeChexbox.prop("checked", false);
                $wholeChexbox.next('label').removeClass('mark');
            }
        })
    })

    //=======================================每个店铺checkbox与全选checkbox的关系/每个店铺与其下商品样式的变化===================================================

    //店铺有一个未选中，全局全选按钮取消对勾，若店铺全选中，则全局全选按钮打对勾。
    /*$shopCheckbox.each(function () {
        $(this).click(function () {
            if ($(this).is(':checked')) {
                //判断：店铺全选中，则全局全选按钮打对勾。
                var len = $shopCheckbox.length;
                var num = 0;
                $shopCheckbox.each(function () {
                    if ($(this).is(':checked')) {
                        num++;
                    }
                });
                if (num == len) {
                    $wholeChexbox.prop("checked", true);
                    $wholeChexbox.next('label').addClass('mark');
                }

                //店铺下的checkbox选中状态
                $(this).parents('.cartBox').find('.son_check').prop("checked", true);
                $(this).parents('.cartBox').find('.son_check').next('label').addClass('mark');
            } else {
                //否则，全局全选按钮取消对勾
                $wholeChexbox.prop("checked", false);
                $wholeChexbox.next('label').removeClass('mark');

                //店铺下的checkbox选中状态
                $(this).parents('.cartBox').find('.son_check').prop("checked", false);
                $(this).parents('.cartBox').find('.son_check').next('label').removeClass('mark');
            }
            totalMoney();
        });
    });*/


    //========================================每个店铺checkbox与其下商品的checkbox的关系======================================================

    //店铺$sonChecks有一个未选中，店铺全选按钮取消选中，若全都选中，则全选打对勾
    $cartBox.each(function () {
        var $this = $(this);
        var $sonChecks = $this.find('.son_check');
        $sonChecks.each(function () {
            $(this).click(function () {
                if ($(this).is(':checked')) {
                    //判断：如果所有的$sonChecks都选中则店铺全选打对勾！
                    var len = $sonChecks.length;
                    var num = 0;
                    $sonChecks.each(function () {
                        if ($(this).is(':checked')) {
                            num++;
                        }
                    });
                    if (num == len) {
                        $(this).parents('.cartBox').find('.shopChoice').prop("checked", true);
                        $(this).parents('.cartBox').find('.shopChoice').next('label').addClass('mark');
                    }

                } else {
                    //否则，店铺全选取消
                    $(this).parents('.cartBox').find('.shopChoice').prop("checked", false);
                    $(this).parents('.cartBox').find('.shopChoice').next('label').removeClass('mark');
                }
                totalMoney();
            });
        });
    });


    //=================================================商品数量==============================================
    var $plus = $('.plus'),
        $reduce = $('.reduce'),
        $all_sum = $('.sum');
    $plus.click(function () {
        var $inputVal = $(this).prev('input'),
            $count = parseInt($inputVal.val())+1,
            $obj = $(this).parents('.amount_box').find('.reduce'),
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseFloat($price);
        //alert(parseFloat($priceTotalObj.html()));
        //alert(parseFloat($price));
        //alert(parseFloat($priceTotal));
        var id=$(this).parents('.order_lists').find("[name='goods_id']").val();//children("[name='goods_id']").val();//得到增加数量的商品的id
        var amount=parseInt($count);//得到增加后的数量
        //alert(amount);
        //alert(id);
        $.ajax({
            data:{"goods_id":id,"amount":amount},
            dataType:"text",
            type:"GET",
            url:"../../portal/cart/updateAmount"
        });
        $inputVal.val($count);
        $priceTotalObj.html($priceTotal);
        if($inputVal.val()>1 && $obj.hasClass('reSty')){
            $obj.removeClass('reSty');
        }
        totalMoney();
    });

    $reduce.click(function () {
        var $inputVal = $(this).next('input'),
            $count = parseInt($inputVal.val())-1,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseFloat($price);
        if($inputVal.val()>1){//数量大于1时才能减数量
            $inputVal.val($count);
            $priceTotalObj.html($priceTotal);
            var id=$(this).parents('.order_lists').find("[name='goods_id']").val();//得到减少数量的商品的id
            var amount=parseInt($count);//得到减少后的数量
            //alert(amount);
            //alert(id);
            $.ajax({
                data:{"goods_id":id,"amount":amount},
                dataType:"text",
                type:"GET",
                url:"../../portal/cart/updateAmount"
            });
        }
        if($inputVal.val()==1 && !$(this).hasClass('reSty')){
            $(this).addClass('reSty');
        }
        totalMoney();
    });

    /*$all_sum.keyup(function () {
        var $count = 0,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = 0;
        //alert(parseFloat($price));
        if($(this).val()==''){
            $(this).val('1');
        }
        $(this).val($(this).val().replace(/\D|^0/g,''));
        $count = $(this).val();
        $priceTotal = $count*parseFloat($price);
        $(this).attr('value',$count);
        $priceTotalObj.html($priceTotal);
        totalMoney();
    });*/

    //======================================移除商品========================================


    var $order_lists = null;
    var $order_content = '';
    $('.delBtn').click(function () {
        $order_lists = $(this).parents('.order_lists');
        $order_content = $order_lists.parents('.order_content');
        //$('.model_bg').fadeIn(300);
        $('.my_model').fadeIn(300);
    });

    //关闭模态框
    $('.closeModel').click(function () {
        closeM();
    });
    $('.dialog-close').click(function () {
        closeM();
    });
    function closeM() {
        //$('.model_bg').fadeOut(300);
        $('.my_model').fadeOut(300);
    }
    //确定按钮，移除商品
    $('.dialog-sure').click(function () {
        $order_lists.remove();//移除购物车内的这项商品
        var id=$order_lists.children("[name='goods_id']").val();
        //alert(id);
        $.ajax({
            type:"GET",
            data:{"goods_id":id},
            //data:$.param({id:id}),
            url:"../../portal/cart/delCart", //后台提供的删除接口
            dataType:'text',
            success:function(data){
                if(data == 1){
                    //alert('删除成功');
                    window.location.reload();
                } else {
                    //alert('删除失败，请稍后重试');
                    return false;
                }
            }
        });
        if($order_content.html().trim() == null || $order_content.html().trim().length == 0){
            $order_content.parents('.cartBox').remove();//若店铺的商品均为空，则移除该店铺
        }
        closeM();
        $sonCheckBox = $('.son_check');
        totalMoney();
    });
    //======================================结算==========================================
    $('.settleAccount').click(function () {
        //var id=$('.order_lists').children('[name="goods_id"]').val();
        // alert(id);
        var $sonCheckBox=$('.son_check');
        var ids=[];
        $sonCheckBox.each(function () {
            if ($(this).is(':checked')) {
                var id=$(this).parents('.list_chk').children('[name="goods_id"]').val();
                //console.log(id);
                ids.push(id);
            }
        });
        //当有勾选商品时，才能结算
        if(ids.length>0){
            window.location.href="../../portal/cart/listOrderItem?goods_id="+ids;
            /*$.ajax({
                data:{"ids[]":ids},
                dataType:"text",
                type:"POST",
                url:"../../portal/cart/listOrderItem"
                success:function (data) {
                    //window.location.href="../../portal/pages/order/confirmOrder";
                    //location.href="../../pages/order/order";
                }

            });*/
        }else{
            alert("请选择要结算的商品");
        }
    })

    //======================================总计==========================================

    function totalMoney() {
        var total_money = 0;
        var total_count = 0;
        var calBtn = $('.calBtn a');
        $sonCheckBox.each(function () {
            if ($(this).is(':checked')) {
                var goods = parseFloat($(this).parents('.order_lists').find('.sum_price').html());
                var num =  parseFloat($(this).parents('.order_lists').find('.sum').val());
                //alert(goods);
                // alert(num);
                total_money += goods;
                total_count += num;
                //alert(typeof goods);
            }
        });
        $('.total_text').html(total_money);
        $('.piece_num').html(total_count);

        // console.log(total_money,total_count);

        //结算按钮的颜色变化
        if(total_money!=0 && total_count!=0){
            if(!calBtn.hasClass('btn_sty')){
                calBtn.addClass('btn_sty');
            }
        }else{
            if(calBtn.hasClass('btn_sty')){
                calBtn.removeClass('btn_sty');
            }
        }
    }

});