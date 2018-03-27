$(function(){

	//聚焦失焦input
	$('input').eq(0).focus(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("支持中文，字母，数字，'-'，'_'的多种组合");
		}
	})
	$('input').eq(1).focus(function(){
		if($(this).val().length==0){
		    $(this).parent().next("div").text("建议使用字母、数字和符号两种以上的组合，6-20个字符");
		}
	})
	$('input').eq(2).focus(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("请再次输入密码");
		}
	})
	$('input').eq(3).focus(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("验证完后，你可以使用该手机登陆和找回密码");
		}
	})
	$('input').eq(4).focus(function(){	
		if($(this).val().length==0){
			$(this).parent().next().next("div").text("看不清？点击图片更换验证码");
		}
	})
	//input各种判断
	//用户名：
	$('input').eq(0).blur(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("");
			$(this).parent().next("div").css("color",'#ccc');
		}else if($(this).val().length>0 && $(this).val().length<4){
			$(this).parent().next("div").text("长度只能在4-20个字符之间");
			$(this).parent().next("div").css("color",'red');
		}else if($(this).val().length>=4&& !isNaN($(this).val())){
			$(this).parent().next("div").text("用户名不能为纯数字");
			$(this).parent().next("div").css("color",'red');
		} else{
            //异步请求查询用户是否存在
            $.ajax({
                type: 'post',
                url: '../../queryByUsernameOrPhone',
                data:{"username":$("#username").val()},
                dataType: 'text',
                success: function (rec) {
                    if (rec == "0") {
							alert(99999);
                        $("input").eq(0).parent().next("div").text("该用户名已被注册");
                        $("input").eq(0).parent().next("div").css("color",'red');
                        return ;
                    } else {
                        $("input").eq(0).parent().next("div").text("用户名可用");
                        $("input").eq(0).parent().next("div").css("color",'green');
                        //$("input").eq(0).parent().next("div").text("");
                    }
                }
            });
            return false;

		}		
	})
	//密码
	$('input').eq(1).blur(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("");
			$(this).parent().next("div").css("color",'#ccc');
		}else if($(this).val().length>0 && $(this).val().length<6){
			$(this).parent().next("div").text("长度只能在6-20个字符之间");
			$(this).parent().next("div").css("color",'red');
		}else{
			$(this).parent().next("div").text("");
		}		
	})
//	确认密码
	$('input').eq(2).blur(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("");
			$(this).parent().next("div").css("color",'#ccc');
		}else if($(this).val()!=$('input').eq(1).val()){
			$(this).parent().next("div").text("两次密码不匹配");
			$(this).parent().next("div").css("color",'red');
		}else{
			$(this).parent().next("div").text("");
		}		
	})
//	手机号
	$('input').eq(3).blur(function(){
		if($(this).val().length==0){
			$(this).parent().next("div").text("");
			$(this).parent().next("div").css("color",'#ccc');
		}else if($(this).val().substr(0,1)!=1 || $(this).val().length!=11){
			$(this).parent().next("div").text("手机号格式不正确");
			$(this).parent().next("div").css("color",'red');
		}else{

            //异步请求查询手机号是否存在
            $.ajax({
                type: 'post',
                url: '../../queryByUsernameOrPhone',
                data:{"mobile_phone":$("#mobile_phone").val()},
                dataType: 'text',
                success: function (rec) {
                    if (rec == "0") {
                        $('input').eq(3).parent().next("div").text("该手机号已被注册");
                        $('input').eq(3).parent().next("div").css("color",'red');
                        return;
                    } else {
                        $('input').eq(3).parent().next("div").text("手机号可用");
                        $('input').eq(3).parent().next("div").css("color",'green');
                        //$('input').eq(3).parent().next("div").text("");
                    }
                }
            });
            return false;

		}		
	})
// 	验证码
//	 验证码刷新
	function code(){
		var str="qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOPLKJHGFDSAZXCVBNM";
		var str1=0;
		for(var i=0; i<4;i++){
			str1+=str.charAt(Math.floor(Math.random()*62)) 
		}
		str1=str1.substring(1)
		$("#code").text(str1);
	}
	code();
	$("#code").click(code);	
//	验证码验证
	$('input').eq(4).blur(function(){
		if($(this).val().length==0){
			$(this).parent().next().next("div").text("");
			$(this).parent().next().next("div").css("color",'#ccc');
		}else if($(this).val().toUpperCase()!=$("#code").text().toUpperCase()){
			$(this).parent().next().next("div").text("验证码不正确");
			$(this).parent().next().next("div").css("color",'red');
		}else{
			$(this).parent().next().next("div").text("");
		}		
	})

//	提交按钮
	$("#submit_btn").click(function(e){		
		for(var j=0 ;j<5;j++){
			if($('input').eq(j).val().length==0){				
				$('input').eq(j).focus();				
				if(j==4){
					$('input').eq(j).parent().next().next("div").text("此处不能为空");
					$('input').eq(j).parent().next().next("div").css("color",'red');
					e.preventDefault();
					return;
				}
				$('input').eq(j).parent().next(".tips").text("此处不能为空");
				$('input').eq(j).parent().next(".tips").css("color",'red');	
				e.preventDefault();
				return;
			}

		}
		//协议
		if($("#xieyi")[0].checked){
            $.ajax({
                type: 'post',
                url: '../../register',
                data:{"username":$("#username").val(),
					"password":$("#password").val(),
					"mobile_phone":$("#mobile_phone").val()},
                dataType: 'text',
                success: function (rec) {
                    if (rec == "1") {
                        alert("注册成功");
                        window.open("../../index","_blank");
                    } else {
                        alert("注册失败");

                    }
                }
            });
            return false;
		}else{
			$("#xieyi").next().next().next(".tips").text("请勾选协议");
			$("#xieyi").next().next().next(".tips").css("color",'red');
			e.preventDefault();
			return;
		}
	})

})
