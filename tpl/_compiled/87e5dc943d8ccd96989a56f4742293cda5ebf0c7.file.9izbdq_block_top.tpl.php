<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:48:40
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_block_top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1288659f08828cc20d6-38684805%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '87e5dc943d8ccd96989a56f4742293cda5ebf0c7' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_block_top.tpl',
      1 => 1465970242,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1288659f08828cc20d6-38684805',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'login' => 0,
    'config' => 0,
    'urlpath' => 0,
    'appfile' => 0,
    'connectlist' => 0,
    'volist' => 0,
    'u' => 0,
    'forward' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f088290d72b3_43347419',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f088290d72b3_43347419')) {function content_59f088290d72b3_43347419($_smarty_tpl) {?><div class="oe_top">
  <div class="oe_topcn">
    <div class="oe_toplogin"> 
      <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
      帐号：<input type="text" name="loginname" id="top_loginname" value="用户名/邮箱" />
      密码：<input type="password" name="password" id="top_password" />
      <?php if ($_smarty_tpl->tpl_vars['config']->value['logincode']=='1'){?>
      验证码：<input type="text" name="checkcode" id="top_checkcode" class="w2" style="width:40px;" maxlength="6" />
      <img src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode" id="top_codeimg" style="vertical-align:middle;" />
      <?php }?>
	  &nbsp;
      <input type="button" value="登 录" class="login_button" id="but_top_submit" />
	  &nbsp;
      <a href="<?php echo $_smarty_tpl->tpl_vars['appfile']->value;?>
?c=passport&a=reg" style="color:red;">点此注册</a>&#12288;
	  <a href="<?php echo $_smarty_tpl->tpl_vars['appfile']->value;?>
?c=passport&a=forget" style="color:#0066cf;">忘记密码?</a>
    
		<?php $_smarty_tpl->tpl_vars['connectlist'] = new Smarty_variable(vo_list("mod={connect}"), null, 0);?>
		<?php if (!empty($_smarty_tpl->tpl_vars['connectlist']->value)){?>
		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['connectlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>&nbsp;
		<a rel="nofollow" href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['apiurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['logo'];?>
" title=" <?php echo $_smarty_tpl->tpl_vars['volist']->value['authname'];?>
" /></a>
		<?php } ?>
		<?php }?>
      <?php }else{ ?> 
      欢迎您：
      <?php if (!empty($_smarty_tpl->tpl_vars['login']->value['info']['levelimg'])){?>
      <?php echo $_smarty_tpl->tpl_vars['login']->value['info']['levelimg'];?>
<?php echo $_smarty_tpl->tpl_vars['login']->value['username'];?>
(ID:<?php echo $_smarty_tpl->tpl_vars['login']->value['userid'];?>
) <span><?php echo $_smarty_tpl->tpl_vars['login']->value['info']['groupname'];?>
</span>
      <?php }else{ ?>
      <?php echo $_smarty_tpl->tpl_vars['u']->value['levelimg'];?>
<?php echo $_smarty_tpl->tpl_vars['login']->value['username'];?>
(ID:<?php echo $_smarty_tpl->tpl_vars['login']->value['userid'];?>
) <span><?php echo $_smarty_tpl->tpl_vars['u']->value['groupname'];?>
</span>
      <?php }?>
	  <?php if ($_smarty_tpl->tpl_vars['login']->value['info']['integrity']=="0"){?>
	  <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=perfect">点击这里激活帐号</a>&nbsp;&nbsp;
	  <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=logout">退出登录</a> 
	  <?php }else{ ?>
      <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php">会员中心</a> | <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=home&uid=<?php echo $_smarty_tpl->tpl_vars['login']->value['userid'];?>
">我的主页</a> | <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=logout">退出登录</a> 
	  <?php }?>
      &#12288;
      <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=vip">升级会员</a> &#12288;<a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=payment">在线充值</a> &#12288;<a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=message">我的信件</a>&#12288;
		<?php if ($_smarty_tpl->tpl_vars['config']->value['oeinterface']['flag']=='1'){?>
		<?php if (empty($_smarty_tpl->tpl_vars['login']->value['info']['oeopenid'])){?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=extend&a=connect" style="color:yellow;">绑定帐号</a>
		<?php }?>
		<?php }?>

      <?php }?> 
    </div>
    <div class="n_tops"><span class="n_tops_1"> <a href="javascript:;" class="waptips" title="在手机浏览器输入“<?php echo $_smarty_tpl->tpl_vars['config']->value['siteurl'];?>
”即可访问。">手机交友</a> </span> <span class="n_tops_2"><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=vip">会员服务</a></span> <span class="n_tops_3"><a href="###" onclick="addfavorite('<?php echo $_smarty_tpl->tpl_vars['config']->value['siteurl'];?>
', '<?php echo $_smarty_tpl->tpl_vars['config']->value['sitename'];?>
');">收藏本站</a></span>
      <div class="cc"></div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<script language="javascript">
$(function(){

	$("#top_loginname").bind("click", function(){ //帐号
		$_val = $(this).val();
		if ($_val == "用户名/邮箱") {
			$(this).val("");
		}
	});

	$("#top_codeimg").bind("click", function(){ //验证码
		$(this).attr("src", "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode&"+Math.random());
	});

	$("#but_top_submit").bind("click", function(){ //注册
		$_loginname = $("#top_loginname").val();
		$_password = $("#top_password").val();
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
		$_checkcode = $("#top_checkcode").val();
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
			data: {a:"loginpost", loginname:$_loginname, password:$_password, checkcode:$_checkcode, fromhalt:"ajax", r:get_rndnum(8)},
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
</script><?php }} ?>