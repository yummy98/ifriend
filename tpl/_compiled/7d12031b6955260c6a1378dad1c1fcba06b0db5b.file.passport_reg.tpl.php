<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:45:31
         compiled from "D:\wamp\www\upload\tpl\wap\passport_reg.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1062059f5952b0649f7-35789761%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d12031b6955260c6a1378dad1c1fcba06b0db5b' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\passport_reg.tpl',
      1 => 1450142418,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1062059f5952b0649f7-35789761',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'waptpl' => 0,
    'config' => 0,
    'wapfile' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f5952b68f9f9_66914609',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f5952b68f9f9_66914609')) {function content_59f5952b68f9f9_66914609($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["menu_id"] = new Smarty_variable('', null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<div class="reg-layout">


  <div class="reg-wrap">
    <h2>会员帐号信息 必填</h2>
	<div class="reg-itemlist">
	  <dl id="li_email">
	    <dt>邮 箱：</dt>
		<dd><input type="text" id="email" name="email" placeholder="输入有效邮箱" class="input" onblur="checkEmail();" /></dd>
	  </dl>
	  <dl id="li_username">
	    <dt>用户名：</dt>
		<dd><input type="text" id="username" name="username" placeholder="输入用户名称" class="input" onblur="checkUserName();" /></dd>
	  </dl>
	  <dl style="border:none;">
	    <dt>密 码：</dt>
		<dd><input type="password" id="password" name="password" placeholder="输入6~16位密码" class="input" /></dd>
	  </dl>
	  <div class="clear"></div>
	</div>
  </div>
  <!--/reg-wrap End-->


  <div class="reg-wrap">
    <h2>会员基本资料 带*号必填</h2>
	<div class="reg-itemlist">
	  <dl>
	    <dt><font color="red">*</font>所在地区：</dt>
		<dd>
		<span onclick="areaPopup('选择地区', 'dist');" id="dist_text">选择</span>
		<input type="hidden" name="dist1" id="dist1" value="0" />
		<input type="hidden" name="dist2" id="dist2" value="0" />
		<input type="hidden" name="dist3" id="dist3" value="0" />
		</dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>性别：</dt>
		<dd>
		  <select name="gender" id="gender">
		    <option value="">=请选择=</option>
            <option value="1">男</option>
            <option value="2">女</option>
          </select>
		</dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>生日：</dt>
		<dd><input type="text" name="birthday" id="birthday" placeholder="(格式:19920501)" class="input" style="width:120px" /></dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>婚姻：</dt>
		<dd><?php echo cmd_hook(array('mod'=>'var','item'=>'marrystatus','name'=>'marrystatus','type'=>'select','text'=>'=请选择='),$_smarty_tpl);?>
</dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>学历：</dt>
		<dd><?php echo cmd_hook(array('mod'=>'var','item'=>'education','name'=>'education','type'=>'select','text'=>'=请选择='),$_smarty_tpl);?>
</dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>身高：</dt>
		<dd><?php echo cmd_hook(array('mod'=>'height','name'=>'height','text'=>'=请选择=','value'=>'160'),$_smarty_tpl);?>
 CM</dd>
	  </dl>
	  <?php if ($_smarty_tpl->tpl_vars['config']->value['regweight']=='1'){?>
	  <dl>
	    <dt><?php if ($_smarty_tpl->tpl_vars['config']->value['requestweight']=='1'){?><font color="red">*</font><?php }?>体重：</dt>
		<dd><?php echo cmd_hook(array('mod'=>'weight','name'=>'weight','text'=>'=请选择='),$_smarty_tpl);?>
 KG</dd>
	  </dl>
	  <?php }?>
	  <?php if ($_smarty_tpl->tpl_vars['config']->value['reglovesort']=='1'){?>
	  <dl>
	    <dt><?php if ($_smarty_tpl->tpl_vars['config']->value['requestlovesort']=='1'){?><font color="red">*</font><?php }?>交友类型：</dt>
		<dd><?php echo cmd_hook(array('mod'=>'lovesort','type'=>'select','name'=>'lovesort','text'=>'=请选择='),$_smarty_tpl);?>
</dd>
	  </dl>
	  <?php }?>
	  <?php if ($_smarty_tpl->tpl_vars['config']->value['regsalary']=='1'){?>
	  <dl>
	    <dt><?php if ($_smarty_tpl->tpl_vars['config']->value['requestsalary']=='1'){?><font color="red">*</font><?php }?>月薪收入：</dt>
		<dd><?php echo cmd_hook(array('mod'=>'var','item'=>'salary','name'=>'salary','type'=>'select','text'=>'=请选择='),$_smarty_tpl);?>
</dd>
	  </dl>
	  <?php }?>
	  <?php if ($_smarty_tpl->tpl_vars['config']->value['regmobile']=='1'){?>
	  <dl>
	    <dt><?php if ($_smarty_tpl->tpl_vars['config']->value['requestmobile']=='1'){?><font color="red">*</font><?php }?>手机号码：</dt>
		<dd><input type="text" name="mobile" id="mobile" placeholder="输入有效手机号码" class="input" /></dd>
	  </dl>
	  <?php }?>
	  <?php if ($_smarty_tpl->tpl_vars['config']->value['regqq']=='1'){?>
	  <dl>
	    <dt><?php if ($_smarty_tpl->tpl_vars['config']->value['requestqq']=='1'){?><font color="red">*</font><?php }?>QQ号码：</dt>
		<dd><input type="text" name="qq" id="qq" placeholder="输入有效QQ号码" class="input" /></dd>
	  </dl>
	  <?php }?>
	  <?php if ($_smarty_tpl->tpl_vars['config']->value['regidnumber']=='1'){?>
	  <dl>
	    <dt><?php if ($_smarty_tpl->tpl_vars['config']->value['requestidnumber']=='1'){?><font color="red">*</font><?php }?>身份证号：</dt>
		<dd><input type="text" name="idnumber" id="idnumber" placeholder="输入有效身份证号" class="input" /></dd>
	  </dl>
	  <?php }?>
	  <div class="clear"></div>
	</div>
  </div>
  <!--/reg-wrap End-->


 <div class="spanbtn0" id="btn_post">下一步</div>
</div>

<div id="varpop_shade" class="varpop-shade"></div>
<div class="varpop-layout" id='area_box'>
  <div class="varpop-head">
    <span id="area_title">选择</span>
	<i id="area_loading">loading...</i>
  </div>
  <div id="area_data"></div>
  <!--//area_data End-->
</div>
<!--//area_box ajax End-->


<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<script type="text/javascript">
$(function(){

	$("#btn_post").click(function(){ //提交 下一步
		var email = $("#email").val();
		if (email == "") {
			ToastShow("请填写邮箱");
			return false;
		}
		
		var username = $("#username").val();
		if (username == "") {
			ToastShow("请填写用户名");
			return false;
		}
		
		var password = $("#password").val();
		if (password == "") {
			ToastShow("请填写登录密码");
			return false;
		}

		var dist1 = $("#dist1").val();
		var dist2 = $("#dist2").val();
		var dist3 = $("#dist3").val();
		if (dist1 < 1) {
			ToastShow("请选择地区");
			return false;
		}
		if (dist2 < 1) {
			ToastShow("请选择地区");
			return false;
		}

		var gender = $("#gender").val();
		if (gender < 1) {
			ToastShow("请选择性别");
			return false;
		}

		var birthday = $("#birthday").val();
		if (birthday == "") {
			ToastShow("请填写生日");
			return false;
		}

		var marrystatus = $("#marrystatus").val();
		if (marrystatus == "") {
			ToastShow("请选择婚姻");
			return false;
		}

		var education = $("#education").val();
		if (education == "") {
			ToastShow("请选择学历");
			return false;
		}

		var height = $("#height").val();
		if (height == "") {
			ToastShow("请选择身高");
			return false;
		}

		var weight = "";
		<?php if ($_smarty_tpl->tpl_vars['config']->value['regweight']=='1'){?>
		weight = $("#weight").val();
		<?php if ($_smarty_tpl->tpl_vars['config']->value['requestweight']=='1'){?>
		if (weight == "") {
			ToastShow("请选择体重");
			return false;
		}
		<?php }?>
		<?php }?>

		var lovesort = "";
		<?php if ($_smarty_tpl->tpl_vars['config']->value['reglovesort']=='1'){?>
		lovesort = $("#lovesort").val();
		<?php if ($_smarty_tpl->tpl_vars['config']->value['requestlovesort']=='1'){?>
		if (lovesort == "") {
			ToastShow("请选择交友类型");
			return false;
		}
		<?php }?>
		<?php }?>

		var salary = "";
		<?php if ($_smarty_tpl->tpl_vars['config']->value['regsalary']=='1'){?>
		salary = $("#salary").val();
		<?php if ($_smarty_tpl->tpl_vars['config']->value['requestsalary']=='1'){?>
		if (salary == "") {
			ToastShow("请选择月薪收入");
			return false;
		}
		<?php }?>
		<?php }?>

		var mobile = "";
		<?php if ($_smarty_tpl->tpl_vars['config']->value['regmobile']=='1'){?>
		mobile = $("#mobile").val();
		<?php if ($_smarty_tpl->tpl_vars['config']->value['requestmobile']=='1'){?>
		if (mobile == "") {
			ToastShow("请填写手机号码");
			return false;
		}
		<?php }?>
		<?php }?>

		var qq = "";
		<?php if ($_smarty_tpl->tpl_vars['config']->value['regqq']=='1'){?>
		qq = $("#qq").val();
		<?php if ($_smarty_tpl->tpl_vars['config']->value['requestqq']=='1'){?>
		if (qq == "") {
			ToastShow("请填写QQ号码");
			return false;
		}
		<?php }?>
		<?php }?>

		var idnumber = "";
		<?php if ($_smarty_tpl->tpl_vars['config']->value['regidnumber']=='1'){?>
		idnumber = $("#idnumber").val();
		<?php if ($_smarty_tpl->tpl_vars['config']->value['requestidnumber']=='1'){?>
		if (idnumber == "") {
			ToastShow("请填写身份证号");
			return false;
		}
		<?php }?>
		<?php }?>
		
		$("#btn_post").html("注册中，请稍等...");
		$.ajax({
			type: "POST",
			url: "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport",
			cache: false,
			data: {
					a:"regpost", email:email, username:username, password:password,
					dist1:dist1, dist2:dist2, dist3:dist3, gender:gender, birthday:birthday, 
					marrystatus:marrystatus, education:education, height:height, weight:weight,
					lovesort:lovesort, salary:salary, mobile:mobile, qq:qq, idnumber:idnumber, r:get_rndnum(8)
			},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					<?php if ($_smarty_tpl->tpl_vars['config']->value['useraudit']=='1'){?>
					ToastShow("注册成功，请等待审批。");
					setTimeout(function(){
						goUrl("<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
");
					}, 800);
					<?php }else{ ?>
					ToastShow("注册成功");
					setTimeout(function(){
						goUrl("<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport&a=profile");
					}, 800);
					<?php }?>
				}
				else if (response == "2") {
					goUrl(result);
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("注册失败，请检查网络...");
					}
					$("#btn_post").html("下一步");
					
				}
			},
			error: function() {
				ToastShow("提交失败，请检查网络...");
				$("#btn_post").html("下一步");
			}
		});

	});
});


//check username
function checkUserName() {
	var li_tips = $("#li_username");
	var value = $("#username").val();
	if (value == "") {
		ToastShow("用户名不能为空");
		li_tips.addClass("error-border");
		return false;
	}
	else {
		li_tips.removeClass("error-border");
	}
	$.ajax({
		type: "POST",
		url: "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport",
		cache: false,
		data: {a:"checkusername", username:value, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				li_tips.removeClass("error-border");
				ToastShow("用户名可用");
			}
			else {
				li_tips.addClass("error-border");
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("用户名不可用");
				}
			}
		},
		error: function() {
			ToastShow("提交失败，请检查网络...");
		}
	});
}

//check email
function checkEmail() {
	var li_tips = $("#li_email");
	var value = $("#email").val();
	if (value == "") {
		ToastShow("邮箱不能为空");
		li_tips.addClass("error-border");
		return false;
	}
	else {
		li_tips.removeClass("error-border");
	}
	$.ajax({
		type: "POST",
		url: "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport",
		cache: false,
		data: {a:"checkemail", email:value, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				li_tips.removeClass("error-border");
				ToastShow("邮箱可用");
			}
			else {
				li_tips.addClass("error-border");
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("邮箱不可用");
				}
			}
		},
		error: function() {
			ToastShow("提交失败，请检查网络...");
		}
	});
}
</script>
</body>
</html>
<?php }} ?>