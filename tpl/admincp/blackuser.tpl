<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$page_charset}-->" />
<title>黑名单</title>
<!--{include file="<!--{$cptplpath}-->headerjs.tpl"}-->
</head>
<body>
<!--{if $a eq 'run'}-->
<div class="main-wrap">
  <div class="path"><p>诚信联盟<span>&gt;&gt;</span><a href="<!--{$cpfile}-->?c=<!--{$c}-->">会员黑名单</a></p></div>
  <div class="main-cont">
    <h3 class="title">会员黑名单</h3>
	<div class="search-area ">

	  <form method="post" id="search_form" action="<!--{$cpfile}-->?c=<!--{$c}-->" />
	  <div class="item">
	    <label>性别：</label>
		<select name="sgender" id="sgender">
		<option value="">=全部=</option>
		<option value="2"<!--{if $sgender == "2"}--> selected<!--{/if}-->>女会员</option>
		<option value="1"<!--{if $sgender == "1"}--> selected<!--{/if}-->>男会员</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<label>拉黑原因：</label>
		<!--{hook mod='var' item='blacktype' type='select' name='sblacktype' text='=不限=' value=$sblacktype}-->
		&nbsp;&nbsp;&nbsp;
		<label>会员ID：</label><input type="text" id="suserid" name="suserid" class="input-100" value="<!--{if $suserid>0}--><!--{$suserid}--><!--{/if}-->" />&nbsp;&nbsp;&nbsp;
		<label>会员名称：</label><input type="text" id="susername" name="susername" class="input-150" value="<!--{$susername}-->" />
		<input type="submit" class="button_s" value="搜索" />
	  </div>
	  </form>

	</div>

    <table class="oe_table_list table_cs">
	  <tr>
	    <th width="6%">ID</th>
		<th width="7%">会员</th>
		<th width="5%">性别</th>
		<th width="5%">年龄</th>
		<th width="7%">学历</th>
		<th width="10%">收入</th>
		<th width="10%">所在地</th>
		<th width="10%">拉黑原因</th>
		<th width="10%">拉黑时间</th>
		<th width="10%">注册时间</th>
		<th width="10%">最后登录</th>
		<th>操作</th>
	  </tr>
	  <!--{foreach $blackuser as $volist}-->
	  <tr>
	    <td align="center"><!--{$volist.userid}--></td>
		<td align="left"><!--{$volist.username}--></td>
		<td align="center">
		<!--{if $volist.gender == '1'}-->男<!--{else}-->女<!--{/if}-->
		</td>
		<td align="center"><!--{$volist.age}--></td>
		<td align="center">
		<!--{hook mod='var' item='education' type='text' value=$volist.education}-->
		</td>
		<td>
		<!--{hook mod='var' item='salary' type='text' value=$volist.salary}-->
		</td>
		<td>
		<!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}-->
        </td>
		<td><!--{hook mod='var' item='blacktype' type='text' value=$volist.blacktype}--></td>
		<td><!--{$volist.blacktime|date_format:"%Y-%m-%d %H:%M"}--></td>
		<td><!--{$volist.addtime|date_format:"%Y-%m-%d %H:%M"}--></td>
		<td>
		<!--{if $volist.ontime > 0}-->
		<!--{$volist.ontime|date_format:"%Y-%m-%d %H:%M"}-->
		<!--{else}-->
		--
		<!--{/if}-->
		</td>
		<td align="center">
		  <a href="<!--{$cpfile}-->?c=<!--{$c}-->&a=cancel&id=<!--{$volist.userid}-->&<!--{$comeurl}-->" class="oe_ico_green" onclick="{if(confirm('确定要取消吗？一旦操作无法恢复。')){return true;} return false;}">取消黑名单</a>
		</td>
	  </tr>
	  <!--{foreachelse}-->
      <tr>
	    <td colspan="12" align="center">没有符合条件的数据</td>
	  </tr>
	  <!--{/foreach}-->
	</table>
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
<!--{assign var='pluginevent' value=XHook::doAction('adm_footer')}-->
</body>
</html>