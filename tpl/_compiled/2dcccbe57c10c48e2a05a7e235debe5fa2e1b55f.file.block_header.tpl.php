<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:03:46
         compiled from "D:\wamp\www\upload\tpl\wap\block_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2763559f58b62073d35-41811220%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2dcccbe57c10c48e2a05a7e235debe5fa2e1b55f' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\block_header.tpl',
      1 => 1435287456,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2763559f58b62073d35-41811220',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_title' => 0,
    'copyright_header' => 0,
    'page_description' => 0,
    'page_keyword' => 0,
    'copyright_author' => 0,
    'wapfile' => 0,
    'urlpath' => 0,
    'wapskin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f58b62130891_53947104',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f58b62130891_53947104')) {function content_59f58b62130891_53947104($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['copyright_header']->value;?>
</title>
<meta name="description" content="<?php echo $_smarty_tpl->tpl_vars['page_description']->value;?>
" />
<meta name="keywords" content="<?php echo $_smarty_tpl->tpl_vars['page_keyword']->value;?>
" />
<meta name="author" content="<?php echo $_smarty_tpl->tpl_vars['copyright_author']->value;?>
" />
<meta name="generator" content="OElove" />
<script type="text/javascript">
var WAP_APPFILE = "<?php echo $_smarty_tpl->tpl_vars['wapfile']->value;?>
";
var _ROOT_PATH = "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
";
</script>
<script src="<?php echo $_smarty_tpl->tpl_vars['wapskin']->value;?>
js/jquery.min.js"></script>
<script type="text/javascript">
var WIN_WIDTH = $(window).width();
if ($.browser.mozilla) {
	WIN_WIDTH = window.screen.width; //兼容Mozilla
}
</script>
<script src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
tpl/static/js/ajaxfileupload.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['wapskin']->value;?>
js/iscroll.v4.2.5.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['wapskin']->value;?>
js/toast_OELOVE26FL319L.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['wapskin']->value;?>
js/public_OELOVE26FL319L.js"></script>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['wapskin']->value;?>
style/append_OELOVE26FL319L.css" />
</head>
<body>
<div id="loading"></div>  
<script type="text/javascript">
$(function(){
	setTimeout(function(){
		$("#loading").hide();
		$("#loading").remove();
	}, 100);
});
</script> <?php }} ?>