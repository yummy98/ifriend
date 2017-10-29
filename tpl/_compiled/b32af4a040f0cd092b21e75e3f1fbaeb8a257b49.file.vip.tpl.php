<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:43:05
         compiled from "D:\wamp\www\upload\tpl\user\vip.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1648359f58689204ad3-45901267%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b32af4a040f0cd092b21e75e3f1fbaeb8a257b49' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\user\\vip.tpl',
      1 => 1465898378,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1648359f58689204ad3-45901267',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'uctplpath' => 0,
    'ucfile' => 0,
    'u' => 0,
    'g' => 0,
    'lang' => 0,
    'group' => 0,
    'urlpath' => 0,
    'volist' => 0,
    'val' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f5868980f7d8_37158856',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f5868980f7d8_37158856')) {function content_59f5868980f7d8_37158856($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php $_smarty_tpl->tpl_vars["cp_menuid"] = new Smarty_variable("vip", null, 0);?>
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
">会员中心</a> &gt;&gt; 会员升级</div>
  <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


  <div class="main_right">
	
    <!--TAB BEGIN-->
	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item current"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=vip">会员升级</a></li>
		  <li class="tab_item"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=payment">在线充值</a></li>
	    </ul>
	  </div>
    <div class="u_nav_tips">
	您当前所在会员组：<?php echo $_smarty_tpl->tpl_vars['u']->value['levelimg'];?>
 <b><?php echo $_smarty_tpl->tpl_vars['g']->value['groupname'];?>
</b><?php if ($_smarty_tpl->tpl_vars['g']->value['groupid']>1){?>&nbsp;&nbsp;&nbsp;（有效期到 <?php echo $_smarty_tpl->tpl_vars['u']->value['vipenddate_t'];?>
）<?php }?>&nbsp;&nbsp;&nbsp;剩余可用<?php echo $_smarty_tpl->tpl_vars['lang']->value['money'];?>
：<b><font color='green'><?php echo $_smarty_tpl->tpl_vars['u']->value['money'];?>
</font>
	</b>
	</div>

    <div class="div_smallnav_content_hover">
	  <div class="item_title item_margin"><p>会员组</p><span class="shadow"></span></div>
	  <form method="post" id="vip_form" action="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=vip&a=savevip">
      <div class="vip_list">
		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['group']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <div class="vip_title">
		  <img src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
<?php echo $_smarty_tpl->tpl_vars['volist']->value['maleimg'];?>
" align='absmiddle' border='0' />&nbsp;&nbsp;
		  <img src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
<?php echo $_smarty_tpl->tpl_vars['volist']->value['femaleimg'];?>
" align='absmiddle' border='0' />
		  <br /><?php echo $_smarty_tpl->tpl_vars['volist']->value['groupname'];?>

		</div>
        <div style="float:left; line-height:25px;">
		<?php if ($_smarty_tpl->tpl_vars['volist']->value['groupid']==1){?>
		永久 免费
		<?php }else{ ?>
			<?php if (!empty($_smarty_tpl->tpl_vars['volist']->value['commer'])){?>
			<?php  $_smarty_tpl->tpl_vars['val'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['val']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['volist']->value['commer']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['val']->key => $_smarty_tpl->tpl_vars['val']->value){
$_smarty_tpl->tpl_vars['val']->_loop = true;
?>
			<input type="radio" name="viptype" id="viptype" value="<?php echo $_smarty_tpl->tpl_vars['volist']->value['groupid'];?>
_<?php echo $_smarty_tpl->tpl_vars['val']->value['orders'];?>
" />&nbsp;有效<?php echo $_smarty_tpl->tpl_vars['val']->value['days'];?>
天，支付<?php echo $_smarty_tpl->tpl_vars['lang']->value['money'];?>
<?php echo $_smarty_tpl->tpl_vars['val']->value['money'];?>
<?php echo $_smarty_tpl->tpl_vars['lang']->value['money_dot'];?>
，赠送<?php echo $_smarty_tpl->tpl_vars['lang']->value['points'];?>
<?php echo $_smarty_tpl->tpl_vars['val']->value['points'];?>
<br />
			<?php } ?>
			<?php }?>
		<?php }?>
		</div>
        <div style="float:right;">
		<?php if ($_smarty_tpl->tpl_vars['volist']->value['groupid']>1){?>
		<input type="button" value="购买升级" onclick="return checkvip();" class="button-green" />
		<?php }?>
		</div>
        <div class="clear"></div>
        <div class="hr_dashed"></div>
		<?php } ?>

        <div class="item_title item_margin">
		  <p>会员特权</p>
		  <span class="shadow"></span>
		  <span class="rtips">（灰色项表示没有权限，绿色项表示有权限）</span>
		</div>

		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['group']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <div class="tq_list_title"><?php echo $_smarty_tpl->tpl_vars['volist']->value['groupname'];?>
特权</div>
        <div class="tq_list"> 
		<span class="tq_item">每天登录奖励(<?php echo doubleval($_smarty_tpl->tpl_vars['volist']->value['loginpoints']);?>
积分)</span> 
		<span class="tq_item">上传照片(<?php if ($_smarty_tpl->tpl_vars['volist']->value['photo']['photolimit']==1){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['photo']['photonum'];?>
张 <?php }else{ ?> 不限<?php }?>)</span> 
		<span class="tq_item">关注好友(<?php if ($_smarty_tpl->tpl_vars['volist']->value['friend']['friendlimit']==1){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['friend']['friendnum'];?>
 个 <?php }else{ ?> 不限<?php }?>)</span> 

		<span class="tq_item">每天发信(<?php if ($_smarty_tpl->tpl_vars['volist']->value['msg']['daysendslimit']=='1'){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['msg']['daysends'];?>
 封 <?php }else{ ?> 不限<?php }?>)</span> 
		<span class="tq_item">每天看信(<?php if ($_smarty_tpl->tpl_vars['volist']->value['msg']['dayviewslimit']=='1'){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['msg']['dayviews'];?>
 封 <?php }else{ ?> 不限<?php }?>)</span> 

		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['msg']['msgistop']=='1'){?> ee<?php }else{ ?> cc<?php }?>">信件置顶</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['viewcontact']=='1'){?> ee<?php }else{ ?> cc<?php }?>">查看会员联系方式</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['viewlogintime']=='1'){?> ee<?php }else{ ?> cc<?php }?>">查看会员登录情况</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['viewvisitor']=='1'){?> ee<?php }else{ ?> cc<?php }?>">查看最近访客</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['viewmatch']=='1'){?> ee<?php }else{ ?> cc<?php }?>">查看缘分速配</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['useadvsearch']=='1'){?> ee<?php }else{ ?> cc<?php }?>">使用会员高级搜索</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['viewonlineuser']=='1'){?> ee<?php }else{ ?> cc<?php }?>">访问会员在线页面</span> 
		<span class="tq_item<?php if ($_smarty_tpl->tpl_vars['volist']->value['view']['viewcredit']=='1'){?> ee<?php }else{ ?> cc<?php }?>">诚信查询</span>
		</div>
        <div class="clear"></div>
		<?php } ?>

      </div>
	  <!--// vip_list End-->
	  </form>

    </div>
	<!--//div_smallnav_content_hover End-->

  </div>
  <div class="clear"> </div>
  <!--//main_right End-->


</div>
<div class="_margin"></div>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html>
<script language="javascript">
function checkvip(){
	var t = "";
	t = 'viptype';
	var item = $("input[name='viptype']:checked");
	var len  = item.length;
	if(len==0) {
		$.dialog({
			lock:true,
			title: '错误',
			content: '请选择要升级的类别(有效期)', 
			icon: 'error',
			button: [{name: '确定'}]
		});
		return false;
	}
	<?php if ($_smarty_tpl->tpl_vars['u']->value['vip']==1){?>
		$.dialog({
			lock:true,
			title: '温馨提示',
			content: '您当前所在的会员组还没有到期，确定重新升级？', 
			icon: 'warning',
			button: [
				{
					name: '确定',
					callback: function () {
						$('#vip_form').submit();
						return true;
					}
				}, 
				{
					name: '取消'
				}
			]
		});
	<?php }else{ ?>
		$.dialog({
			lock:true,
			title: '温馨提示',
			content: '确定要升级吗？', 
			icon: 'warning',
			button: [
				{
					name: '确定',
					callback: function () {
						$('#vip_form').submit();
						return true;
					}
				}, 
				{
					name: '取消'
				}
			]
		});
	<?php }?>
}
</script>
<?php }} ?>