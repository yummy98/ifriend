<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:43:02
         compiled from "D:\wamp\www\upload\tpl\user\block_top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1858359f5868645cbb5-74244526%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '817ef607bf658400c3c92e8a687e0864b4736125' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\user\\block_top.tpl',
      1 => 1390724900,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1858359f5868645cbb5-74244526',
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
  'unifunc' => 'content_59f586864b9614_05823289',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f586864b9614_05823289')) {function content_59f586864b9614_05823289($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['config']->value['usercpskin']=='1'){?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value).((string)$_smarty_tpl->tpl_vars['config']->value['templet'])."/block_top_content.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }else{ ?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_top_content.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }?><?php }} ?>