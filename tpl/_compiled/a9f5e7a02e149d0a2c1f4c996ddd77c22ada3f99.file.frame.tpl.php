<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:51:39
         compiled from "D:\wamp\www\upload\tpl\admincp\frame.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1753159f088db2560a7-57464095%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a9f5e7a02e149d0a2c1f4c996ddd77c22ada3f99' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\admincp\\frame.tpl',
      1 => 1435287008,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1753159f088db2560a7-57464095',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_charset' => 0,
    'config' => 0,
    'copyright_header' => 0,
    'copyright_author' => 0,
    'cpfile' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f088db3fa5e3_75379927',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f088db3fa5e3_75379927')) {function content_59f088db3fa5e3_75379927($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
" />
<title>管理中心-[<?php echo $_smarty_tpl->tpl_vars['config']->value['sitename'];?>
]-<?php echo $_smarty_tpl->tpl_vars['copyright_header']->value;?>
</title>
<meta name="author" content="<?php echo $_smarty_tpl->tpl_vars['copyright_author']->value;?>
" />
<meta name="generator" content="OElove" />
<frameset frameborder=10 framespacing=0 border=0 rows="70, *,32">
<frame src="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=frame&a=top" name="top" frameborder=0 NORESIZE SCROLLING='no' marginwidth=0 marginheight=0>
<frameset frameborder=0  framespacing=0 border=0 cols="170,7, *" id="frame-body">
<frame src="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=frame&a=left" frameborder=0 id="menu-frame" name="menu" scrolling="auto" marginwidth="0">
<frame src="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=frame&a=drag" id="drag-frame" name="drag-frame" frameborder="no" scrolling="no">
<frame src="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=frame&a=main" frameborder=0 id="main-frame" name="main">
</frameset>
<frame src="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=frame&a=footer" name="footer" frameborder=0 NORESIZE SCROLLING='no' marginwidth=0 marginheight=0>
</frameset><noframes></noframes>
</html><?php }} ?>