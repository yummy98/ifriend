<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:03:46
         compiled from "D:\wamp\www\upload\tpl\wap\block_navbar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1246459f58b621a2896-88200273%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2eab16e162b76bc59b690d415a9d84bd4e5f7994' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\block_navbar.tpl',
      1 => 1417268126,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1246459f58b621a2896-88200273',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'menu_id' => 0,
    'wapfile' => 0,
    'login' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f58b622d9531_44312488',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f58b622d9531_44312488')) {function content_59f58b622d9531_44312488($_smarty_tpl) {?><div class="navbar-layout">
  <ul>
    <li<?php if ($_smarty_tpl->tpl_vars['menu_id']->value=='index'){?> class="cur"<?php }?> onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
');">首页</li>
	<li<?php if ($_smarty_tpl->tpl_vars['menu_id']->value=='user'){?> class="cur"<?php }?> onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=user');">搜索</li>
	<li<?php if ($_smarty_tpl->tpl_vars['menu_id']->value=='message'){?> class="cur"<?php }?> onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_message');">信件</li>
	<li<?php if ($_smarty_tpl->tpl_vars['menu_id']->value=='buy'){?> class="cur"<?php }?> onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp_buy');">购买</li>
	<?php if ($_smarty_tpl->tpl_vars['login']->value['status']=="1"){?>
	<li<?php if ($_smarty_tpl->tpl_vars['menu_id']->value=='cp'){?> class="cur"<?php }?> onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=cp')">我的</li>
	<?php }else{ ?>
	<li <?php if ($_smarty_tpl->tpl_vars['menu_id']->value=='login'){?> class="cur"<?php }?> onclick="goUrl('<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=passport&a=login')">登录</li>
	<?php }?>
  </ul>
  <div class="clear"></div>
</div><?php }} ?>