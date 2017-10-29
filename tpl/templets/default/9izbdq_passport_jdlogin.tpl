<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if gt IE 8]><![endif]-->
<html class="no-js" lang="en">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>会员登录</title>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headjs.tpl"}-->
<link rel="stylesheet" href="<!--{$skinpath}-->themes/css/jdlogin.css" />
</head>
<body>
<div class="login_dialog_main">
  <div class="login_dialog_left">
	<h2>会员登录</h2>
	<div class="login_dialog_form">
	  <table>
		<tr>
		  <td>帐号：</td>
		  <td><input type="text" name="loginname" id="jd_loginname" class="input_text" value="用户名/邮箱" /></td>
		</tr>
		<tr>
		  <td>密码：</td>
		  <td><input type="password" name="password" id="jd_password" class="input_text" /></td>
		</tr>
		<!--{if $config.logincode == '1'}-->
		<tr>
		  <td>验证码：</td>
		  <td>
		    <input type="text" class="small_text" id="jd_checkcode" name="checkcode" value="" />
			&nbsp;&nbsp;
			<img id="jd_codeimg" src="<!--{$urlpath}-->source/include/imagecode.php?act=verifycode" align="middle" title="点击换一张" />
		  </td>
		</tr>
		<!--{/if}-->
		<tr>
		  <td height="40"></td>
		  <td style="line-height:20px;">
		    <input type="button" class="btn_red" id="but_jd_submit" value="登 录"  />
			&nbsp;&nbsp;<a href="<!--{$urlpath}-->index.php?c=passport&a=forget" target="_top">忘记密码？</a>
		  </td>
		</tr>
		<tr>
		  <td colspan="2"> 
		  其他合作登录：
		  <!--{assign var='connect' value=vo_list("mod={connect}")}-->
		  <!--{foreach $connect as $volist}-->
		  <a href="<!--{$volist.apiurl}-->" title="<!--{$volist.authname}-->" target="_top"><img src="<!--{$volist.logo}-->" style="vertical-align:middle;" alt="<!--{$volist.authname}-->" /></a>&nbsp;
		  <!--{/foreach}-->
		  </td>
		</tr>
	  </table>
	</div>
  </div>
  <div class="login_dialog_right">
	<h2>新会员注册</h2>
	<div class="reg_dialog">
	  <p>还没有注册会员？</p>
	  <a href="<!--{$urlpath}-->index.php?c=passport&a=reg" class="btn_green" target="_top">马上注册</a> 
	</div>
  </div>
</div>

<script language="javascript">
$(function(){

	$("#jd_loginname").bind("click", function(){ //帐号
		$_val = $(this).val();
		if ($_val == "用户名/邮箱") {
			$(this).val("");
		}
	});

	$("#jd_codeimg").bind("click", function(){ //验证码
		$(this).attr("src", "<!--{$urlpath}-->source/include/imagecode.php?act=verifycode&"+Math.random());
	});

	$("#but_jd_submit").bind("click", function(){ //注册
		$_loginname = $("#jd_loginname").val();
		$_password = $("#jd_password").val();
		$_checkcode = "";

		if ($_loginname == "" || $_loginname == "用户名/邮箱") {
			alert("请填写登录帐号");
			return false;
		}
		if ($_password.length == 0) {
			alert("请填写登录密码");
			return false;
		}
		<!--{if $config.logincode=='1'}-->
		$_checkcode = $("#jd_checkcode").val();
		if ($_checkcode.length == 0) {
			alert("请填写验证码");
			return false;
		}
		<!--{/if}-->
		
		$forward = "<!--{$forward}-->";
		if ($forward.length == 0) {
			$forward = "<!--{$urlpath}-->";
		}
		$.ajax({
			type: "POST",
			url: _ROOT_PATH+"index.php?c=passport",
			cache: false,
			data: {a:"loginpost", loginname:$_loginname, password:$_password, checkcode:$_checkcode, forward:$forward, fromhalt:"ajax", r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				if ($response == "1") {
					window.location.href = $forward;
				}
				else if ($response == "2") {
					window.top.location.href = $result;
				}
				else {
					if ($result.length > 0) {
						alert($result);
					}
					else {
						alert("登录失败，请检查帐号和密码");
					}
				}
			},
			error: function() {
				alert("登录失败，请检查帐号和密码");
			}
		});


	});

});
</script>
</body>
</html>