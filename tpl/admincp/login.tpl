<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$page_charset}-->" />
<title>管理员登录-[<!--{$config.sitename}-->]-<!--{$copyright_header}--></title>
<meta name="author" content="<!--{$copyright_author}-->" />
<meta name="generator" content="OElove" />
<link href="<!--{$cppath}-->css/admin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
html{ background:#F2F5F8;}
body{ background:#F2F5F8;}
</style>
<script type='text/javascript' src='<!--{$urlpath}-->tpl/static/js/jquery-1.6.4.min.js'></script>
<!--[if lte IE 6]>
<script type='text/javascript' src='<!--{$cppath}-->js/DD_belatedPNG-min.js'></script>
<script language="javascript">DD_belatedPNG.fix('.login-tit,.admin-logo,.tit');</script>
<![endif]-->
</head>
<body>
<div id="login-wrap">
  <div class="login-main">
    <div class="login-tit">
	  <div class="admin-logo"></div>
	  <div class="tit"></div>
	</div>
	<div class="login-cont">

	  <div class="account1">
	    <label>登录帐号：</label>
		<input class="input-txt w180" id="username" name="username" type="text" /><span id="username_msg"></span>
	  </div>
	  <div class="account1">
	    <label for="">登录密码：</label>
		<input class="input-txt w180" id="password" name="password" type="password" /><span id="password_msg"></span>
	  </div>

	  <!--{if $config.admincode == 1}-->
	  <div class="account2">
	    <label for="">验 证 码：</label>
		<input class="input-txt w180" id="checkcode" name="checkcode" type="text" autocomplete="off" />
		<span id="checkcode_msg"></span>
	  </div>
	  
	  <div class="account3">
	    <img id="checkCodeImg" src="<!--{$urlpath}-->source/include/imagecode.php?act=verifycode" />
		<a href="javascript:refreshCc();">看不清楚，换一张</a>
	  </div>
	  <!--{/if}-->
	  <input class="admin-btn-no" id="login_btn" type="button" value="登 录" />

	</div>
  </div>
</div>
<!--{assign var='pluginevent' value=XHook::doAction('adm_footer')}-->
</body>
</html>
<script language="javascript" type="text/javascript">
function refreshCc() {
	var ccImg = document.getElementById("checkCodeImg");
	if (ccImg) {
		ccImg.src= ccImg.src + '&' +Math.random();
	}
}
//回车键提交
document.onkeypress = function(e) {  
	var code;    
	if (!e) {    
		var e = window.event;    
	}    
	if (e.keyCode) {      
		code = e.keyCode;    
	} 
	else if (e.which) {    
		code = e.which;    
	}  
	if (code==13) {  
		$("#login_btn").click();
		return false;  
	}  
}

$(function(){

	$("#login_btn").click(function(){ //提交
		var username = $("#username").val();
		if(username==""){
			$("#username_msg").html("登录帐号不能为空");
			return false;
		}
		else {
			$("#username_msg").html("");
		}


		var password = $("#password").val();
		if(password == ""){
			$("#password_msg").html("登录密码不能为空");
			return false;
		}
		else {
			$("#password_msg").html("");
		}


		var checkcode = ""
		<!--{if $config.admincode == 1}-->
		checkcode = $("#checkcode").val();
		if(checkcode == ""){
			$("#checkcode_msg").html("验证码不能为空");
			return false;
		}
		else {
			$("#checkcode_msg").html("");
		}
		<!--{/if}-->
		
		$("#login_btn").val("登录中...");
		$.ajax({
			type: "POST",
			url: "<!--{$cpfile}-->?c=login",
			cache: false,
			data: {a:"login", username:username, password:password, checkcode:checkcode, r:"<!--{$time}-->"},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				
				if (response == "1") {
					window.location.href = "<!--{$cpfile}-->?c=frame";
				}
				else {
					if (result.length > 0) {
						alert(result);
					}
					else {
						alert("登录失败");
					}
					$("#login_btn").val("登 录");
				}
			},
			error: function() {
				alert("数据提交错误");
				$("#login_btn").val("登 录");
			}
		});

	});

});

</script>
