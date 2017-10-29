<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:27:08
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_blackuser_list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1753759f590dc9b1585-65687744%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8a544132d4f92c90e0a4b7b63773b2bd67af3c39' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_blackuser_list.tpl',
      1 => 1465951722,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1753759f590dc9b1585-65687744',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'urlpath' => 0,
    'gender' => 0,
    'type' => 0,
    'userid' => 0,
    'username' => 0,
    'login' => 0,
    'blackuser' => 0,
    'volist' => 0,
    'showpage' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f590dce5ea01_29224413',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f590dce5ea01_29224413')) {function content_59f590dce5ea01_29224413($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
?><?php $_smarty_tpl->tpl_vars['menuid'] = new Smarty_variable('blackuser', null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_headinc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<form action="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=blackuser" method="post" id="black_serform" style="padding:0;margin:0;">
<div class="oe_blackuser_ser">
  <div class="oe_search_item">
	黑名单搜索：
	<select name="gender" id="gender">
	<option value=''>=性别=</option>
	<option value='2'<?php if ($_smarty_tpl->tpl_vars['gender']->value=='2'){?> selected<?php }?>>女会员</option>
	<option value='1'<?php if ($_smarty_tpl->tpl_vars['gender']->value=='1'){?> selected<?php }?>>男会员</option>
	</select>&nbsp;&nbsp;
	 拉黑原因：<?php echo cmd_hook(array('mod'=>'var','item'=>'blacktype','type'=>'select','name'=>'type','text'=>'=不限=','value'=>$_smarty_tpl->tpl_vars['type']->value),$_smarty_tpl);?>
&nbsp;&nbsp;
	 会员ID：<input type="text" name="userid" id="userid" value="<?php if ($_smarty_tpl->tpl_vars['userid']->value>0){?><?php echo $_smarty_tpl->tpl_vars['userid']->value;?>
<?php }?>" />&nbsp;&nbsp;
	 会员名：<input type="text" name="username" id="username" value="<?php echo $_smarty_tpl->tpl_vars['username']->value;?>
" />&nbsp;&nbsp;
	<i class="_btn2" id="btn_blackser">搜索</i>
  </div>
</div>
</form>
<script type="text/javascript">
$(function(){
	$("#btn_blackser").bind("click", function(){
		$("#black_serform").submit();
	});

});
</script>

<div class="oe_main_layout">
  <div class="oe_main_cont">
  
    <div class="_cont_lt">
	  <h2>
	    <b>黑名单</b>（如发现不良分子或不良行为,请您及时向我们举报！）
		<?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
		<span><a href="###" onclick="artbox_loginbox();">我要举报+</a></span>
		<?php }else{ ?>
		<span><a href="###" onclick="artbox_complaint(0);">我要举报+</a></span>
		<?php }?>
	  </h2>
	  <div class="oe_blackuser_list">
	    <?php if (empty($_smarty_tpl->tpl_vars['blackuser']->value)){?>
	    <h6>没有符合条件的信息</h6>
	    <?php }else{ ?>
	    <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['blackuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	    <dl>
		  <dt><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></dt>
		  <dd>
		    <h2><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</h2>
		    <p>
		    ID：<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
 <?php if ($_smarty_tpl->tpl_vars['volist']->value['gender']=='1'){?>男<?php }else{ ?>女<?php }?> 
		    <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 
		    <?php if ($_smarty_tpl->tpl_vars['volist']->value['height']>0){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['height'];?>
CM<?php }?>
		    </p>
		    <p>拉黑原因：<?php echo cmd_hook(array('mod'=>'var','item'=>'blacktype','type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['blacktype']),$_smarty_tpl);?>
</p>
		  </dd>
		  <i>拉黑时间：<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['blacktime'],"%Y-%m-%d %H:%M");?>
</i>
		  <div class="clear"></div>
	    </dl>
	    <?php } ?>
	    <div class="clear"></div>
	    <?php }?>
	  </div>
	  <!--//oe_blackuser_list End-->
	</div>

	<?php if (!empty($_smarty_tpl->tpl_vars['showpage']->value)){?>
	<div class="page1">
	  <div class="pagecode"><?php echo $_smarty_tpl->tpl_vars['showpage']->value;?>
</div>
	  <div style="clear:both;"></div>
	</div>
	<?php }?>	

	<div class="_cont_rt">
      
	  <div class="oe_right_layout">
	    <div class="oe_blackuser_tip">
	      <h2>帐号为什么被拉黑？<i></i><span></span></h2>
		  <p>
		  导致封号拉黑的行为有：照片不实 资料虚假 玩色情 玩一夜情 找第三者 攻击诽谤 言语不雅 侮辱 骚扰 谩骂 流氓 做托 诈骗 广告 活动违规 发帖违规 乱留联系方式。
		  </p>
	    </div>
	  </div>
	</div>

	<div class="clear"></div>

  </div>
</div>


<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html><?php }} ?>