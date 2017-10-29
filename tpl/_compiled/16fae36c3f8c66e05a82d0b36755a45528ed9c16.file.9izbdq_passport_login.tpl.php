<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 21:01:46
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_passport_login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:222259f08b3a205fa1-74071096%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16fae36c3f8c66e05a82d0b36755a45528ed9c16' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_passport_login.tpl',
      1 => 1450065834,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '222259f08b3a205fa1-74071096',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'config' => 0,
    'urlpath' => 0,
    'connect' => 0,
    'volist' => 0,
    'forward' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f08b3a6231d6_80185384',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f08b3a6231d6_80185384')) {function content_59f08b3a6231d6_80185384($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_headinc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="page-index" class="page">
  <div class="ce reg">
    <div class="left">
      <div class="loginbox">

        <div class="log_box">
            <div class="form_li  desc">登录网站</div>
            <div class="formtip">
              <p id="login_error_msg" class="color5"></p>
            </div>
            <div class="form_li pas">
              <label class="lo_la">帐&#12288;号：</label>
              <input type="text" name="loginname" id="loginname" value="用户名/邮箱" class="w1" />
            </div>
            <div class="form_li pas">
              <label class="lo_la">密&#12288;码：</label>
              <input type="password" name="password" id="password" class="w1" />
            </div>
			<?php if ($_smarty_tpl->tpl_vars['config']->value['logincode']=='1'){?>
            <div class="form_li pas">
              <label class="lo_la">验证码：</label>
              <input type="text" id="checkcode" name="checkcode" class="w2" />
			  <img id="codeimg" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode" align="middle" />
			  <a href="javascript:refreshCode();"> 换一张</a>
            </div>
			<?php }?>
            <div class="form_li">
			  <a class="btn_a1" href="javascript:;">
			  <button class="login_register" id="but_login">登  录</button>
              </a><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=forget">忘记密码</a>
			</div>
        </div>

        <div class="cooperation">
          <p class="login_list clearfix color3">
		    <span class="li_d">·</span>没有账号？
			<a class="no_ico" href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=reg">立即注册</a><br>
            <span class="li_d" style='display:none;'>·用合作网站账号登录</span>
			<?php $_smarty_tpl->tpl_vars['connect'] = new Smarty_variable(vo_list("mod={connect}"), null, 0);?>
			<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['connect']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
			<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['apiurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['logo'];?>
" /><?php echo $_smarty_tpl->tpl_vars['volist']->value['authname'];?>
</a>
			<?php } ?>
		  </p>
        </div>

      </div>
    </div>
    <div class="right"> 
	  <a class="login" href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=passport&a=reg">没有账号？点击注册&gt;&gt;</a>
	  <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."passport_tips.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

    </div>
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<script language="javascript">
$(function(){

	$("#loginname").bind("click", function(){ //帐号
		$_val = $(this).val();
		if ($_val == "用户名/邮箱") {
			$(this).val("");
		}
	});

	$("#codeimg").bind("click", function(){ //验证码
		$(this).attr("src", "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
source/include/imagecode.php?act=verifycode&"+Math.random());
	});

	$("#but_login").bind("click", function(){ //注册
		$_loginname = $("#loginname").val();
		$_password = $("#password").val();
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
		$_checkcode = $("#checkcode").val();
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