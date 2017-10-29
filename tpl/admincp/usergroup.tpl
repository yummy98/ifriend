<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$page_charset}-->" />
<title>会员组设置</title>
<!--{include file="<!--{$cptplpath}-->headerjs.tpl"}-->
<!--{assign var='pluginevent' value=XHook::doAction('adm_head')}-->
</head>
<body>
<!--{assign var='pluginevent' value=XHook::doAction('adm_main_top')}-->
<!--{if $a eq "run"}-->
<div class="main-wrap">
  <div class="path"><p>当前位置：用户管理<span>&gt;&gt;</span>会员管理<span>&gt;&gt;</span><a href="<!--{$cpfile}-->?c=usergroup">会员组设置</a></p></div>
  <div class="main-cont">
    <h3 class="title"><a href="<!--{$cpfile}-->?c=usergroup&a=add" class="btn-general"><span>添加会员组</span></a>会员组设置</h3>

	<div class="search-area5">
	  <div class="item">
	  <font color="green"><b>温馨提示：</b></font>
	  必须保留ID=1的普通会员组。
	  </div>
	</div>


	<form action="<!--{$cpfile}-->?c=usergroup&a=del" method="post" name="myform" id="myform" style="margin:0">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
	  <thead class="tb-tit-bg">
	  <tr>
	    <th width="8%"><div class="th-gap">ID</div></th>
		<th width="10%"><div class="th-gap">组名</div></th>
		<th width="10%"><div class="th-gap">登录积分</div></th>
		<th width="10%"><div class="th-gap">男标识</div></th>
		<th width="10%"><div class="th-gap">女标识</div></th>
		<th width="7%"><div class="th-gap">排序</div></th>
		<th><div class="th-gap">收费设置</div></th>
		<th width="12%"><div class="th-gap">操作</div></th>
	  </tr>
	  </thead>
	  <tfoot class="tb-foot-bg"></tfoot>
	  <!--{foreach $usergroup as $volist}-->
	  <tr onMouseOver="overColor(this)" onMouseOut="outColor(this)">
	    <td align="center">
		<!--{if $volist.groupid == 1}-->
		<!--{else}-->
		<input name="id[]" type="checkbox" value="<!--{$volist.groupid}-->" onClick="checkItem(this, 'chkAll')">
		<!--{/if}-->
		<!--{$volist.groupid}--></td>
		<td align="center"><!--{$volist.groupname}--></td>
		<td align="center"><!--{$volist.loginpoints}--></td>
		<td align="center"><img src="<!--{$urlpath}--><!--{$volist.maleimg}-->" /></td>
		<td align="center"><img src="<!--{$urlpath}--><!--{$volist.femaleimg}-->" /></td>
		<td align="center"><!--{$volist.orders}--></td>
		<td align="left">
		<!--{if !empty($volist.commer)}-->
		<!--{foreach $volist.commer as $val}-->
		类别<!--{$val.orders}-->：<!--{$val.days}-->天，<!--{$val.money}-->现金(金币)，赠送<!--{$val.points}-->分
		<br />
		<!--{/foreach}-->
		<!--{/if}-->
		</td>
		<td align="center">
		<a href="<!--{$cpfile}-->?c=usergroup&a=edit&id=<!--{$volist.groupid}-->&page=<!--{$page}-->" class="icon-edit">编辑</a>&nbsp;&nbsp;
		<!--{if $volist.groupid == 1}-->
		<!--{else}-->
		<a href="<!--{$cpfile}-->?c=usergroup&a=del&id[]=<!--{$volist.groupid}-->" onClick="{if(confirm('确定要删除吗？一旦删除无法恢复。')){return true;} return false;}" class="icon-del">删除</a>
		<!--{/if}-->

		</td>
	  </tr>
	  <!--{foreachelse}-->
      <tr>
	    <td colspan="8" align="center">暂无信息</td>
	  </tr>
	  <!--{/foreach}-->
	  <!--{if $total>0}-->
	  <tr>
		<td align="center"><input name="chkAll" type="checkbox" id="chkAll" onClick="checkAll(this, 'id[]')" value="checkbox"></td>
		<td colspan="7"><input class="button" name="btn_del" type="button" value="删 除" onclick="{if(confirm('确定删除选定信息吗!?')){$('#myform').submit();return true;}return false;}" class="button">&nbsp;&nbsp;共[ <b><!--{$total}--></b> ]条记录</td>
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

<!--{if $a eq "add"}-->
<div class="main-wrap">
  <div class="path"><p>当前位置：用户管理<span>&gt;&gt;</span>会员管理<span>&gt;&gt;</span><a href="<!--{$cpfile}-->?c=usergroup&a=add">添加会员组</a></p></div>
  <div class="main-cont">
	<h3 class="title"><a href="<!--{$cpfile}-->?c=usergroup" class="btn-general"><span>返回列表</span></a>添加会员组</h3>
    <form name="myform" id="myform" method="post" action="<!--{$cpfile}-->?c=usergroup" onsubmit='return checkform();' />
    <input type="hidden" name="a" value="saveadd" />
	<table cellpadding='1' cellspacing='1' class='tab'>
	  <tr>
	    <td colspan="4" class="hback_c1" align="center"><b>基本信息</b></td>
	  </tr>
	  <tr>
		<td class='hback_1' width='15%'>组 名 称 <span class="f_red">*</span> </td>
		<td class='hback' width='35%'><input type="text" name="groupname" id="groupname" class="input-150" /> <span id='dgroupname' class='f_red'></span> </td>
		<td class='hback_1' width='15%'>组 排 序 <span class="f_red">*</span> </td>
		<td class='hback' width='35%'><input type="text" name="orders" id="orders" class="input-s" />  <span id='dorders' class='f_red'></span> <font color="#999999">（数字越小越靠前）</font></td>
	  </tr>
	  <tr>
		<td class='hback_1'>男 标 识<span class="f_red">*</span> </td>
		<td class='hback'>
		  <input type="text" name="maleimg" id="maleimg" class="input-txt"  /> <span id='dmaleimg' class='f_red'></span>
		  <br />
		  <iframe id='iframe_t' border='0' frameborder='0' scrolling='no' style="width:260px;height:25px;padding:0px;margin:0px;" src='<!--{$cpfile}-->?c=upload&formname=myform&module=upload&uploadinput=maleimg&multipart=sf_upload'></iframe>
		</td>
		<td class='hback_1'>女 标 识 <span class="f_red">*</span> </td>
		<td class='hback'>
		  <input type="text" name="femaleimg" id="femaleimg" class="input-txt"  /> <span id='dfemaleimg' class='f_red'></span>
		  <br />
		  <iframe id='iframe_t' border='0' frameborder='0' scrolling='no' style="width:260px;height:25px;padding:0px;margin:0px;" src='<!--{$cpfile}-->?c=upload&formname=myform&module=upload&uploadinput=femaleimg&multipart=sf_upload'></iframe>
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>设 置 </td>
		<td class='hback' colspan="3">
		<!--
		注册赠送积分：<input type="text" name="regpoints" id="regpoints" class="input-s" />
		注册赠送现金(金币)：<input type="text" name="regmoney" id="regmoney" class="input-s" />
		-->
		每天登录积分：<input type="text" name="loginpoints" id="loginpoints" class="input-s" />
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>组 简 介 </td>
		<td class='hback' colspan="3"><textarea name="intro" id="intro" style="width:50%;height:80px;display:;overflow:auto;"></textarea></td>
	  </tr>
	  <tr>
	    <td colspan="4" class="hback_c2" align="center"><b>收费设置</b></td>
	  </tr>
	  <tr>
		<td class='hback_1'>收费类别 <span class="f_red"></span> </td>
		<td class='hback' colspan="3">
		  <input name='itemmaxsort' id='itemmaxsort' type='hidden' value='0' /> <span id='ditemmaxsort' class='f_red'></span>
		  <table border='0' cellpadding='0' cellspacing='0' class='table'>
		    <tr id="list-top">
			  <td class='hback_1' align="center" width='10%'>序号</td>
			  <td class='hback_1' align="center" width='10%'>排序</td>
			  <td class='hback_1' align="center" width='18%'>有效天数</td>
			  <td class='hback_1' align="center" width='18%'>需要现金(金币)</td>
			  <td class='hback_1' align="center" width='18%'>赠送积分</td>
			  <td class='hback_1' align="center" width='18%'>赠送短信</td>
			  <td class='hback_1' align="center">操作</td>
			</tr>
		  </table>
		</td>
	  </tr>
	  <tr>
		<td class='hback_none' align='right'><a href="javascript:void(0);" onclick="return commersetting_add($(this));">添加收费类别</a></td>
		<td class='hback_none' colspan="3"><span id="load_itemtips"></span> &nbsp;&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="4" class="hback_c3" align="center"><b>权限设置</b></td>
	  </tr>

	  <tr>
		<td class='hback_1'>信件设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3" style="line-height:30px;">
		每天发送信件数量 &nbsp;&nbsp;
		<input type='radio' name='daysendslimit' id='daysendslimit' value='0' checked />不限，
		<input type='radio' name='daysendslimit' id='daysendslimit' value='1' />限制 
		<input type="text" name="daysends" id="daysends" class="input-s" /> 封 <font color="#999999">(限制请填写整数)</font><br />

		每天查看信件数量  &nbsp;&nbsp;
		<input type='radio' name='dayviewslimit' id='dayviewslimit' value='0' checked />不限，
		<input type='radio' name='dayviewslimit' id='dayviewslimit' value='1' />限制 
		<input type="text" name="dayviews" id="dayviews" class="input-s" /> 封 <font color="#999999">(限制请填写整数)</font><br />

		<input type='checkbox' name='msgistop' id='msgistop' value='1' /> 允许信件置顶
		</td>
	  </tr>

	  <tr>
		<td class='hback_1'>查看/操作权限 <span class='f_red'></span></td>
		<td class='hback' colspan="3" style="line-height:25px;">
		
		<input type='checkbox' name='viewlogintime' id='viewlogintime' value='1' />查看会员登录情况，
		<input type='checkbox' name='viewvisitor' id='viewvisitor' value='1' />查看最近访客 <br />
		<input type='checkbox' name='viewmatch' id='viewmatch' value='1' />查看速配结果，
		<input type='checkbox' name='useadvsearch' id='useadvsearch' value='1' />使用会员高级搜索，
		<input type='checkbox' name='viewonlineuser' id='viewonlineuser' value='1' />访问在线会员页，

		<input type='checkbox' name='viewcredit' id='viewcredit' value='1' />诚信查询（查询某个会员的诚信情况）

		<br />
		<input type='checkbox' name='viewcontact' id='viewcontact' value='1' />查看会员联系方式：&gt;&gt;
		
		（<input type='checkbox' name='viewemail' id='viewemail' value='1' />邮箱，
		<input type='checkbox' name='viewmobile' id='viewmobile' value='1' />手机，
		<input type='checkbox' name='viewqq' id='viewqq' value='1' />QQ，
		<input type='checkbox' name='viewweibo' id='viewweibo' value='1' />微博，
		<input type='checkbox' name='viewmsn' id='viewmsn' value='1' />微信）<font color="red">括号里的为可显示的子项</font>
		
		
		</td>
	  </tr> 
	  <tr>
		<td class='hback_1'>照片设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		上传张数 <input type="radio" name='photolimit' id='photolimit' value='0' checked />不限，
		<input type="radio" name='photolimit' id='photolimit' value='1' />限制 
		<input type="text" name="photonum" id="photonum" class="input-s" /> <font color="#999999">(限制请填写整数)</font>
		</td>
	  </tr>     
	  <tr>
		<td class='hback_1'>好友设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		添加好友数 
		<input type='radio' name='friendlimit' id='friendlimit' value='0' checked />不限，
		<input type='radio' name='friendlimit' id='friendlimit' value='1' />限制
		<input type="text" name="friendnum" id="friendnum" class="input-s" />  <font color="#999999">(限制请填写整数)</font>&nbsp;&nbsp;
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>发布设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		<input type='checkbox' name='pubdiary' id='pubdiary' value='1' checked />发布日记，
		奖励积分：<input type="text" name="diarypoints" id="diarypoints" class="input-s" />，
		<input type='checkbox' name='pubcomment' id='pubcomment' value='1' checked />发表评论
		</td>
	  </tr>

	  <tr>
	    <td colspan="4" class="hback_c1" align="center"><b>扣费设置</b> （当无法满足以上权限时，可通过扣费方式获得相应权限，不开启扣费请设置为0）</td>
	  </tr>
	  <tr>
		<td class='hback_c2'>扣费项<br />（单位：元/金币） <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		查看联系方式：<input type='text' name='contactfee' id='contactfee' class='input-s' />，
		查看信件：<input type='text' name='viewmsgfee' id='viewmsgfee' class='input-s' />，
		写信件：<input type='text' name='sendmsgfee' id='sendmsgfee' class='input-s' />
		</td>
	  </tr>

	  <tr>
		<td class='hback_none'></td>
		<td class='hback_none' colspan="3"><input type="submit" name="btn_save" class="button" value="添加保存" /></td>
	  </tr>
	</table>
	</form>
  </div>
  <div style="clear:both;"></div>
</div>
<!--{/if}-->

<!--{if $a eq "edit"}-->
<div class="main-wrap">
  <div class="path"><p>当前位置：用户管理<span>&gt;&gt;</span>会员管理<span>&gt;&gt;</span>编辑会员组</p></div>
  <div class="main-cont">
	<h3 class="title"><a href="<!--{$cpfile}-->?c=usergroup&page=<!--{$page}-->" class="btn-general"><span>返回列表</span></a>编辑会员组</h3>
    <form name="myform" id="myform" method="post" action="<!--{$cpfile}-->?c=usergroup&page=<!--{$page}-->" onsubmit='return checkform();' />
    <input type="hidden" name="a" value="saveedit" />
	<input type="hidden" name="id" value="<!--{$id}-->" />
	<table cellpadding='1' cellspacing='1' class='tab'>
	  <tr>
	    <td colspan="4" class="hback_c1" align="center"><b>基本信息</b></td>
	  </tr>
	  <tr>
		<td class='hback_1' width='15%'>组 名 称 <span class="f_red">*</span> </td>
		<td class='hback' width='35%'><input type="text" name="groupname" id="groupname" class="input-150" value="<!--{$usergroup.groupname}-->" /> <span id='dgroupname' class='f_red'></span> </td>
		<td class='hback_1' width='15%'>组 排 序 <span class="f_red">*</span> </td>
		<td class='hback' width='35%'><input type="text" name="orders" id="orders" class="input-s" value="<!--{$usergroup.orders}-->" />  <span id='dorders' class='f_red'></span> <font color="#999999">（数字越小越靠前）</font></td>
	  </tr>
	  <tr>
		<td class='hback_1'>男 标 识<span class="f_red">*</span> </td>
		<td class='hback'>
		  <input type="text" name="maleimg" id="maleimg" class="input-txt" value="<!--{$usergroup.maleimg}-->" /> <span id='dmaleimg' class='f_red'></span>
		  <br />
		  <iframe id='iframe_t' border='0' frameborder='0' scrolling='no' style="width:260px;height:25px;padding:0px;margin:0px;" src='<!--{$cpfile}-->?c=upload&formname=myform&module=upload&uploadinput=maleimg&multipart=sf_upload'></iframe>
		</td>
		<td class='hback_1'>女 标 识 <span class="f_red">*</span> </td>
		<td class='hback'>
		  <input type="text" name="femaleimg" id="femaleimg" class="input-txt" value="<!--{$usergroup.femaleimg}-->" /> <span id='dfemaleimg' class='f_red'></span>
		  <br />
		  <iframe id='iframe_t' border='0' frameborder='0' scrolling='no' style="width:260px;height:25px;padding:0px;margin:0px;" src='<!--{$cpfile}-->?c=upload&formname=myform&module=upload&uploadinput=femaleimg&multipart=sf_upload'></iframe>
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>设 置 </td>
		<td class='hback' colspan="3">
		<!--
		注册赠送积分：<input type="text" name="regpoints" id="regpoints" class="input-s" value="<!--{$usergroup.regpoints}-->" />
		注册赠送现金(金币)：<input type="text" name="regmoney" id="regmoney" class="input-s" value="<!--{$usergroup.regmoney}-->" />
		-->
		每天登录积分：<input type="text" name="loginpoints" id="loginpoints" class="input-s" value="<!--{$usergroup.loginpoints}-->" />
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>组 简 介 </td>
		<td class='hback' colspan="3"><textarea name="intro" id="intro" style="width:50%;height:80px;display:;overflow:auto;"><!--{$usergroup.intro}--></textarea></td>
	  </tr>
	  <tr>
	    <td colspan="4" class="hback_c2" align="center"><b>收费设置</b></td>
	  </tr>
	  <tr>
		<td class='hback_1'>收费类别 <span class="f_red"></span> </td>
		<td class='hback' colspan="3">
		  <input name='itemmaxsort' id='itemmaxsort' type='hidden' value='<!--{$usergroup.commer_num}-->' /> <span id='ditemmaxsort' class='f_red'></span>
		  <table border='0' cellpadding='0' cellspacing='0' class='table'>
		    <tr id="list-top">
			  <td class='hback_1' align="center" width='10%'>序号</td>
			  <td class='hback_1' align="center" width='10%'>排序</td>
			  <td class='hback_1' align="center" width='18%'>有效天数</td>
			  <td class='hback_1' align="center" width='18%'>需要现金(金币)</td>
			  <td class='hback_1' align="center" width='18%'>赠送积分</td>
			  <td class='hback_1' align="center" width='18%'>赠送短信</td>
			  <td class='hback_1' align="center">操作</td>
			</tr>
			<!--{if !empty($usergroup.commer)}-->
			<!--{foreach $usergroup.commer as $val}-->
			<tr class='itemlist' onMouseOver="overColor(this)" onMouseOut="outColor(this)">
			  <td class='hback' align='center'> 类别<!--{$val.i}--></td>
			  <td class='hback' align='center'><input type='text' name='item_orders_<!--{$val.i}-->' id='item_orders_<!--{$val.i}-->' class='input-s' value="<!--{$val.orders}-->" /></td>
			  <td class='hback' align='center'><input type='text' name='item_days_<!--{$val.i}-->' id='item_days_<!--{$val.i}-->' class='input-s' value="<!--{$val.days}-->" /> 天</td>
			  <td class='hback' align='center'><input type='text' name='item_money_<!--{$val.i}-->' id='item_money_<!--{$val.i}-->' class='input-s' value="<!--{$val.money}-->" /> 元</td>
			  <td class='hback' align='center'><input type='text' name='item_points_<!--{$val.i}-->' id='item_points_<!--{$val.i}-->' class='input-s' value="<!--{$val.points}-->" /> 分</td>
			  <td class='hback' align='center'><input type='text' name='item_mbsms_<!--{$val.i}-->' id='item_mbsms_<!--{$val.i}-->' class='input-s' value="<!--{$val.mbsms}-->" /> 条</td>
			  <td class='hback' align='center'><a href='javascript:void(0);' onclick='commersetting_countnums();commersetting_del($(this), <!--{$val.i}-->);'>移除</a></td>
			</tr>
			<!--{/foreach}-->
			<!--{/if}-->
		  </table>
		</td>
	  </tr>
	  <tr>
		<td class='hback_none' align='right'><a href="javascript:void(0);" onclick="return commersetting_add($(this));">添加收费类别</a></td>
		<td class='hback_none' colspan="3"><span id="load_itemtips"></span> &nbsp;&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="4" class="hback_c3" align="center"><b>权限设置</b></td>
	  </tr>

	  <tr>
		<td class='hback_1'>信件设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3" style="line-height:30px;">
		每天发送信件数量 &nbsp;&nbsp;
		<input type='radio' name='daysendslimit' id='daysendslimit' value='0'<!--{if $usergroup.msg.daysendslimit=='0'}-->  checked<!--{/if}--> />不限，
		<input type='radio' name='daysendslimit' id='daysendslimit' value='1'<!--{if $usergroup.msg.daysendslimit=='1'}-->  checked<!--{/if}--> />限制 
		<input type="text" name="daysends" id="daysends" class="input-s" value="<!--{$usergroup.msg.daysends}-->" /> 封 <font color="#999999">(限制请填写整数)</font><br />

		每天查看信件数量  &nbsp;&nbsp;
		<input type='radio' name='dayviewslimit' id='dayviewslimit' value='0'<!--{if $usergroup.msg.dayviewslimit=='0'}-->  checked<!--{/if}--> />不限，
		<input type='radio' name='dayviewslimit' id='dayviewslimit' value='1'<!--{if $usergroup.msg.dayviewslimit=='1'}-->  checked<!--{/if}--> />限制 
		<input type="text" name="dayviews" id="dayviews" class="input-s" value="<!--{$usergroup.msg.dayviews}-->" /> 封 <font color="#999999">(限制请填写整数)</font><br />

		<input type='checkbox' name='msgistop' id='msgistop' value='1'<!--{if $usergroup.msg.msgistop=='1'}--> checked<!--{/if}--> /> 允许信件置顶
		</td>
	  </tr>

	  <tr>
		<td class='hback_1'>查看/操作权限 <span class='f_red'></span></td>
		<td class='hback' colspan="3" style="line-height:25px;">
		<input type='checkbox' name='viewlogintime' id='viewlogintime' value='1'<!--{if $usergroup.view.viewlogintime=='1'}--> checked<!--{/if}--> />查看会员登录情况，
		<input type='checkbox' name='viewvisitor' id='viewvisitor' value='1'<!--{if $usergroup.view.viewvisitor=='1'}--> checked<!--{/if}--> />查看最近访客<br /> 
		<input type='checkbox' name='viewmatch' id='viewmatch' value='1'<!--{if $usergroup.view.viewmatch=='1'}--> checked<!--{/if}--> />查看速配结果，

		<input type='checkbox' name='useadvsearch' id='useadvsearch' value='1'<!--{if $usergroup.view.useadvsearch=='1'}--> checked<!--{/if}--> />使用会员高级搜索，
		<input type='checkbox' name='viewonlineuser' id='viewonlineuser' value='1'<!--{if $usergroup.view.viewonlineuser=='1'}--> checked<!--{/if}--> />访问在线会员页，

		<input type='checkbox' name='viewcredit' id='viewcredit' value='1'<!--{if $usergroup.view.viewcredit=='1'}--> checked<!--{/if}--> />诚信查询（查询某个会员的诚信情况）

		<br />
		<input type='checkbox' name='viewcontact' id='viewcontact' value='1'<!--{if $usergroup.view.viewcontact=='1'}--> checked<!--{/if}--> />查看会员联系方式：&gt;&gt;
		（<input type='checkbox' name='viewemail' id='viewemail' value='1'<!--{if $usergroup.view.viewemail=='1'}--> checked<!--{/if}--> />邮箱，
		<input type='checkbox' name='viewmobile' id='viewmobile' value='1'<!--{if $usergroup.view.viewmobile=='1'}--> checked<!--{/if}--> />手机，
		<input type='checkbox' name='viewqq' id='viewqq' value='1'<!--{if $usergroup.view.viewqq=='1'}--> checked<!--{/if}--> />QQ，
		<input type='checkbox' name='viewweibo' id='viewweibo' value='1'<!--{if $usergroup.view.viewweibo=='1'}--> checked<!--{/if}--> />微博，
		<input type='checkbox' name='viewmsn' id='viewmsn' value='1'<!--{if $usergroup.view.viewmsn=='1'}--> checked<!--{/if}--> />微信）
		<font color="red">括号里的为可显示的子项</font>
		</td>
	  </tr> 
	  <tr>
		<td class='hback_1'>照片设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		上传张数 <input type="radio" name='photolimit' id='photolimit' value='0'<!--{if $usergroup.photo.photolimit=='0'}--> checked<!--{/if}--> />不限，
		<input type="radio" name='photolimit' id='photolimit' value='1'<!--{if $usergroup.photo.photolimit=='1'}--> checked<!--{/if}--> />限制 
		<input type="text" name="photonum" id="photonum" class="input-s" value="<!--{$usergroup.photo.photonum}-->" /> <font color="#999999">(限制请填写整数)</font>
		</td>
	  </tr>     
	  <tr>
		<td class='hback_1'>好友设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		关注好友数 
		<input type='radio' name='friendlimit' id='friendlimit' value='0'<!--{if $usergroup.friend.friendlimit=='0'}--> checked<!--{/if}--> />不限，
		<input type='radio' name='friendlimit' id='friendlimit' value='1'<!--{if $usergroup.friend.friendlimit=='1'}--> checked<!--{/if}--> />限制
		<input type="text" name="friendnum" id="friendnum" class="input-s" value="<!--{$usergroup.friend.friendnum}-->" />  <font color="#999999">(限制请填写整数)</font>&nbsp;&nbsp;
		</td>
	  </tr>
	  <tr>
		<td class='hback_1'>发布设定 <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		<input type='checkbox' name='pubdiary' id='pubdiary' value='1'<!--{if $usergroup.publish.pubdiary=='1'}--> checked<!--{/if}--> />发布日记，
		奖励积分：<input type="text" name="diarypoints" id="diarypoints" class="input-s" value="<!--{$usergroup.publish.diarypoints}-->" />，
		<input type='checkbox' name='pubcomment' id='pubcomment' value='1'<!--{if $usergroup.publish.pubcomment=='1'}--> checked<!--{/if}--> />发表评论
		</td>
	  </tr>


	  <tr>
	    <td colspan="4" class="hback_c1" align="center"><b>扣费设置</b> （当无法满足以上权限时，可通过扣费方式获得相应权限，不开启扣费请设置为0）</td>
	  </tr>
	  <tr>
		<td class='hback_c2'>扣费项<br />（单位：元/金币） <span class='f_red'></span></td>
		<td class='hback' colspan="3">
		查看联系方式：<input type='text' name='contactfee' id='contactfee' class='input-s' value="<!--{$usergroup.fee.contactfee}-->" />，
		查看信件：<input type='text' name='viewmsgfee' id='viewmsgfee' class='input-s' value="<!--{$usergroup.fee.viewmsgfee}-->" />，
		写信件：<input type='text' name='sendmsgfee' id='sendmsgfee' class='input-s' value="<!--{$usergroup.fee.sendmsgfee}-->" />
		</td>
	  </tr>

	  <tr>
		<td class='hback_none'></td>
		<td class='hback_none' colspan="3"><input type="submit" name="btn_save" class="button" value="更新保存" /></td>
	  </tr>
	</table>
	</form>
  </div>
  <div style="clear:both;"></div>
</div>
<!--{/if}-->
<!--{assign var='pluginevent' value=XHook::doAction('adm_footer')}-->
</body>
</html>
<script type="text/javascript">
function checkform() {
	var t = "";
	var v = "";

	t = "groupname";
	v = $("#"+t).val();
	if(v=="") {
		dmsg("组名称不能为空", t);
		$('#'+t).focus();
		return false;
	}

	t = "orders";
	v = $("#"+t).val();
	if(v=="") {
		dmsg("组排序不能为空", t);
		$('#'+t).focus();
		return false;
	}

	t = "maleimg";
	v = $("#"+t).val();
	if(v=="") {
		dmsg("男会员标识不能为空", t);
		$('#'+t).focus();
		return false;
	}

	t = "femaleimg";
	v = $("#"+t).val();
	if(v=="") {
		dmsg("女会员标识不能为空", t);
		$('#'+t).focus();
		return false;
	}

	return true;
}
</script>
