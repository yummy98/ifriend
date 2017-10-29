<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:47:16
         compiled from "D:\wamp\www\upload\tpl\wap\passport_profile.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2612259f595948ac3d9-50694400%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '501afee67063a313fc288b2af956f9dbdd8d01d1' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\passport_profile.tpl',
      1 => 1434607760,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2612259f595948ac3d9-50694400',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'waptpl' => 0,
    'login' => 0,
    'urlpath' => 0,
    'wapskin' => 0,
    'wapfile' => 0,
    'webappfile' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f59594bbca53_92363654',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f59594bbca53_92363654')) {function content_59f59594bbca53_92363654($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["menu_id"] = new Smarty_variable('', null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<div class="reg-layout">


  <div class="reg2-avatar">
	<div class="img-preview">
	  <?php if (!empty($_smarty_tpl->tpl_vars['login']->value['info']['avatar'])){?>
	  <img id="img_preview" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
<?php echo $_smarty_tpl->tpl_vars['login']->value['info']['avatar'];?>
" />
	  <?php }else{ ?>
	  <?php if ($_smarty_tpl->tpl_vars['login']->value['info']['gender']=="2"){?>
	  <img id="img_preview" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
tpl/static/images/gender_2.gif" />
	  <?php }else{ ?>
	  <img id="img_preview" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
tpl/static/images/gender_1.gif" />
	  <?php }?>
	  <?php }?>
	</div>
	<div class="img-up" style="position:relative;">
	  <h2>上传头像，获得更多惊喜。</h2>
	  <div class="oe_uploadimg_layout">
		<div class="_img_layout_rt" style="width:80%;">
		  <div class="oe_img_upload">
			<label class="_uploadbtn">上传头像<input type="file" name="img" id="img" value="" /></label>
			<label class="_uploading" id="img_loading">
			  <img src="<?php echo $_smarty_tpl->tpl_vars['wapskin']->value;?>
images/loading.gif" />上传中...
			</label>
			<input type="hidden" id="img_thumb" name="img_thumb" value="" />
			<input type="hidden" id="img_url" name="img_url" value="" />
		  </div>
		</div>
		<div class="clear"></div>
	  </div>
	  <script type="text/javascript">
	  $(function(){
		$("#img").live("change", function(){
			oeloveUploadImg("img", "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport&a=upladimg");
		});
	  });
	  </script>

	</div>
	<div class="clear"></div>
  </div>


  <div class="reg-wrap" style="margin-top:15px;">
    <h2>内心独白 (请勿填写联系方式，否则无法通过)</h2>
	<div class="reg-itemlist">
	  <p>
	  <textarea name="content" id="content"></textarea>
	  </p>
	</div>
  </div>
  <!--/reg-wrap End-->
 <div class="spanbtn1" id="btn_post">保存独白</div>
 <p style="padding:10px;color:#666;text-align:center;" onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp');">跳过这一步，进入会员中心</p>

</div>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<script type="text/javascript">
$(function(){
	$("#btn_post").click(function(){
		var content = $("#content").val();
		if (content == "") {
			ToastShow("内心独白不能为空");
			return false;
		}

		$("#btn_post").html("保存中，请稍等...");
		$.ajax({
			type: "POST",
			url: "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport",
			cache: false,
			data: {
					a:"savemonolog", content:content, r:get_rndnum(8)
			},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					ToastShow("保存成功");
					setTimeout(function(){
						goUrl("<?php echo $_smarty_tpl->tpl_vars['webappfile']->value;?>
?c=cp");
					}, 800);
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("保存失败，请检查网络...");
					}
					$("#btn_post").html("保存独白");
					
				}
			},
			error: function() {
				ToastShow("提交失败，请检查网络...");
				$("#btn_post").html("保存独白");
			}
		});


	});
});
</script>
</body>
</html>
<?php }} ?>