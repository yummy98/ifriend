<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$page_charset}-->" />
<title>诚信联盟</title>
<!--{include file="<!--{$cptplpath}-->headerjs.tpl"}-->
</head>
<body>
<!--{if $a == "app"}-->
<div class="main-wrap">
  <div class="main-cont">
	<table class="oe_table_wrap">
	  <tr>
		<th>网站根域名：<span class="f_red"></span></th>
		<td colspan="3"><!--{$domain}--> </td>
	  </tr>
	  <tr>
		<th>网站名称：<span class="f_red">*</span></th>
		<td><input type="text" name="sitename" id="sitename" class="input-150" value="<!--{$config.sitename}-->" /></td>
		<th>网站地址：<span class="f_red">*</span></th>
		<td><input type="text" name="siteurl" id="siteurl" class="input-200" value="<!--{$config.siteurl}-->" /></td>
	  </tr>
	  <tr>
		<th width="15%">联系人：<span class="f_red">*</span></th>
		<td width="35%"><input type="text" name="sitecontact" id="sitecontact" class="input-150" /></td>
		<th width="15%">手机：<span class="f_red">*</span></th>
		<td width="35%"><input type="text" name="sitemobile" id="sitemobile" class="input-150" /></td>
	  </tr>
	  <tr>
		<th>QQ：<span class="f_red">*</span></th>
		<td><input type="text" name="siteqq" id="siteqq" class="input-150" /></td>
		<th>邮箱：<span class="f_red"></span></th>
		<td><input type="text" name="siteemail" id="siteemail" class="input-150" /></td>
	  </tr>
	  <tr>
		<th>网站备案号：<span class="f_red"></span></th>
		<td colspan="3"><input type="text" name="siteicp" id="siteicp" class="input-200" /></td>
	  </tr>
	  <tr>
		<td></td>
		<td colspan="3">
		  <input type="submit" name="btn_save" f="submit_join_credit" class="button" value="提交申请" />&nbsp;&nbsp;
		  <span id="tips_submit">
		  
		  </span>
		</td>
	  </tr>
	</table>
  </div>
  <div style="clear:both;"></div>
</div>
<script type="text/javascript">
$(function(){
	
	//提交申请
	$("[f='submit_join_credit']").bind("click", function(){
		$tips_obj = $("#tips_submit");

		$sitename = $("#sitename").val();
		$siteurl = $("#siteurl").val();
		$sitecontact = $("#sitecontact").val();
		$sitemobile = $("#sitemobile").val();
		$siteqq = $("#siteqq").val();
		$siteemail = $("#siteemail").val();
		$siteicp = $("#siteicp").val();
		
		if ($sitename.length == 0) {
			$tips_obj.html("<font color='red'>请填写网站名称</font>");
			return false;
		}
		if ($siteurl.length == 0) {
			$tips_obj.html("<font color='red'>请填写网站地址</font>");
			return false;
		}
		if ($sitecontact.length == 0) {
			$tips_obj.html("<font color='red'>请填写网站联系人</font>");
			return false;
		}
		if ($sitemobile.length == 0) {
			$tips_obj.html("<font color='red'>请填写联系人手机</font>");
			return false;
		}
		if ($siteqq.length == 0) {
			$tips_obj.html("<font color='red'>请填写联系人QQ号</font>");
			return false;
		}
		
		$.ajax({
			type: "POST",
			url: "<!--{$cpfile}-->",
			cache: false,
			data: {c:"credit", a:"submitapp", sitename:$sitename, siteurl:$siteurl, sitecontact:$sitecontact, sitemobile:$sitemobile, siteqq:$siteqq, siteemail:$siteemail, siteicp:$siteicp, r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				if ($response == "1") {
					$tips_obj.html("<font color='green'>申请成功</font>");
					window.parent.$("#oe_credit_key").val($result);
					setTimeout(function(){
						window.parent.tb_remove();
					}, 500);
				}
				else {
					if ($result.length > 0) {
						$tips_obj.html("<font color='red'>"+$result+"</font>");
					}
					else {
						$tips_obj.html("<font color='red'>申请失败，请检查</font>");
					}
				}

			},
			error: function() {

			}
		});
		
	});


});
</script>
<!--{/if}-->
</body>
</html>