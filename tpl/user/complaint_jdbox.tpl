<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<style type="text/css">
.report_main {
	padding:5px 20px 5px 20px;
}
.report_main table td {
	height:36px;line-height:25px;
}
.report_type {
	border:1px solid #ccc;
	padding:5px 10px;
	line-height:20px;
	cursor:pointer;
	color:Gray;
}
.report_type_hover {
	border:1px solid red;
	background:#f0f0f0;
	padding:5px 10px;
	line-height:20px;
	cursor:pointer;
	color:#000;
}
</style>
<script type="text/javascript">
$(function () {
	//提交投诉
	$("#btn_post").click(function () {
		if ($("#uid").val().length == 0) {
			ToastTips("请填写举报对象ID");
			return false;
		}
		if ($("#cptype").val() == '') {
			ToastTips("请选择举报类型");
			return false;
		}
		if ($("#content").val() == '') {
			ToastTips("请填写情况说明");
			return false;
		}
		if ($("#telephone").val() == '') {
			ToastTips("请填写联系电话");
			return false;
		}
		if ($("#email").val() == '') {
			ToastTips("请填写联系邮箱");
			return false;
		}

		$("#myform").submit();		
	});
});

//选择类别
function select_cptype(type) {
	$("#cptype").val(type);
}
</script>
</head>
<form name="myform" id="myform" action="<!--{$ucfile}-->?c=complaint&halttype=jdbox" method="post">
<input type="hidden" name="a" id="a" value="savecomplaint" />
<div class="report_main">
  <table width="98%">
    <tr>
	  <td>举报对象ID：</td>
	  <td>
	  <input type="text" name="uid" id="uid" value="<!--{if $uid > 0}--><!--{$uid}--><!--{/if}-->" />
		<!--{if !empty($tauser)}-->
	  （<!--{$tauser.username}--> <!--{if $tauser.gender=='1'}-->男<!--{else}-->女<!--{/if}--> <!--{$tauser.age}-->岁）
	  <!--{/if}-->
	  </td>
	</tr>
	<tr>
	  <td width="20%">举报类型：</td>
	  <td><!--{hook mod='var' item='blacktype' type='select' name='cptype' text='=请选择='}--></td>
	</tr>
	<tr>
	  <td>情况说明：</td>
	  <td>
	    <textarea name="content" id="content" style="width:98%;height:60px;overflow:auto;line-height:20px;color:#666;padding:5px;border:1px solid #ddd;"></textarea><br />
		<span id="dtelephone" class="f_red"></span>
	    <font color="#EE7621">
		请尽量详细反映实际情况，以便我们及时正确地处理您的举报；<br />
		留下您的电话号码，方便我们的客服与您联系，还可以截取举证图片给我们。
		</font>
	  </td>
	</tr>
	<tr>
	  <td>举证图片：</td>
	  <td>
	    <span id="previewsrc_1"></span>
		<input type="hidden" name="imgfile" id="imgfile" value="" />
		  <iframe border='0' frameborder='0' scrolling='no' style="width:260px;height:25px;padding:0px;" src="<!--{$urlpath}-->usercp.php?c=upload&formname=myform&module=upload&uploadinput=imgfile&multipart=sf_upload&previewid=previewsrc_1"></iframe>
	  </td>
	</tr>
	<tr>
	  <td>联系电话：</td>
	  <td><input type="text" name="telephone" id="telephone" class="input-150" maxlength="100" value="<!--{$u.mobile}-->" /> <span id="dtelephone" class="f_red"></span></td>
	</tr>
	<tr>
	  <td>联系邮箱：</td>
	  <td><input type="text" name="email" id="email" class="input-150" maxlength="100" value="<!--{$u.email}-->" /> <span id="demail" class="f_red"></span></td>
	</tr>
	<tr>
	  <td></td>
	  <td><input type="button" id="btn_post" value="提交投诉" class="button-red" /></td>
	</tr>
  </table>
</div>
</form>
</body>
</html>