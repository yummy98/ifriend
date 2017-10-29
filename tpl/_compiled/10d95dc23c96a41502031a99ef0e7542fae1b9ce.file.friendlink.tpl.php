<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:24:41
         compiled from "D:\wamp\www\upload\tpl\admincp\friendlink.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2621959f59049548e27-92021434%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '10d95dc23c96a41502031a99ef0e7542fae1b9ce' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\admincp\\friendlink.tpl',
      1 => 1434612174,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2621959f59049548e27-92021434',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_charset' => 0,
    'cptplpath' => 0,
    'a' => 0,
    'cpfile' => 0,
    'friendlink' => 0,
    'volist' => 0,
    'urlpath' => 0,
    'total' => 0,
    'pagecount' => 0,
    'showpage' => 0,
    'orders' => 0,
    'id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f59049c26562_77573117',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f59049c26562_77573117')) {function content_59f59049c26562_77573117($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['page_charset']->value;?>
" />
<title>友情链接</title>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['cptplpath']->value)."headerjs.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_head'), null, 0);?>
</head>
<body>
<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_main_top'), null, 0);?>
<?php if ($_smarty_tpl->tpl_vars['a']->value=="run"){?>
<div class="main-wrap">
  <div class="path"><p>当前位置：应用&插件<span>&gt;&gt;</span>扩展应用<span>&gt;&gt;</span>友情链接</p></div>
  <div class="main-cont">
    <h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink&a=add" class="btn-general"><span>添加友情链接</span></a>友情链接</h3>

	<form action="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink" method="post" name="myform" id="myform" style="margin:0">
	<input type='hidden' name='a' id='a'>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
	  <thead class="tb-tit-bg">
	  <tr>
		<th width="8%"><div class="th-gap">选择</div></th>
		<th width="20%"><div class="th-gap">网站名称</div></th>
		<th width="25%"><div class="th-gap">URL</div></th>
		<th width="8%"><div class="th-gap">排序</div></th>
		<th width="8%"><div class="th-gap">状态</div></th>
		<th width="15%"><div class="th-gap">录入时间</div></th>
		<th><div class="th-gap">操作</div></th>
	  </tr>
	  </thead>
	  <tfoot class="tb-foot-bg"></tfoot>

	  <?php if (!empty($_smarty_tpl->tpl_vars['friendlink']->value)){?>
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['friendlink']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <tr onMouseOver="overColor(this)" onMouseOut="outColor(this)">
	    <td align="center"><input name="id[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" onClick="checkItem(this, 'chkAll')"></td>
		<td align="left"><?php echo $_smarty_tpl->tpl_vars['volist']->value['name'];?>
</td>
		<td align="left"><?php echo $_smarty_tpl->tpl_vars['volist']->value['url'];?>
</td>
		<td align="center"><?php echo $_smarty_tpl->tpl_vars['volist']->value['orders'];?>
</td>
		<td align="center">
		<?php if ($_smarty_tpl->tpl_vars['volist']->value['flag']==0){?>
			<input type="hidden" id="attr_flag<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" value="flagopen" />
			<img id="flag<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
tpl/static/images/no.gif" onClick="javascript:fetch_ajax('flag','<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
');" style="cursor:pointer;">
		<?php }else{ ?>
			<input type="hidden" id="attr_flag<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" value="flagclose" />
			<img id="flag<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
tpl/static/images/yes.gif" onClick="javascript:fetch_ajax('flag','<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
');" style="cursor:pointer;">	
		<?php }?>
        </td>
		<td align="center"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['addtime'],"%Y-%m-%d %H:%M");?>
</td>
		<td align="center">
		<a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink&a=edit&id=<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" class="icon-edit">编辑</a>&nbsp;&nbsp;
		<a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink&a=del&id[]=<?php echo $_smarty_tpl->tpl_vars['volist']->value['linkid'];?>
" onClick="{if(confirm('确定要删除吗？')){return true;} return false;}" class="icon-del">删除</a>
		</td>
	  </tr>
	  <?php } ?>
	  <tr>
		<td align="center"><input name="chkAll" type="checkbox" id="chkAll" onClick="checkAll(this, 'id[]')" value="checkbox"></td>
		<td class="hback" colspan="6">
		<input class="button" name="btn_del" type="button" value="删 除" onClick="{if(confirm('确定要删除吗？')){$('#a').val('del');$('#myform').submit();return true;}return false;}" class="button">
		
		&nbsp;&nbsp;共[ <b><?php echo $_smarty_tpl->tpl_vars['total']->value;?>
</b> ]条记录</td>
	  </tr>
	  <?php }else{ ?>
	  <tr>
	    <td colspan="7" align="center">暂无信息</td>
	  </tr>
	  <?php }?>
	</table>
	</form>

	<?php if ($_smarty_tpl->tpl_vars['pagecount']->value>1){?>
	<table width='95%' border='0' cellspacing='0' cellpadding='0' align='center' style="margin-top:10px;">
	  <tr>
		<td align='center'><?php echo $_smarty_tpl->tpl_vars['showpage']->value;?>
</td>
	  </tr>
	</table>
	<?php }?>

  </div>
</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['a']->value=="add"){?>
<div class="main-wrap">
  <div class="path"><p>当前位置：应用&插件<span>&gt;&gt;</span>扩展应用<span>&gt;&gt;</span><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink&a=add">添加友情链接</a></p></div>
  <div class="main-cont">
	<h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink" class="btn-general"><span>返回列表</span></a>添加友情链接</h3>
    <form name="myform" id="myform" method="post" action="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink" onsubmit='return checkform();' />
    <input type="hidden" name="a" value="saveadd" />
	<table cellpadding='1' cellspacing='1' class='tab'>
	  <tr>
		<td class='hback_1' width='15%'>网站名称 <span class="f_red">*</span> </td>
		<td class='hback' width='85%'><input type="text" name="name" id="name" class="input-150" /> <span id='dname' class='f_red'></span> </td>
	  </tr>
	  <tr>
		<td class='hback_1'>网站URL <span class="f_red">*</span> </td>
		<td class='hback'>
		<input type="text" name="url" id="url" class="input-txt" value="http://" /> （以http://开头） <span id='durl' class='f_red'></span></td>
	  </tr>
	  <tr>
		<td class='hback_1'>排 序 </td>
		<td class='hback'><input type="text" name="orders" id="orders" class="input-s" value="<?php echo $_smarty_tpl->tpl_vars['orders']->value;?>
" /> <span id='dorders' class='f_red'></span></td>
	  </tr>
	  <tr>
		<td class='hback_1'>状 态 </td>
		<td class='hback'>
		<input type="radio" name="flag" id="flag" value="1" checked />开启，<input type="radio" name="flag" id="flag" value="0" />关闭
		<span id='dflag' class='f_red'></span>
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>备注说明 </td>
		<td class='hback'>
		 <textarea name="remark" id="remark" style="width:60%;height:100px;overflow:auto;"></textarea>
		 <span id='dremark' class='f_red'></span>
		</td>
	  </tr>

	  <tr>
		<td class='hback_none'></td>
		<td class='hback_none'><input type="submit" name="btn_save" class="button" value="添加保存" /></td>
	  </tr>
	</table>
	</form>
  </div>
  <div style="clear:both;"></div>
</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['a']->value=="edit"){?>
<div class="main-wrap">
  <div class="path"><p>当前位置：应用&插件<span>&gt;&gt;</span>扩展应用<span>&gt;&gt;</span>编辑友情链接</p></div>
  <div class="main-cont">
	<h3 class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink" class="btn-general"><span>返回列表</span></a>编辑友情链接</h3>
    <form name="myform" id="myform" method="post" action="<?php echo $_smarty_tpl->tpl_vars['cpfile']->value;?>
?c=friendlink" />
    <input type="hidden" name="a" value="saveedit" />
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
	<table cellpadding='1' cellspacing='1' class='tab'>
	  <tr>
		<td class='hback_1' width='15%'>网站名称 <span class="f_red">*</span> </td>
		<td class='hback' width='85%'><input type="text" name="name" id="name" class="input-150" value="<?php echo $_smarty_tpl->tpl_vars['friendlink']->value['name'];?>
" /> <span id='dname' class='f_red'></span> </td>
	  </tr>
	  <tr>
		<td class='hback_1'>网站URL <span class="f_red">*</span> </td>
		<td class='hback'>
		<input type="text" name="url" id="url" class="input-txt" value="<?php echo $_smarty_tpl->tpl_vars['friendlink']->value['url'];?>
" /> （以http://开头） <span id='durl' class='f_red'></span></td>
	  </tr>
	  <tr>
		<td class='hback_1'>排 序 </td>
		<td class='hback'><input type="text" name="orders" id="orders" class="input-s" value="<?php echo $_smarty_tpl->tpl_vars['friendlink']->value['orders'];?>
" /> <span id='dorders' class='f_red'></span></td>
	  </tr>
	  <tr>
		<td class='hback_1'>状 态 </td>
		<td class='hback'>
		<input type="radio" name="flag" id="flag" value="1"<?php if ($_smarty_tpl->tpl_vars['friendlink']->value['flag']=='1'){?> checked<?php }?> />开启，
		<input type="radio" name="flag" id="flag" value="0"<?php if ($_smarty_tpl->tpl_vars['friendlink']->value['flag']=='0'){?> checked<?php }?> />关闭
		<span id='dflag' class='f_red'></span>
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>备注说明 </td>
		<td class='hback'>
		 <textarea name="remark" id="remark" style="width:60%;height:100px;overflow:auto;"><?php echo $_smarty_tpl->tpl_vars['friendlink']->value['remark'];?>
</textarea>
		 <span id='dremark' class='f_red'></span>
		</td>
	  </tr>
	  <tr>
		<td class='hback_none'></td>
		<td class='hback_none'><input type="submit" name="btn_save" class="button" value="更新保存" /></td>
	  </tr>
	</table>
	</form>
  </div>
  <div style="clear:both;"></div>
</div>
<?php }?>
<?php $_smarty_tpl->tpl_vars['pluginevent'] = new Smarty_variable(XHook::doAction('adm_footer'), null, 0);?>
</body>
</html>
<script type="text/javascript">
function checkform() {
	var t = "";
	var v = "";

	t = "name";
	v = $("#"+t).val();
	if (v=="") {
		dmsg("网站名称不能为空", t);
		return false;
	}

	t = "url";
	v = $("#"+t).val();
	if (v=="") {
		dmsg("网站URL不能为空", t);
		return false;
	}
	return true;
}
</script>
<?php }} ?>