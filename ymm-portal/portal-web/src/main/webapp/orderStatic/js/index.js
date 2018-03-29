/**
 * Created with JetBrains WebStorm.
 * 首页页面效果.
 */
$(document).ready(function(){
    SetShortCutEffect();//设置顶部快捷菜单效果
    SetCartEffect();//设置购物车效果
    SetCategory();//设置分类导航面板效果
    SetScrollAdvBig(); //设置轮播效果
    SetFixedButtonsAction(); //设置回到顶部动作及微信动画显示
    SetFloorLunBo();//楼层广告轮播
    SetFixedSearch();//固定顶部搜索
	//SetClassify();//设置顶部商品分类菜单的显示与隐藏
    SetTotalMoney();//总金额的计算
    //addressSele();//地址的选择
});

function SetTotalMoney() {
    var totalMoney = 0;
    // var $subTotal = $('.subTotal');
    var $subTotal = $('[name="subTotal"]');
    $subTotal.each(function () {
        var subMoney=parseFloat($(this).parents('.item-row').find('[name="subTotal"]').html());
        totalMoney += subMoney;
    });
    //console.log(totalMoney);
    $('.totalPrice').html(totalMoney);//确认订单的总金额显示
    $('[name="order_money"]').val(totalMoney);//生成订单时的订单总额
};
// function addressSele(){
//     var b=$("#checkoutAddrList").find(".selected").parents('.item').children('.addressNo');
//     alert(b);
// };
$("#checkoutToPay").on("click",function(){//TODO
    var $addressItem=$('.addressItem');
    $addressItem.each(function(){
        // alert(2);
        //debugger;
        if ($(this).find(".selected")) {
            //debugger;
            //alert(3);
            var id=$(this).parents('.item').children('[name="addressNo"]').val();
            alert(id);
        }
    });
});
function addressSele(){
    //var $checkoutAddrList = $('#checkoutAddrList');
    var $addressItem=$('.addressItem');
    // $checkoutAddrList.each(function(){
    $addressItem.each(function(){
        alert(2);
        debugger;
        if ($(this).is(":checked")) {
            debugger;
            alert(3);
            // var id=$(this).parents('.item').children('.addressNo').val();
            // alert(id);
        }
    });
    /*$(".addressItem").click(function(){
        var id=$(this).parents('.item').children('[name="addressNo"]').val();
        console.log(typeof id);
        alert(id);
    });*/
};
function SetShortCutEffect(){
    $('.shortcut_v2013').find(".menu").hover(function(){
        $(this).addClass('hover');
    },function(){
        $(this).removeClass('hover');
    });
};

function SetCartEffect(){
    $("#cart_box").hover(
        function(){
            $(this).addClass("car-current");
        },
        function(){
            $(this).removeClass("car-current");
        }
    );

};

function SetCategory(){
    $("#category>li").hover(
        function(){
            $(this).addClass("hover");
        },
        function(){
            $(this).removeClass("hover");
        }
    );
}

function SetScrollAdvBig(){
    var $slidey = $("#slide-scroll-adv").unslider({
        delay: 3000,//轮播间隔，单位：毫秒
        dots: true
    });
    var data = $slidey.data('unslider');
    $(".scroll_adv_left").click(function(){
        data.prev();
    });
    $(".scroll_adv_right").click(function(){
        data.next();
    });
};

function SetFixedButtonsAction(){
    $("#imgBtn-to-top").on("click", function(){
        var _ele = document.documentElement.scrollTop ? document.documentElement : document.body;
        $(_ele).animate({"scroll-top":0},200);
    });
    var $fixedWeixin = $(".fixed-weixin"),
        $weixinPic = $fixedWeixin.find(".weixin-pic");
    $fixedWeixin.on("transitionend", function(){
        if(!$fixedWeixin.hasClass("show")){
           //$weixinPic.css("display", "none");
        }
    });
    $fixedWeixin.hover(
        function(){
            //$weixinPic.css("display", "block");
            $fixedWeixin.addClass("show");
        },
        function(){
            $fixedWeixin.removeClass("show");
        }
    );

}

//楼层广告轮播
function SetFloorLunBo(){
    $(".f_lunbo").each(function(){
        var obj=$(this);
        if(obj.find("img").size()>0){
            var $slidey = obj.unslider({
                delay: 3000,//轮播间隔，单位：毫秒
                dots: true
            });
            var data = $slidey.data('unslider');
            obj.find(".f_lunbo_left").click(function(){
                data.prev();
            });
            obj.find(".f_lunbo_right").click(function(){
                data.next();
            });
        }
    });
};

function SetFixedSearch(){
    var _top = 200,
        $bg = $(".fixed-bar-bg"),
        $bar = $(".fixed-bar");;
    $(window).scroll(function(){
       if($(window).scrollTop() >= 200){
           if(!$bg.hasClass("show")){
               $bg.addClass("show");
               $bar.addClass("show");
           }
       }else if($bg.hasClass("show")){
           $bg.removeClass("show");
           $bar.removeClass("show");
       }
    });
function SetClassify(){
   $(".menu_show").hover(function() {
    $(".menu_show ul").show();
	},function(){
 		$(".menu_show ul").hide();
	}); 
}	

}


