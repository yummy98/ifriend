<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:02:57
         compiled from "D:\wamp\www\upload\tpl\admincp\templet.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3024659f57d21be2b06-56705445%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b40e473c78580cf2a4bc2da034c0dea4a1fc345d' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\admincp\\templet.tpl',
      1 => 1435287140,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3024659f57d21be2b06-56705445',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_charset' => 0,
    'copyright_header' => 0,
    'copyright_author' => 0,
    'cptplpath' => 0,
    'fromtype' => 0,
    'a' => 0,
    'cpfile' => 0,
    'usingskin' => 0,
    'dir' => 0,
    'now_dir' => 0,
    'templets' => 0,
    'volist' => 0,
    'filename' => 0,
    'id' => 0,
    'content' => 0,
    'inputid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f57d225aec41_95560724',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f57d225aec41_95560724')) {function content_59f57d225aec41_95560724($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
" />
<title>模板文件-<?php echo $_smarty_tpl->tpl_vars['copyright_header']->value;?>
</title>
<meta name="author" content="<?php echo $_smarty_tpl->tpl_vars['copyright_author']->value;?>
" />
<meta name="generator" content="OElove" />
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['cptplpath']->value)."headerjs.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php if ($_smarty_tpl->tpl_vars['fromtype']->value!='jdbox'){?>
<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_head'), null, 0);?>
<?php }?>
</head>
<body>
<?php if ($_smarty_tpl->tpl_vars['fromtype']->value!='jdbox'){?>
<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_main_top'), null, 0);?>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['a']->value=="run"){?>
<div class="main-wrap">
  <div class="path"><p>当前位置：界面模板<span>&gt;&gt;</span>模板文件</p></div>
  <div class="main-cont">
    <h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=setting&a=main_style" class="btn-general"><span>配置界面风格</span></a>正在使用的主题模板</h3>

    <table cellspacing="10" cellpadding="0" width="80%" border="0">
      <tr>
        <td width="27%">
		<img src="<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['preview'];?>
" width="240" height="180"  border="1" />	  
		</td>
		<td width="73%" style="line-height:25px;">
	    <?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tplname'];?>
 <em><?php echo $_smarty_tpl->tpl_vars['usingskin']->value['version'];?>
</em><br>
	    <?php echo $_smarty_tpl->tpl_vars['usingskin']->value['author'];?>
<br>
	    <?php echo $_smarty_tpl->tpl_vars['usingskin']->value['forversion'];?>
<br>
		<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['lastupdate'];?>
<br />
	    <p><?php echo $_smarty_tpl->tpl_vars['usingskin']->value['desc'];?>
</p>
	    </td>
      </tr>
    </table>


    <h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet" class="btn-general"><span>返回模板根目录</span></a><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet&dir=<?php echo urlencode($_smarty_tpl->tpl_vars['dir']->value);?>
" class="btn-general"><span>当前目录：<?php echo $_smarty_tpl->tpl_vars['now_dir']->value;?>
</span></a>正在使用的主题模板文件</h3>
	<div class="search-area ">
	  <div class="item">
	  1、编辑，删除模板文件，必须确保目录“tpl/templets/<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tpldir'];?>
”有写入，删除权限，否则无法使用；<br />
	  2、文件必须为“<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
”格式，修改和删除文件时请检查文件的使用情况，以免影响网站正常运行。
	  </div>
	</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
	  <thead class="tb-tit-bg">
	  <tr>
	    <th width="10%"><div class="th-gap">编号</div></th>
		<th width="10%"><div class="th-gap">类型</div></th>
		<th width="30%"><div class="th-gap">文件名</div></th>
		<th width="15%"><div class="th-gap">大小</div></th>
		<th width="18%"><div class="th-gap">最后修改时间</div></th>
		<th><div class="th-gap">操作</div></th>
	  </tr>
	  </thead>
	  <tfoot class="tb-foot-bg"></tfoot>
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['templets']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <tr onMouseOver="overColor(this)" onMouseOut="outColor(this)">
	    <td align="center"><?php echo $_smarty_tpl->tpl_vars['volist']->value['i'];?>
</td>
		<td align="center"><?php if ($_smarty_tpl->tpl_vars['volist']->value['type']==1){?><font color="green"><b>目录</b></font><?php }else{ ?><font color="blue"><b>文件</b></font><?php }?></td>
		<td align="left"><?php echo $_smarty_tpl->tpl_vars['volist']->value['filename'];?>
</td>
		<td align="center"><?php echo $_smarty_tpl->tpl_vars['volist']->value['size'];?>
 Bytes</td>
		<td align="center"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['timeline'],"%Y-%m-%d %H:%H:%S");?>
</td>
		<td align="center">
		<?php if ($_smarty_tpl->tpl_vars['volist']->value['type']==1){?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet&dir=<?php echo urlencode($_smarty_tpl->tpl_vars['volist']->value['dir']);?>
" class="icon-show">打开</a>
		<?php }else{ ?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet&a=edit&id=<?php echo urlencode($_smarty_tpl->tpl_vars['volist']->value['filepath']);?>
" class="icon-edit">修改</a>
		<?php }?>
		
		</td>
	  </tr>
	  <?php }
if (!$_smarty_tpl->tpl_vars['volist']->_loop) {
?>
      <tr>
	    <td colspan="6" align="center">对不起，该目录没有文件！</td>
	  </tr>
	  <?php } ?>
	</table>
  </div>
</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['a']->value=="edit"){?>
<div class="main-wrap">
  <div class="path"><p>当前位置：界面模板<span>&gt;&gt;</span>模板文件<span>&gt;&gt;</span>编辑文件</p></div>
  <div class="main-cont">

    <h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=setting&a=main_style" class="btn-general"><span>配置界面风格</span></a>正在使用的主题模板</h3>

    <table cellspacing="10" cellpadding="0" width="80%" border="0">
      <tr>
        <td width="27%">
		<img src="<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['preview'];?>
" width="240" height="180"  border="1" />	  
		</td>
		<td width="73%" style="line-height:25px;">
	    <?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tplname'];?>
 <em><?php echo $_smarty_tpl->tpl_vars['usingskin']->value['version'];?>
</em><br>
	    <?php echo $_smarty_tpl->tpl_vars['usingskin']->value['author'];?>
<br>
	    <?php echo $_smarty_tpl->tpl_vars['usingskin']->value['forversion'];?>
<br>
		<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['lastupdate'];?>
<br />
	    <p><?php echo $_smarty_tpl->tpl_vars['usingskin']->value['desc'];?>
</p>
	    </td>
      </tr>
    </table>

    <h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet" class="btn-general"><span>返回模板根目录</span></a><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet&dir=<?php echo urlencode($_smarty_tpl->tpl_vars['dir']->value);?>
" class="btn-general"><span>当前目录：<?php echo $_smarty_tpl->tpl_vars['dir']->value;?>
</span></a>编辑模板文件</h3>
	<div class="search-area ">
	  <div class="item">
	  1、编辑，删除模板文件，必须确保目录“tpl/templets/<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tpldir'];?>
”有写入，删除权限，否则无法使用；<br />
	  2、文件必须为“<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
”格式，修改和删除文件时请检查文件的使用情况，以免影响网站正常运行。
	  </div>
	</div>
    <form name="myform" id="myform" method="post" action="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=templet&a=saveedit" onsubmit='return checkform();' />
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['filename']->value;?>
" />
	<input type="hidden" name="dir" value="<?php echo $_smarty_tpl->tpl_vars['dir']->value;?>
" />
	<table cellpadding='3' cellspacing='3' class='tab'>
	  <tr>
		<td class='hback_1' width="10%">文件名 </td>
		<td class='hback' width="80%"><b><font color="blue">tpl/templets/<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tpldir'];?>
<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
</font></b></td>
	  </tr>
	  <tr>
		<td class='hback_1'>文件内容 <span class='f_red'>*</span></td>
		<td class='hback'><textarea name="content" id="content" style="width:98%;height:300px;display:;overflow:auto;"><?php echo $_smarty_tpl->tpl_vars['content']->value;?>
</textarea>  <br /><span id='dcontent' class='f_red'></span></td>
	  </tr>
	  <tr>
		<td class='hback_none'></td>
		<td class='hback_none'><input type="submit" name="btn_save" class="button" value="编辑保存" /></td>
	  </tr>
	</table>
	</form>
  </div>
  <div style="clear:both;"></div>
</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['a']->value=="select"){?>
<div class="main-wrap">
  <div class="main-cont">
    <h3 class="title">正在使用的主题 [<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tplname'];?>
] 模板目录：tpl/templets/<?php echo $_smarty_tpl->tpl_vars['usingskin']->value['tpldir'];?>
</h3>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
	  <thead class="tb-tit-bg">
	  <tr>
	    <th width="10%"><div class="th-gap">序号</div></th>
		<th width="35%"><div class="th-gap">模板文件名</div></th>
		<th width="15%"><div class="th-gap">大小</div></th>
		<th width="25%"><div class="th-gap">最后修改时间</div></th>
		<th><div class="th-gap">选择</div></th>
	  </tr>
	  </thead>
	  <tfoot class="tb-foot-bg"></tfoot>
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['templets']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <tr onMouseOver="overColor(this)" onMouseOut="outColor(this)">
	    <td align="center"><?php echo $_smarty_tpl->tpl_vars['volist']->value['i'];?>
</td>
		<td align="left"><?php echo $_smarty_tpl->tpl_vars['volist']->value['filename'];?>
</td>
		<td align="center"><?php echo $_smarty_tpl->tpl_vars['volist']->value['size'];?>
 Bytes</td>
		<td align="center"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['timeline'],"%Y-%m-%d %H:%H:%S");?>
</td>
		<td align="center"><a href="javascript:void(0);" onclick="selecttpl('<?php echo $_smarty_tpl->tpl_vars['inputid']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['volist']->value['tplname'];?>
')">选择</a></td>
	  </tr>
	  <?php }
if (!$_smarty_tpl->tpl_vars['volist']->_loop) {
?>
      <tr>
	    <td colspan="5" align="center">对不起，该主题下没有tpl模板，请检查。</td>
	  </tr>
	  <?php } ?>
	</table>
  </div>
</div>
<?php }?>


<?php if ($_smarty_tpl->tpl_vars['fromtype']->value!='jdbox'){?>
<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_footer'), null, 0);?>
<?php }?>
</body>
</html>
<script type="text/javascript">
//编辑验证
function checkform() {
	var t = "";
	var v = "";

	t = "content";
	v = $("#"+t).val();
	if(v=="") {
		dmsg("模板文件内容不能为空", t);
		return false;
	}
	return true;
}
//选择模板文件
function selecttpl(inputid, tplname) {
	window.parent.$('#'+inputid).val(tplname);
	window.parent.tb_remove();
}
</script>
<?php }} ?>