<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:43:03
         compiled from "D:\wamp\www\upload\tpl\user\block_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2328059f586879faf46-20617161%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c236ed40311818d4efaf2e1054eb6c080d46e810' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\user\\block_footer.tpl',
      1 => 1435282044,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2328059f586879faf46-20617161',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'config' => 0,
    'uctplpath' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f58687a347e9_95975651',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f58687a347e9_95975651')) {function content_59f58687a347e9_95975651($_smarty_tpl) {?><div class="user_footer" style="padding-bottom:30px;">
  <?php echo $_smarty_tpl->tpl_vars['config']->value['sitefooter'];?>

</div>
<!--//user_footer End-->
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_popwin.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>