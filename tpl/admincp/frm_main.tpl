<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$page_charset}-->" />
<meta name="author" content="<!--{$copyright_author}-->" />
<meta name="generator" content="OElove" />
<!--{include file="<!--{$cptplpath}-->headerjs.tpl"}-->
<title>首页-<!--{$copyright_header}--></title>
<link type="text/css" rel="stylesheet" href="<!--{$cppath}-->css/admin.css" media="screen" />
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
	  <li>会员总数：<span><!--{$config.countusers|number_format}--></span></li>
	  <li>男 会 员：<span><!--{$config.countmaleusers|number_format}--></span></li>
	  <li>女 会 员：<span><!--{$config.countfemaleusers|number_format}--></span></li>
	</ul>
	<ul class="group-item">
	  <li>在线会员：<span><!--{$config.countonlineusers|number_format}--></span></li>
	  <li>信件总数：<span><!--{$config.countmessages|number_format}--></span></li>
	  <li>日记总数：<span><!--{$config.countdiarys|number_format}--></span></li>
	</ul>
	<ul class="group-item">
	  <li>心情播报：<span><!--{$config.countweibos|number_format}--></span></li>
	</ul>
  </div>
</div>
<div style="clear:both;"></div>
</div>
</body>
</html>

