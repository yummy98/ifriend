<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:48:06
         compiled from "D:\wamp\www\upload\tpl\wap\cp_fans.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1878259f595c61ac2b5-36705599%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f95cf4671646dd1aefa453ad95bcf294bab3181e' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\cp_fans.tpl',
      1 => 1450151628,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1878259f595c61ac2b5-36705599',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'waptpl' => 0,
    'wapfile' => 0,
    'fans' => 0,
    'volist' => 0,
    'pagecount' => 0,
    'page' => 0,
    'prepage' => 0,
    'urlitem' => 0,
    'nextpage' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f595c6766971_91291035',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f595c6766971_91291035')) {function content_59f595c6766971_91291035($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["menu_id"] = new Smarty_variable("cp", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="tab-layout-2">
  <ul>
    <li onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_listen');" style="width:50%;">我的关注</li>
    <li class="tab-selected" style="width:50%;">我的粉丝</li>
  </ul>
  <div class="clear"></div>
</div>
<div class="cp-layout-body">

  <div class="cplist-box">
    <?php if (empty($_smarty_tpl->tpl_vars['fans']->value)){?>
    <h6>没有符合条件的信息</h6>
	<?php }else{ ?>
	<ul id="json_data">
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['fans']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <li onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">
	    <div class="cplist-img"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></div>
		<div class="cplist-info">
		  <h2><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</h2>
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
  <!--//list End-->


  <?php if ($_smarty_tpl->tpl_vars['pagecount']->value>1){?>
  <div class="page-layout">
    页次：<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['pagecount']->value;?>

	<?php if ($_smarty_tpl->tpl_vars['prepage']->value>0){?>
	<span onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_fans&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
&page=<?php echo $_smarty_tpl->tpl_vars['prepage']->value;?>
');">上一页</span>  
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['nextpage']->value>0){?>
	<span onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_fans&<?php echo $_smarty_tpl->tpl_vars['urlitem']->value;?>
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
</script><?php }} ?>