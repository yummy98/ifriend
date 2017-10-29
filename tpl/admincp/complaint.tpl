<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$page_charset}-->" />
<title>举报管理</title>
<!--{include file="<!--{$cptplpath}-->headerjs.tpl"}-->
</head>
<body>
<!--{if $a eq "run"}-->
<div class="main-wrap">
  <div class="path"><p>诚信联盟<span>&gt;&gt;</span><a href="<!--{$cpfile}-->?c=<!--{$c}-->">会员举报管理</a></p></div>
  <div class="main-cont">
    <h3 class="title">会员举报管理</h3>
	<div class="search-area ">
	  <form method="post" id="search_form" action="<!--{$cpfile}-->?c=<!--{$c}-->" />
	  <div class="item">
	    <label>举报对象ID：&nbsp;&nbsp;</label><input type="text" id="scpuserid" name="scpuserid" class="input-100" value="<!--{if $scpuserid > 0}--><!--{$scpuserid}--><!--{/if}-->" />&nbsp;&nbsp;
		<label>举报类型：</label>
		<!--{hook mod='var' item='blacktype' type='select' name='stype' text='=请选择=' value=$stype}-->
		&nbsp;&nbsp;
		<label>举报人ID：&nbsp;&nbsp;</label><input type="text" id="sfromuserid" name="sfromuserid" class="input-100" value="<!--{if $sfromuserid > 0}--><!--{$sfromuserid}--><!--{/if}-->" />
		&nbsp;&nbsp;&nbsp;
		<input type="submit" class="button_s" value=" 搜 索 " />
	  </div>
	  </form>
	</div>

	<form action="<!--{$cpfile}-->?c=<!--{$c}-->&a=del" method="post" name="myform" id="myform">
    <table class="oe_table_list table_cs">
	  <tr>
	    <th width="8%">ID</th>
		<th width="12%">举报对象</th>
		<th width="8%">举报类型</th>
		<th width="18%">举报人信息</th>
		<th>情况说明</th>
		<th width="10%">处理状态</th>
		<th width="6%">黑名单</th>
		<th width="6%">禁封帐号</th>
		<th width="10%">操作</th>
	  </tr>
	  <!--{foreach $complaint as $volist}-->
	  <tr>
	    <td align="center"><input name="id[]" type="checkbox" value="<!--{$volist.id}-->" onClick="checkItem(this, 'chkAll')"> <!--{$volist.id}--></td>
		<td><a href="javascript:;" f="viewuser" data-id="<!--{$volist.cpuid}-->"><!--{$volist.cpusername}--></a><br />(<!--{$volist.cpuid}-->)</td>
		<td align="center"><!--{hook mod='var' item='blacktype' type='text' value=$volist.cptype}--></td>
		<td>
		<!--{if $volist.fromuid>0}-->
		<a href="javascript:;" f="viewuser" data-id="<!--{$volist.fromuid}-->"><!--{$volist.fromusername}--></a>(<!--{$volist.fromuid}-->)
		<!--{/if}--><br />
		联系电话:<!--{$volist.telephone}--><br /> 联系邮箱:<!--{$volist.email}-->
        </td>
		<td valign="top">
		<!--{$volist.content|nl2br}-->
		<!--{if !empty($volist.imgfile)}--><br />
		<a href="<!--{$volist.imgfile}-->" target="_blank">举证图片</a>
		<!--{/if}-->
		</td>
		<td align="center">
		<!--{if $volist.flag=='1'}-->
		  <font color="green">已处理，举报成功</font>
		<!--{elseif $volist.flag=='2'}-->
		  <font color="red">已处理，举报失败</font>
		<!--{else}-->
		  <font color="gray">待处理</font>
		<!--{/if}-->
		</td>
		<td align="center">
		<!--{if $volist.isback == '1'}-->
		<font color="blue">是</font>
		<!--{else}-->
		<font color="gray">否</font>
		<!--{/if}-->
		</td>
		<td align="center">
		<!--{if $volist.isforbid == '1'}-->
		<font color="blue">是</font>
		<!--{else}-->
		<font color="gray">否</font>
		<!--{/if}-->
		</td>
		<td align="center">
		<!--{if $volist.flag=='0'}-->
		<a href="<!--{$cpfile}-->?c=<!--{$c}-->&a=edit&id=<!--{$volist.id}-->&<!--{$comeurl}-->" class="oe_ico_blue">处理</a>
		<!--{else}-->
		<a href="<!--{$cpfile}-->?c=<!--{$c}-->&a=edit&id=<!--{$volist.id}-->&<!--{$comeurl}-->" class="oe_ico_green">查看</a>
		<!--{/if}-->
		<a href="<!--{$cpfile}-->?c=<!--{$c}-->&a=del&id[]=<!--{$volist.id}-->&<!--{$comeurl}-->" class="oe_ico_red" onclick="{if(confirm('确定要删除吗？一旦删除无法恢复！')){return true;} return false;}">删除</a>
		</td>
	  </tr>
	  <!--{foreachelse}-->
      <tr>
	    <td colspan="9" align="center">没有符合条件的数据</td>
	  </tr>
	  <!--{/foreach}-->
	  <!--{if $total>0}-->
	  <tr>
		<td align="center"><input name="chkAll" type="checkbox" id="chkAll" onClick="checkAll(this, 'id[]')" value="checkbox">选择</td>
		<td colspan="8"><input class="button" name="btn_del" type="button" value="删除" class="button" onclick="{if(confirm('确定要删除吗？一旦删除无法恢复！')){$('#myform').submit();return true;}return false;}" />&nbsp;&nbsp;共[ <b><!--{$total}--></b> ]条记录</td>
	  </tr>
	  <!--{/if}-->
	</table>
	</form>
	<!--{if $pagecount>1}-->
	<table width='95%' border='0' cellspacing='0' cellpadding='0' align='center' style="margin-top:10px;">
	  <tr>
		<td align='center'><!--{$showpage}--></td>
	  </tr>
	</table>
	<!--{/if}-->
  </div>
</div>
<!--{/if}-->

<!--{if $a eq "edit"}-->
<div class="main-wrap">
  <div class="path"><p>诚信联盟<span>&gt;&gt;</span>会员举报管理</p></div>
  <div class="main-cont">
	<h3 class="title"><a href="<!--{$cpfile}-->?c=<!--{$c}-->&<!--{$comeurl}-->" class="btn-general"><span>返回列表</span></a>处理举报</h3>
	<input type="hidden" name="id" value="<!--{$id}-->" />
	<table class="oe_table_wrap">
	  <tr>
	    <td colspan="4" class="hback_c3"><b style="color:orange;">举报信息</b></td>
	  </tr>
	  <tr>
		<th>举报人(投诉人)：<span class="f_red"></span></th>
		<td colspan="3">
		  <a href="javascript:;" f="viewuser" data-id="<!--{$complaint.fromuid}-->"><!--{$complaint.fromusername}--></a>（<!--{$complaint.fromuid}-->）&nbsp;&nbsp;
		  联系电话：<!--{$complaint.telephone}-->&nbsp;&nbsp;联系邮箱：<!--{$complaint.email}-->
		</td>
	  </tr>
	  
	  <tr>
		<th>举报类型：<span class="f_red"></span></th>
		<td colspan="3"><!--{hook mod='var' item='blacktype' type='text' value=$complaint.cptype}--></td>
	  </tr>
	  <tr>
		<th>举证图片：<span class="f_red"></span></th>
		<td colspan="3">
		<!--{if empty($complaint.imgfile)}-->
		--
		<!--{else}-->
		<a href="<!--{$urlpath}--><!--{$complaint.imgfile}-->" target="_blank"><img src="<!--{$urlpath}--><!--{$complaint.imgfile}-->" width="100px" height="80px" /></a>
		<!--{/if}-->
		</td>
	  </tr>
	  <tr>
		<th>举报描述：<span class="f_red"></span></th>
		<td colspan="3"><!--{$complaint.content|nl2br}--></td>
	  </tr>
	  <tr>
		<th>举报时间：<span class="f_red"></span></th>
		<td colspan="3"><!--{$complaint.timeline|date_format:"%Y-%m-%d %H:%M:%S"}--></td>
	  </tr>

	  <tr>
	    <td colspan="4" class="hback_c3"><b style="color:orange;">举报对象资料</b> <font color="red">（开启诚信联盟，可查询该会员的诚信举报情况）</font></td>
	  </tr>
	  <tr>
	    <th>会员名：</th>
		<td>
		  <a href="javascript:;" f="viewuser" data-id="<!--{$complaint.cpuid}-->"><!--{$complaint.cpuser.username}--></a>（<!--{$complaint.cpuser.userid}-->）<!--{if $complaint.cpuser.gender == '1'}-->男<!--{else}-->女<!--{/if}-->
		</td>
		<th>姓名：</th>
		<td>
		  <!--{if empty($complaint.cpuser.realname)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.cpuser.realname}-->
		  <!--{/if}-->
		</td>
	  </tr>
	  <tr>
		<th>身份证号：</th>
		<td>
		  <!--{if empty($complaint.cpuser.idnumber)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.cpuser.idnumber}-->
		  <!--{if $complaint.flag == '0'}-->
		  <input type="checkbox" name="creditidnumber" id="creditidnumber" value="1" checked /> <font color="orange">上报诚信联盟</font>&nbsp;&nbsp;
		  <!--{/if}-->

		  <a href="javascript:;" class="oe_ico_blue" f="creditget" data-type="idcard" data-value="<!--{$complaint.cpuser.idnumber}-->" data-tips="tips_idnumber">查询诚信</a> <span id="tips_idnumber"></span>

		  <!--{/if}-->
		</td>
	  </tr>
	  <tr>
	    <th width="12%">邮箱：</th>
		<td width="38%">
		  <!--{if empty($complaint.cpuser.email)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.cpuser.email}-->
		  <!--{if $complaint.flag == '0'}-->
		  <input type="checkbox" name="creditemail" id="creditemail" value="1" checked /> <font color="orange">上报诚信联盟</font>&nbsp;&nbsp;
		  <!--{/if}-->

		  <a href="javascript:;" class="oe_ico_blue" f="creditget" data-type="email" data-value="<!--{$complaint.cpuser.email}-->" data-tips="tips_email">查询诚信</a> <span id="tips_email"></span>

		  <!--{/if}-->
		</td>
		<th width="12%">手机号：</th>
		<td width="38%">
		  <!--{if empty($complaint.cpuser.mobile)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.cpuser.mobile}-->
		  <!--{if $complaint.flag == '0'}-->
		  <input type="checkbox" name="creditmobile" id="creditmobile" value="1" checked /> <font color="orange">上报诚信联盟</font>&nbsp;&nbsp;
		  <!--{/if}-->

		  <a href="javascript:;" class="oe_ico_blue" f="creditget" data-type="mobile" data-value="<!--{$complaint.cpuser.mobile}-->" data-tips="tips_mobile">查询诚信</a> <span id="tips_mobile"></span>
		  <!--{/if}-->
		</td>
	  </tr>
	  <tr>
	    <th>QQ号：</th>
		<td>
		  <!--{if empty($complaint.cpuser.qq)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.cpuser.qq}-->
		  <!--{if $complaint.flag == '0'}-->
		  <input type="checkbox" name="creditqq" id="creditqq" value="1" checked /> <font color="orange">上报诚信联盟</font>&nbsp;&nbsp;
		  <!--{/if}-->

		  <a href="javascript:;" class="oe_ico_blue" f="creditget" data-type="qq" data-value="<!--{$complaint.cpuser.qq}-->" data-tips="tips_qq">查询诚信</a> <span id="tips_qq"></span>
		  <!--{/if}-->
		</td>
		<th>微信号：</th>
		<td>
		  <!--{if empty($complaint.cpuser.weixin)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.cpuser.weixin}-->
		  <!--{if $complaint.flag == '0'}-->
		  <input type="checkbox" name="creditweixin" id="creditweixin" value="1" checked /> <font color="orange">上报诚信联盟</font>&nbsp;&nbsp;
		  <!--{/if}-->

		  <a href="javascript:;" class="oe_ico_blue" f="creditget" data-type="weixin" data-value="<!--{$complaint.cpuser.weixin}-->" data-tips="tips_weixin">查询诚信</a> <span id="tips_weixin"></span>
		  <!--{/if}-->
		</td>
	  </tr>

	  <tr>
	    <td colspan="4" class="hback_c3"><b style="color:orange;">处理举报</b></td>
	  </tr>
	  
	  <!--{if $complaint.flag == "0"}-->
	  <tr>
		<th>处理状态：<span class="f_red">*</span></th>
		<td colspan="3">
		  <select name="flag" id="flag">
		    <option value="">=请选择=</option>
			<option value="1">情况属实，举报成功</option>
			<option value="2">举报失败，证据不足</option>
		  </select>

		  <span id="tips_credit" style="display:none;">
		  <font color="red">（开启诚信联盟，将举报对象的联系方式上报到联盟中心）</font>
		  </span>
		</td>
	  </tr>

      <tr id="tips_reason" style="display:none;">
	    <th>上报理由<br />(举报理由)：<span class="f_red">*</span></th>
		<td colspan="3">
		  <textarea name="dealreason" id="dealreason" style="width:40%;height:60px;border:1px solid #ddd;overflow:auto;"></textarea><br/ >
		  （请填写举报理由，上报到诚信联盟中心）
		</td>
	  </tr>


	  <tr id="tips_forbid" style="display:none;">
		<th>处理结果：<span class="f_red"></span> </th>
		<td colspan="3">
		  <input type="checkbox" name="isforbid" id="isforbid" value="1" />禁封帐号，
		  <input type="checkbox" name="isblack" id="isblack" value="1" />拉入黑名单
		</td>
	  </tr>

	  <tr>
		<th>处理备注：<span class="f_red"></span> </th>
		<td colspan="3">
		<textarea name="dealcontent" id="dealcontent" style="width:40%;height:60px;border:1px solid #ddd;overflow:auto;"></textarea>
		</td>
	  </tr>

	  <tr>
		<td></td>
		<td colspan="3">
		  <input type="button" name="btn_save" class="button" value="提交保存" f="but_save" />

		  <span id="tips_submit"></span>
		</td>
	  </tr>
	  <!--{else}-->
	  <tr>
	    <th>处理状态：</th>
		<td>
		  <!--{if $complaint.flag == "1"}-->
		  <font color="green">情况属实，举报成功</font>
		  <!--{else}-->
		  <font color="red">举报失败，证据不足</font>
		  <!--{/if}-->
		</td>
	  </tr>
	  <tr>
	    <th>处理结果：</th>
		<td>
		  <!--{if $complaint.isforbid == '1'}-->
		  禁封帐号
		  <!--{/if}-->

		  <!--{if $complaint.isblack == '1'}-->
		  拉入黑名单
		  <!--{/if}-->
		</td>
	  </tr>
	  <tr>
	    <th>备注说明：</th>
		<td>
		  <!--{if empty($complaint.dealcontent)}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.dealcontent|nl2br}-->
		  <!--{/if}-->
		</td>
	  </tr>
	  <tr>
	    <th>处理时间：</th>
		<td>
		  <!--{if $complaint.dealtimeline == 0}-->
		  --
		  <!--{else}-->
		  <!--{$complaint.dealtimeline|date_format:"%Y-%m-%d %H:%M:%S"}-->
		  <!--{/if}-->
		</td>
	  </tr>
	  <!--{/if}-->

	</table>


  </div>
  <div style="clear:both;"></div>
</div>



<script type="text/javascript">
$(function(){

	//选择处理状态
	$("#flag").bind("change", function(){
		$_val = $(this).val();
		if ($_val == "1") {
			$("#tips_credit").show();
			$("#tips_reason").show();
			$("#tips_forbid").show();
		}
		else if ($_val == "2") {
			$("#tips_credit").hide();
			$("#tips_reason").hide();
			$("#tips_forbid").hide();
		}

	});
	
	//提交保存
	$("[f='but_save']").bind("click", function(){
		$tips_obj = $("#tips_submit");

		$_flag = $("#flag").find("option:selected").val();
		if (typeof($_flag) == "undefined") {
			$tips_obj.html("<font color='red'>请选择处理状态</font>");
			return false;
		}

		if ($_flag == "1") {
			$("#tips_credit").show();
			$("#tips_reason").show();
			$("#tips_forbid").show();
		}
		else if ($_flag == "2") {
			$("#tips_credit").hide();
			$("#tips_reason").hide();
			$("#tips_forbid").hide();
		
		}
		
		if ($_flag.length == 0) {
			$tips_obj.html("<font color='red'>请选择处理状态</font>");
			return false;
		}
		//身份证号
		$_creditidnumber = $("input[name='creditidnumber']:checked").val();
		if (typeof($_creditidnumber) == "undefined") {
			$_creditidnumber = 0;
		}
		//邮箱
		$_creditemail = $("input[name='creditemail']:checked").val();
		if (typeof($_creditemail) == "undefined") {
			$_creditemail = 0;
		}
		//手机
		$_creditmobile = $("input[name='creditmobile']:checked").val();
		if (typeof($_creditmobile) == "undefined") {
			$_creditmobile = 0;
		}
		//QQ号
		$_creditqq = $("input[name='creditqq']:checked").val();
		if (typeof($_creditqq) == "undefined") {
			$_creditqq = 0;
		}
		//微信号
		$_creditweixin = $("input[name='creditweixin']:checked").val();
		if (typeof($_creditweixin) == "undefined") {
			$_creditweixin = 0;
		}

		$_dealreason = $("#dealreason").val();
		$_isforbid = $("input[name='isforbid']:checked").val();
		if (typeof($_isforbid) == "undefined") {
			$_isforbid = 0;
		}

		$_isblack = $("input[name='isblack']:checked").val();
		if (typeof($_isblack) == "undefined") {
			$_isblack = 0;
		}

		$_dealcontent = $("#dealcontent").val();
		
		//审批成功
		if ($_flag == "1") {
			if ($_dealreason.length == 0) {
				$tips_obj.html("<font color='red'>请填写举报理由</font>");
				return false;
			}
		}
		
		//成功
		if ($_flag == "1") {
		
			$.ajax({
				type: "POST",
				url: "<!--{$cpfile}-->",
				cache: false,
				data: {c:"complaint", a:"success", id:"<!--{$id}-->", creditidnumber:$_creditidnumber, creditemail:$_creditemail, creditmobile:$_creditmobile, creditqq:$_creditqq, creditweixin:$_creditweixin, dealreason:$_dealreason, isforbid:$_isforbid, isblack:$_isblack, dealcontent:$_dealcontent, r:get_rndnum(8)},
				dataType: "json",
				success: function($data) {
					$json = eval($data);
					$response = $json.response;
					$result = $json.result;
					if ($response == "1") {
						$tips_obj.html("<font color='green'>操作成功</font>");
						setTimeout(function(){
							window.location.reload();
						}, 500);
					}
					else {
						if ($result.length > 0) {
							$tips_obj.html("<font color='red'>"+$result+"</font>");
						}
						else {
							$tips_obj.html("<font color='red'>操作失败，请检查</font>");
						}
					}

				},
				error: function() {

				}
			});

		}
		//失败
		else if ($_flag == "2") {
		
			$.ajax({
				type: "POST",
				url: "<!--{$cpfile}-->",
				cache: false,
				data: {c:"complaint", a:"fail", id:"<!--{$id}-->", dealcontent:$_dealcontent, r:get_rndnum(8)},
				dataType: "json",
				success: function($data) {
					$json = eval($data);
					$response = $json.response;
					$result = $json.result;
					if ($response == "1") {
						//ToastShow("操作成功");
						$tips_obj.html("<font color='green'>操作成功</font>");
						setTimeout(function(){
							window.location.reload();
						}, 500);
					}
					else {
						if ($result.length > 0) {
							//ToastShow($result);
							$tips_obj.html("<font color='red'>"+$result+"</font>");

						}
						else {
							//ToastShow("操作失败，请检查");
							$tips_obj.html("<font color='red'>操作失败，请检查</font>");
						}
					}

				},
				error: function() {

				}
			});


		}

	});

});

</script>

<!--{/if}-->
<!--{assign var='pluginevent' value=XHook::doAction('adm_footer')}-->
</body>
</html>