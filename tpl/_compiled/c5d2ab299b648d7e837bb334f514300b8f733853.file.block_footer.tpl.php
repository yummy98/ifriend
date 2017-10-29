<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:03:46
         compiled from "D:\wamp\www\upload\tpl\wap\block_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2158359f58b628429e4-90521096%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c5d2ab299b648d7e837bb334f514300b8f733853' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\block_footer.tpl',
      1 => 1416801814,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2158359f58b628429e4-90521096',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'wapfile' => 0,
    'config' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f58b6288c4d9_25664035',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f58b6288c4d9_25664035')) {function content_59f58b6288c4d9_25664035($_smarty_tpl) {?><div class="footer-about">
  <span onclick="window.location.href='<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=index&a=about';">关于我们</span> | <span onclick="window.location.href='<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=index&a=contact';">联系我们</span> | <span onclick="window.location.href='<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=index&a=clause';">用户条款</span> | <span onclick="window.location.href='<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
?c=index&a=payment';">付款方式</span><br />
  &copy;<?php echo $_smarty_tpl->tpl_vars['config']->value['sitename'];?>
 版权所有
</div><?php }} ?>