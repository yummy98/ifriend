<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:03:45
         compiled from "D:\wamp\www\upload\tpl\wap\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2006659f58b61994489-38829385%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4310485a11829e202caa6779f6b3316ae2480aa5' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\index.tpl',
      1 => 1417082956,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2006659f58b61994489-38829385',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'waptpl' => 0,
    'login' => 0,
    'eliteuser' => 0,
    'volist' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f58b61f14c36_36512583',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f58b61f14c36_36512583')) {function content_59f58b61f14c36_36512583($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["menu_id"] = new Smarty_variable("index", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<?php if ($_smarty_tpl->tpl_vars['login']->value['status']==1){?>
	<?php if ($_smarty_tpl->tpl_vars['login']->value['info']['gender']==1){?>
		<?php $_smarty_tpl->tpl_vars['eliteuser'] = new Smarty_variable(vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='2'} num={6}"), null, 0);?> 
	<?php }else{ ?>
		<?php $_smarty_tpl->tpl_vars['eliteuser'] = new Smarty_variable(vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='1'} num={6}"), null, 0);?> 
	<?php }?>
<?php }else{ ?>
<?php $_smarty_tpl->tpl_vars['eliteuser'] = new Smarty_variable(vo_list("mod={listuser} type={elite} where={v.avatar='1'} num={6}"), null, 0);?> 
<?php }?>
<div class="index-user-list">
  <ul>
	<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['eliteuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
    <?php if ($_smarty_tpl->tpl_vars['volist']->value['i']=='1'){?>
	<li class="b-li" onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">
	  <img class="b-li-img" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
	  <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
 <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁</p>
	</li>
	<?php }elseif($_smarty_tpl->tpl_vars['volist']->value['i']=='2'){?>
	<li class="s-li" style="margin-bottom:10px;" onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">
	  <img class="s-li-img" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
	  <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
 <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁</p>
	</li>
	<?php }else{ ?>
	  <?php if ($_smarty_tpl->tpl_vars['volist']->value['i']=='5'){?>
	  <li class="s-li" style="margin-left:10px;margin-right:10px;" onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">
	    <img class="s-li-img" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
		<p><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
 <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁</p>
	  </li>
	  <?php }else{ ?>
	  <li class="s-li" onclick="userDetail('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">
	    <img class="s-li-img" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
		<p><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
 <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁</p>
	  </li>
	  <?php }?>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['volist']->value['i']%3=='0'){?>
    </ul>
    <div class="clear"></div>
    <ul style="margin-top:10px;">
    <?php }?>
	<?php } ?>
  </ul>
  <div class="clear"></div>  
</div>
<script type="text/javascript">
	//var scWidth = $(window).width();
	scWidth = WIN_WIDTH;
	var tWidth = (scWidth-10); //减去padding的10px
	//平均分三等份
	var onewidth = parseInt((tWidth-30)/3);
	var oneheight = parseInt(onewidth/110*135); //高度按照110x135缩放比例
	//大图的图片大小：+10margin右边和下边的
	var bigimg_width = (onewidth*2+10);
    var bigimg_height = (oneheight*2+10);
	$(".b-li, .b-li-img").css({"width":bigimg_width+"px", "height":bigimg_height+"px"});
	$(".s-li, .s-li-img").css({"width":onewidth+"px", "height":oneheight+"px"});
	//alert("小图："+onewidth+"x"+oneheight+"大图："+bigimg_width+"x"+bigimg_height);
</script>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['waptpl']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html><?php }} ?>