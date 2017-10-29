<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:46:42
         compiled from "D:\wamp\www\upload\tpl\templets\default\imgcropper.regavatar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2733659f59572a7ed53-17651528%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9bbd0cd3e01acc2d90f7e1b0babe6612d9384b44' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\imgcropper.regavatar.tpl',
      1 => 1355979916,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2733659f59572a7ed53-17651528',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'config' => 0,
    'imgurl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f59572b18154_49491040',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f59572b18154_49491040')) {function content_59f59572b18154_49491040($_smarty_tpl) {?><table width="580px" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="300px">
	  <div id="bgDiv">
        <div id="dragDiv">
          <div id="rRightDown"> </div>
          <div id="rLeftDown"> </div>
          <div id="rRightUp"> </div>
          <div id="rLeftUp"> </div>
          <div id="rRight"> </div>
          <div id="rLeft"> </div>
          <div id="rUp"> </div>
          <div id="rDown"></div>
        </div>
      </div>
	  <br />
	</td>
    <td align="center" width="280px" valign="top">
	  <table width="90%" border="0" cellspacing="0" cellpadding="0" class="dragTable" style="margin-left:5px;">
	    <tr>
		  <td class="dragTable"><div id="viewDiv" style="width:<?php echo $_smarty_tpl->tpl_vars['config']->value['avatarwidth'];?>
px; height:<?php echo $_smarty_tpl->tpl_vars['config']->value['avatarheight'];?>
px;"></div></td>
		</tr>
		<tr>
		  <td class="dragTable"><b>效果预览</b></td>
		</tr>
		<tr>
		  <td class="dragTable"><font color="#999999">形象照大小为<?php echo $_smarty_tpl->tpl_vars['config']->value['avatarwidth'];?>
x<?php echo $_smarty_tpl->tpl_vars['config']->value['avatarheight'];?>
像素</font></td>
		</tr>
		<tr>
		  <td align="left" class="dragTable">
			1、请上传您的单人真实照片，要求五官清晰，近期生活照片，确保审核通过；<br />
			2、请勿上传：非本人、戴墨镜、戴口罩、侧面、背影、与现年龄不符、多人合影、裸露、带有政治色彩等照片，否则将予以删除；<br />
			3、请勿上传模糊、非主流、明星、网络红人、低俗暴力等照片，否则将予以删除；
		  </td>
		</tr>
		<tr>
		  <td align="center" height="40px"><input type="button" class="button_register" name='btn_save' value="裁剪保存" onclick="cutImage();" style="cursor:pointer;" /></td>
		</tr>
	  </table>
	</td>
  </tr>
</table>
<script>
var ic = new ImgCropper("bgDiv", "dragDiv", "<?php echo $_smarty_tpl->tpl_vars['imgurl']->value;?>
", {
	Width: 300, Height: 368, Color: "#ffffff",
	Resize: true,
	Scale: true,
	Opacity: 80,
	Right: "rRight", Left: "rLeft", Up:	"rUp", Down: "rDown",
	RightDown: "rRightDown", LeftDown: "rLeftDown", RightUp: "rRightUp", LeftUp: "rLeftUp",
	Preview: "viewDiv", viewWidth: <?php echo $_smarty_tpl->tpl_vars['config']->value['avatarwidth'];?>
, viewHeight: <?php echo $_smarty_tpl->tpl_vars['config']->value['avatarheight'];?>

})
function cutImage() {
	//需要会员登录
	var p = ic.Url;
	var o = ic.GetPos();
	var x = o.Left;
	var y = o.Top;
	var w = o.Width;
	var h = o.Height;
	var pw = ic._layBase.width;
	var ph = ic._layBase.height;
	setAvatar('<?php echo $_smarty_tpl->tpl_vars['imgurl']->value;?>
', x, y, w, h, pw, ph, 'reg');
}
</script>
<?php }} ?>