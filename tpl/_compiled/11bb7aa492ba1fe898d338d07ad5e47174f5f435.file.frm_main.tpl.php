<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:51:40
         compiled from "D:\wamp\www\upload\tpl\admincp\frm_main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:828159f088dc3eb788-37816633%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11bb7aa492ba1fe898d338d07ad5e47174f5f435' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\admincp\\frm_main.tpl',
      1 => 1435287324,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '828159f088dc3eb788-37816633',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_charset' => 0,
    'copyright_author' => 0,
    'cptplpath' => 0,
    'copyright_header' => 0,
    'cppath' => 0,
    'config' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f088dc908941_12399595',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f088dc908941_12399595')) {function content_59f088dc908941_12399595($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
" />
<meta name="author" content="<?php echo $_smarty_tpl->tpl_vars['copyright_author']->value;?>
" />
<meta name="generator" content="OElove" />
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['cptplpath']->value)."headerjs.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<title>首页-<?php echo $_smarty_tpl->tpl_vars['copyright_header']->value;?>
</title>
<link type="text/css" rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['cppath']->value;?>
css/admin.css" media="screen" />
</head>
<body>
<div class="main-wrap">
<div class="path">
  <p>当前位置：管理首页<span></span></p>
</div>
<div class="main-cont">
  <h3 class="title">产品服务</h3>
  <div class="box">
    <div class="btn-group clear">
	  <a class="btn-general" href="http://www.phpcoo.com/" target="_blank"><span>OElove官方网站</span></a>
	  <a class="btn-general" href="http://bbs.phpcoo.com/" target="_blank"><span>技术论坛</span></a>
	  <a class="btn-general" href="http://www.phpcoo.com/contact" target="_blank"><span>联系客服</span></a>
	  <a class="btn-general" href="mailto:phpcoo@qq.com"><span>意见反馈</span></a>
	  <a class="btn-general" href="http://s.phpcoo.com/" target="_blank"><span>标准版演示</span></a>
	  <a class="btn-general" href="http://e.phpcoo.com/" target="_blank"><span>企业版风格1</span></a>
	  <a class="btn-general" href="http://e.oephp.com/" target="_blank"><span>企业版风格2</span></a>
	</div>
  </div>

  <h3 class="title">官方最新动态</h3>
  <div class="box">
    <ul class="news-item" id="news">
	  <script language="javascript" src="http://www.phpcoo.com/data/include/oecms.php"></script>
	</ul>
  </div>

  <h3 class="title" style='display:block;'>网站基本数据</h3>
  <div class="box" style="display:block;width:700px;">
    <ul class="group-item">
	  <li>会员总数：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countusers']);?>
</span></li>
	  <li>男 会 员：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countmaleusers']);?>
</span></li>
	  <li>女 会 员：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countfemaleusers']);?>
</span></li>
	</ul>
	<ul class="group-item">
	  <li>在线会员：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countonlineusers']);?>
</span></li>
	  <li>信件总数：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countmessages']);?>
</span></li>
	  <li>日记总数：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countdiarys']);?>
</span></li>
	</ul>
	<ul class="group-item">
	  <li>心情播报：<span><?php echo number_format($_smarty_tpl->tpl_vars['config']->value['countweibos']);?>
</span></li>
	</ul>
  </div>
</div>
<div style="clear:both;"></div>
</div>
</body>
</html>

<?php }} ?>