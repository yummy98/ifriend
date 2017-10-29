<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:51:33
         compiled from "D:\wamp\www\upload\tpl\admincp\login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:513059f088d58fd473-41248518%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fcabcc30eeeb0a17d9bd51dbbf14553c7fee7907' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\admincp\\login.tpl',
      1 => 1435286986,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '513059f088d58fd473-41248518',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_charset' => 0,
    'config' => 0,
    'copyright_header' => 0,
    'copyright_author' => 0,
    'cppath' => 0,
    'urlpath' => 0,
    'cpfile' => 0,
    'time' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f088d5afe084_24570903',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f088d5afe084_24570903')) {function content_59f088d5afe084_24570903($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
" />
<title>管理员登录-[<?php echo $_smarty_tpl->tpl_vars['config']->value['sitename'];?>
]-<?php echo $_smarty_tpl->tpl_vars['copyright_header']->value;?>
</title>
<meta name="author" content="<?php echo $_smarty_tpl->tpl_vars['copyright_author']->value;?>
" />
<meta name="generator" content="OElove" />
<link href="<?php echo $_smarty_tpl->tpl_vars['cppath']->value;?>
css/admin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
html{ background:#F2F5F8;}
body{ background:#F2F5F8;}
</style>
<script type='text/javascript' src='<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
tpl/static/js/jquery-1.6.4.min.js'></script>
<!--[if lte IE 6]>
<script type='text/javascript' src='<?php echo $_smarty_tpl->tpl_vars['cppath']->value;?>
js/DD_belatedPNG-min.js'></script>
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

	  <?php if ($_smarty_tpl->tpl_vars['config']->value['admincode']==1){?>
	  <div class="account2">
	    <label for="">验 证 码：</label>
		<input class="input-txt w180" id="checkcode" name="checkcode" type="text" autocomplete="off" />
		<span id="checkcode_msg"></span>
	  </div>
	  
	  <div class="account3">
	    <img id="checkCodeImg" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode" />
		<a href="javascript:refreshCc();">看不清楚，换一张</a>
	  </div>
	  <?php }?>
	  <input class="admin-btn-no" id="login_btn" type="button" value="登 录" />

	</div>
  </div>
</div>
<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_footer'), null, 0);?>
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
		<?php if ($_smarty_tpl->tpl_vars['config']->value['admincode']==1){?>
		checkcode = $("#checkcode").val();
		if(checkcode == ""){
			$("#checkcode_msg").html("验证码不能为空");
			return false;
		}
		else {
			$("#checkcode_msg").html("");
		}
		<?php }?>
		
		$("#login_btn").val("登录中...");
		$.ajax({
			type: "POST",
			url: "<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=login",
			cache: false,
			data: {a:"login", username:username, password:password, checkcode:checkcode, r:"<?php echo $_smarty_tpl->tpl_vars['time']->value;?>
"},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				
				if (response == "1") {
					window.location.href = "<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=frame";
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
<?php }} ?>