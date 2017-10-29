<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:47:48
         compiled from "D:\wamp\www\upload\tpl\wap\cp_message.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3273659f595b4c92ab2-90831340%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '28285dd1fcd67998f8c454a05543a94f35c46fed' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\cp_message.tpl',
      1 => 1450151682,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3273659f595b4c92ab2-90831340',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'waptpl' => 0,
    'wapfile' => 0,
    'type' => 0,
    'message' => 0,
    'volist' => 0,
    'urlitem' => 0,
    'page' => 0,
    'needpay' => 0,
    'pagecount' => 0,
    'prepage' => 0,
    'nextpage' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f595b535cb89_63985210',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f595b535cb89_63985210')) {function content_59f595b535cb89_63985210($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
if (!is_callable('smarty_modifier_filterhtml')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.filterhtml.php';
?><?php $_smarty_tpl->tpl_vars["menu_id"] = new Smarty_variable("message", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="cp-bartitle">收信箱 <b onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_outmsg');">发信箱</b></div>
<div class="tab-layout-2">
  <ul>
    <li onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&type=')" style="width:33.3%;"<?php if (empty($_smarty_tpl->tpl_vars['type']->value)){?> class="tab-selected"<?php }?>>全部</li>
    <li onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&type=read')" style="width:33.3%;"<?php if ($_smarty_tpl->tpl_vars['type']->value=='read'){?> class="tab-selected"<?php }?>>已读</li>
    <li onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&type=unread')" style="width:33.3%;"<?php if ($_smarty_tpl->tpl_vars['type']->value=='unread'){?> class="tab-selected"<?php }?>>未读</li>
  </ul>
  <div class="clear"></div>
</div>


  <div class="cplist-box">
    <?php if (empty($_smarty_tpl->tpl_vars['message']->value)){?>
    <h6>没有符合条件的信息</h6>
	<?php }else{ ?>
	<ul id="json_data">
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['message']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <li>
	    <div class="cplist-img" onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['fromuserid'];?>
');">
		  <img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
		  <?php if ($_smarty_tpl->tpl_vars['volist']->value['readflag']=='0'){?>
		  <div class="cplist-new"></div>
		  <?php }?>
		</div>
		<div class="cplist-info">
		  <h2>
		  <?php if ($_smarty_tpl->tpl_vars['volist']->value['readflag']=='0'){?>
		  <span style="color:#333"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['sendtime'],"%m/%d %H:%M");?>
</span>
		  <?php }else{ ?>
		  <span><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['sendtime'],"%m/%d %H:%M");?>
</span>
		  <?php }?>
		  <b onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['fromuserid'];?>
');"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</b>
		  </h2>
		  <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_hook(array('mod'=>'var','item'=>'marrystatus','type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['marrystatus']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
</p>
		  <p>
		  <?php if ($_smarty_tpl->tpl_vars['volist']->value['readflag']=='1'){?>
		    <!--已读-->
		    <i onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&a=readmsg&id=<?php echo $_smarty_tpl->tpl_vars['volist']->value['msgid'];?>
&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
');">已读</i>
		  <?php }else{ ?>
		    <?php if (true===$_smarty_tpl->tpl_vars['needpay']->value){?>
			<i onclick="payView('<?php echo $_smarty_tpl->tpl_vars['volist']->value['msgid'];?>
');">付费看信</i>
			<?php }else{ ?>
		    <i onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&a=readmsg&id=<?php echo $_smarty_tpl->tpl_vars['volist']->value['msgid'];?>
&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
');">免费看信</i>
			<?php }?>
		  <?php }?>
		  <?php echo smarty_modifier_filterhtml($_smarty_tpl->tpl_vars['volist']->value['content'],10);?>
...
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
?c=cp_message&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['prepage']->value;?>
');">上一页</span>  
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['nextpage']->value>0){?>
	<span onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['nextpage']->value;?>
');">下一页</span>  
	<?php }?>
  </div>
  <!--//ShowPage End-->
  <?php }?>

</body>
</html>
<script type="text/javascript">
$(function(){
	//maxwidth
	var max_width = (WIN_WIDTH-100);
	$(".cplist-box .cplist-info").css({"width":max_width});

});
function payView(id) {
	$.ajax({
		type: "POST",
		url: "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message",
		cache: false,
		data: {a:"readpay", id:id, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				goUrl("<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message&a=readmsg&id="+id+"&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
");
			}
			else {
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("付费失败，请先充值。");
				}
			}
		},
		error: function() {
			ToastShow("操作失败，请检查网络状态。");
		}
	});
}
</script><?php }} ?>