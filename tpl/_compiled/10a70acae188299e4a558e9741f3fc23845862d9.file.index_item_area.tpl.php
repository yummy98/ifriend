<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:46:48
         compiled from "D:\wamp\www\upload\tpl\wap\index_item_area.tpl" */ ?>
<?php /*%%SmartyHeaderCode:870959f59578b41218-32214549%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '10a70acae188299e4a558e9741f3fc23845862d9' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\wap\\index_item_area.tpl',
      1 => 1416884896,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '870959f59578b41218-32214549',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'volistdist1' => 0,
    'val' => 0,
    'dist1' => 0,
    'volistdist2' => 0,
    'dist2' => 0,
    'volistdist3' => 0,
    'dist3' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f59579120c37_12502903',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f59579120c37_12502903')) {function content_59f59579120c37_12502903($_smarty_tpl) {?><div class="varpop-label">
  <ul>
	<li>
	  <i>一级地区：</i>
	  <span>
	  <?php $_smarty_tpl->tpl_vars["volistdist1"] = new Smarty_variable(vo_list("mod={volistdist1}"), null, 0);?>
	  <select name="item_dist1" id="item_dist1">
		<option value="0">选择</option>
		<?php  $_smarty_tpl->tpl_vars['val'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['val']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['volistdist1']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['val']->key => $_smarty_tpl->tpl_vars['val']->value){
$_smarty_tpl->tpl_vars['val']->_loop = true;
?>
		<option value="<?php echo $_smarty_tpl->tpl_vars['val']->value['areaid'];?>
"<?php if ($_smarty_tpl->tpl_vars['dist1']->value==$_smarty_tpl->tpl_vars['val']->value['areaid']){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['val']->value['areaname'];?>
</option>
		<?php } ?>
	  </select>
	  </span>
	  <div class="clear"></div>
	</li>

	<li>
	  <i>二级地区：</i>
	  <span>
	  <select name="item_dist2" id="item_dist2">
		<option value="0">选择</option>
		<?php if ($_smarty_tpl->tpl_vars['dist1']->value>0){?>
		<?php $_smarty_tpl->tpl_vars["volistdist2"] = new Smarty_variable(vo_list("mod={volistdist2} catid={".((string)$_smarty_tpl->tpl_vars['dist1']->value)."}"), null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['val'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['val']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['volistdist2']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['val']->key => $_smarty_tpl->tpl_vars['val']->value){
$_smarty_tpl->tpl_vars['val']->_loop = true;
?>
		<option value="<?php echo $_smarty_tpl->tpl_vars['val']->value['areaid'];?>
"<?php if ($_smarty_tpl->tpl_vars['dist2']->value==$_smarty_tpl->tpl_vars['val']->value['areaid']){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['val']->value['areaname'];?>
</option>
		<?php } ?>
		<?php }?>
	  </select>
	  </span>
	  <div class="clear"></div>
	</li>
	<li>
	  <i>三级地区：</i>
	  <span>
	  <select name="item_dist3" id="item_dist3">
		<option value="0">选择</option>
		<?php if ($_smarty_tpl->tpl_vars['dist2']->value>0){?>
		<?php $_smarty_tpl->tpl_vars["volistdist3"] = new Smarty_variable(vo_list("mod={volistdist2} catid={".((string)$_smarty_tpl->tpl_vars['dist2']->value)."}"), null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['val'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['val']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['volistdist3']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['val']->key => $_smarty_tpl->tpl_vars['val']->value){
$_smarty_tpl->tpl_vars['val']->_loop = true;
?>
		<option value="<?php echo $_smarty_tpl->tpl_vars['val']->value['areaid'];?>
"<?php if ($_smarty_tpl->tpl_vars['dist3']->value==$_smarty_tpl->tpl_vars['val']->value['areaid']){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['val']->value['areaname'];?>
</option>
		<?php } ?>
		<?php }?>
	  </select>
	  </span>
	  <div class="clear"></div>
	</li>
  </ul>
  <div class="clear"></div>
</div>
<!--//varpop-label End-->

<div class="varpop-button">
  <div class="btn-comfirm" id="area-btn-comfirm">确定</div>
  <div class="btn-cancel" id="area-btn-cancel">取消</div>
  <div class="clear"></div>
</div>
<!--//varpop-button End-->
<script type="text/javascript">
$(function(){
	//一级地区切换
	var dist1_value = 0;
	var dist1_text = '';
	$("#item_dist1").bind("change", function(){
		dist1_value = $("#item_dist1").find("option:selected").val();
		dist1_text = $("#item_dist1").find("option:selected").text();
		if (dist1_value == 0) {
			//清空2，3级地区
			$("#item_dist2").empty();
			$("#item_dist3").empty();
		}
		else {
			//获取二级地区
			$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=index&a=getarea",
			cache: false,
			data: {rootid:dist1_value, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				//清空2，3级地区
				$("#item_dist2").empty();
				$("#item_dist3").empty();
				var option_dist2 = "<option value='0'>选择</option>";
				$.each(data,function(entryIndex,entry){
					option_dist2 += "<option value='"+entry.areaid+"'>"+entry.areaname+"</option>";
				});
				$("#item_dist2").append(option_dist2);
			},
			error: function() {
				ToastShow("数据获取失败，请检查网络...");
			}
			});
		}
	});

	//二级级地区切换
	var dist2_value = 0;
	var dist2_text = '';
	$("#item_dist2").bind("change", function(){
		dist2_value = $("#item_dist2").find("option:selected").val();
		dist2_text = $("#item_dist2").find("option:selected").text();
		if (dist2_value == 0) { 
			$("#item_dist3").empty();//清空3级地区
		}
		else {
			//获取二级地区
			$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=index&a=getarea",
			cache: false,
			data: {rootid:dist2_value, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				//清空三级地区
				$("#item_dist3").empty();
				var option_dist3 = "<option value='0'>选择</option>";
				$.each(data,function(entryIndex,entry){
					option_dist3 += "<option value='"+entry.areaid+"'>"+entry.areaname+"</option>";
				});
				$("#item_dist3").append(option_dist3);
			},
			error: function() {
				ToastShow("数据获取失败，请检查网络...");
			}
			});
		}
	});

	//确定回调数据
	$("#area-btn-comfirm").click(function(){
		var return_dist_text = "";
		//一级地区
		var return_dist1_value = $("#item_dist1").find("option:selected").val();
		var retrun_dist1_text = $("#item_dist1").find("option:selected").text();
		
		//二级地区
		var return_dist2_value = $("#item_dist2").find("option:selected").val();
		var retrun_dist2_text = $("#item_dist2").find("option:selected").text();
		
		//三级地区
		var return_dist3_value = $("#item_dist3").find("option:selected").val();
		var retrun_dist3_text = $("#item_dist3").find("option:selected").text();
		if (return_dist1_value == "") {
			return_dist1_value = 0;
		}
		if (return_dist2_value == "") {
			return_dist2_value = 0;
		}
		if (return_dist3_value == "") {
			return_dist3_value = 0;
		}
		
		if (return_dist1_value >0 ) {
			return_dist_text += retrun_dist1_text+" ";
		}
		if (return_dist2_value >0 ) {
			return_dist_text += retrun_dist2_text+" ";
		}
		if (return_dist3_value >0 ) {
			return_dist_text += retrun_dist3_text;
		}
		//选择查询、等操作
		$("#<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
1").val(return_dist1_value);
		$("#<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
2").val(return_dist2_value);
		$("#<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
3").val(return_dist3_value);
		
		$("#<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
_text").html(return_dist_text);
		areaPopClose(); //关闭
	});

	//关闭取消
	$("#area-btn-cancel").click(function(){
		areaPopClose();
	});
});
</script><?php }} ?>