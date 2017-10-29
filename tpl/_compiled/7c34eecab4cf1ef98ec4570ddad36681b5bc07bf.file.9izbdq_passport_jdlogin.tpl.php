<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:54:33
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_passport_jdlogin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1626559f08989468a92-30771068%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7c34eecab4cf1ef98ec4570ddad36681b5bc07bf' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_passport_jdlogin.tpl',
      1 => 1450064318,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1626559f08989468a92-30771068',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'skinpath' => 0,
    'config' => 0,
    'urlpath' => 0,
    'connect' => 0,
    'volist' => 0,
    'forward' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f08989813248_56151725',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f08989813248_56151725')) {function content_59f08989813248_56151725($_smarty_tpl) {?><!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if gt IE 8]><![endif]-->
<html class="no-js" lang="en">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>会员登录</title>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_headjs.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
themes/css/jdlogin.css" />
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
		<?php if ($_smarty_tpl->tpl_vars['config']->value['logincode']=='1'){?>
		<tr>
		  <td>验证码：</td>
		  <td>
		    <input type="text" class="small_text" id="jd_checkcode" name="checkcode" value="" />
			&nbsp;&nbsp;
			<img id="jd_codeimg" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode" align="middle" title="点击换一张" />
		  </td>
		</tr>
		<?php }?>
		<tr>
		  <td height="40"></td>
		  <td style="line-height:20px;">
		    <input type="button" class="btn_red" id="but_jd_submit" value="登 录"  />
			&nbsp;&nbsp;<a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=forget" target="_top">忘记密码？</a>
		  </td>
		</tr>
		<tr>
		  <td colspan="2"> 
		  其他合作登录：
		  <?php $_smarty_tpl->tpl_vars['connect'] = new Smarty_variable(vo_list("mod={connect}"), null, 0);?>
		  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['connect']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
		  <a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['apiurl'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['volist']->value['authname'];?>
" target="_top"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['logo'];?>
" style="vertical-align:middle;" alt="<?php echo $_smarty_tpl->tpl_vars['volist']->value['authname'];?>
" /></a>&nbsp;
		  <?php } ?>
		  </td>
		</tr>
	  </table>
	</div>
  </div>
  <div class="login_dialog_right">
	<h2>新会员注册</h2>
	<div class="reg_dialog">
	  <p>还没有注册会员？</p>
	  <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=reg" class="btn_green" target="_top">马上注册</a> 
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
		$(this).attr("src", "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode&"+Math.random());
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
		<?php if ($_smarty_tpl->tpl_vars['config']->value['logincode']=='1'){?>
		$_checkcode = $("#jd_checkcode").val();
		if ($_checkcode.length == 0) {
			alert("请填写验证码");
			return false;
		}
		<?php }?>
		
		$forward = "<?php echo $_smarty_tpl->tpl_vars['forward']->value;?>
";
		if ($forward.length == 0) {
			$forward = "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
";
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
</html><?php }} ?>