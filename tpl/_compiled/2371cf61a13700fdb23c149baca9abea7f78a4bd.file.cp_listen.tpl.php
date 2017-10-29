<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:48:03
         compiled from "D:\wamp\www\upload\tpl\wap\cp_listen.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2524159f595c3b3ecd2-39910777%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2371cf61a13700fdb23c149baca9abea7f78a4bd' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\cp_listen.tpl',
      1 => 1450151666,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2524159f595c3b3ecd2-39910777',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'waptpl' => 0,
    'wapfile' => 0,
    'listen' => 0,
    'volist' => 0,
    'pagecount' => 0,
    'page' => 0,
    'prepage' => 0,
    'urlitem' => 0,
    'nextpage' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f595c3f12112_59519887',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f595c3f12112_59519887')) {function content_59f595c3f12112_59519887($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["menu_id"] = new Smarty_variable("cp", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="tab-layout-2">
  <ul>
    <li class="tab-selected" style="width:50%;">我的关注</li>
    <li onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_fans');" style="width:50%;">我的粉丝</li>
  </ul>
  <div class="clear"></div>
</div>

<div class="cp-layout-body">
  <div class="cplist-box">
    <?php if (empty($_smarty_tpl->tpl_vars['listen']->value)){?>
    <h6>没有符合条件的信息</h6>
	<?php }else{ ?>
	<ul id="json_data">
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['listen']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <li id="listen_<?php echo $_smarty_tpl->tpl_vars['volist']->value['fuserid'];?>
">
	    <div class="cplist-img" onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['fuserid'];?>
');"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></div>
		<div class="cplist-info">
		  <h2><i onclick="cancelListen('<?php echo $_smarty_tpl->tpl_vars['volist']->value['fuserid'];?>
');">取消关注</i> <b onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['fuserid'];?>
');"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</b></h2>
		  <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_hook(array('mod'=>'var','item'=>'marrystatus','type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['marrystatus']),$_smarty_tpl);?>
 <?php echo $_smarty_tpl->tpl_vars['volist']->value['astro'];?>
</p>
		  <p>
		  <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 <?php echo cmd_hook(array('mod'=>'var','item'=>'education','type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['education']),$_smarty_tpl);?>
 <?php echo cmd_hook(array('mod'=>'var','item'=>'salary','type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['salary']),$_smarty_tpl);?>

		  </p>
		</div>
		<div class="clear"></div>
	  </li>
	  <?php } ?>
	</ul>
	<div class="clear"></div>
	<?php }?>
  </div>

  <?php if ($_smarty_tpl->tpl_vars['pagecount']->value>1){?>
  <div class="page-layout">
    页次：<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['pagecount']->value;?>

	<?php if ($_smarty_tpl->tpl_vars['prepage']->value>0){?>
	<span onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_listen&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['prepage']->value;?>
');">上一页</span>  
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['nextpage']->value>0){?>
	<span onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_listen&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['nextpage']->value;?>
');">下一页</span>  
	<?php }?>
  </div>
  <!--//ShowPage End-->
  <?php }?>

</div>
</body>
</html>
<script type="text/javascript">
$(function(){
	//maxwidth
	var max_width = (WIN_WIDTH-100);
	$(".cplist-box .cplist-info").css({"width":max_width});

});

//取消关注
function cancelListen(id) {
	if (id > 0) {
		$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=cp_listen&a=cancel",
			cache: false,
			data: {fuid:id, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					ToastShow("操作成功");
					$("#listen_"+id).remove();
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("操作失败，请检查网络...");
					}
				}
			},
			error: function() {
				ToastShow("操作失败，请检查网络...");
			}
		});
	}
}
</script><?php }} ?>