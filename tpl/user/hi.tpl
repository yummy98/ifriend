<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="hi"}-->
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 我的问候</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->

  <div class="main_right">
	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=message">会员来信</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=outmsg">已发信件</a></li>
		  <li class="tab_item<!--{if $a == 'run' || $a == 'read'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=hi">收到问候</a></li>
		  <li class="tab_item<!--{if $a == 'to' || $a == 'view'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=hi&a=to">已发问候</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=sysmsg">系统消息</a></li>
	    </ul>
	  </div>
    <div class="div_smallnav_content_hover">

	  <!--{if $a eq 'run'}-->
	  <div class="nav-tips">
	    <div class="span">共收到个<!--{$total}-->问候</div>
	    筛选排序：
	    <img src="<!--{$ucpath}-->images/tips-msg01.gif" /><a href="<!--{$ucfile}-->?c=hi&type=unread">未读问候</a> &nbsp;&nbsp;&nbsp;
	    <img src="<!--{$ucpath}-->images/tips-msg02.gif" /><a href="<!--{$ucfile}-->?c=hi&type=read">已读问候</a>&nbsp;&nbsp;&nbsp;
	  </div>
	  <form action="<!--{$ucfile}-->?c=hi" method="post" name="myform" id="myform">
	  <input type="hidden" name="a" id="a" value="" />
	  <table class="table">
		<tr> 	 	 	 	
		  <td width='12%'>状态</td>
		  <td width='15%'>发件人</td>
		  <td width='45%'>发件人信息</td>
		  <td width='20%'>发件时间</td>
		  <td>操作</td>
		</tr>
		<!--{if empty($hi)}-->
		<tr>
		  <td colspan="5" align="center" class='hback'>对不起， 暂没有会员和你打招呼。</td>
		</tr>
		<!--{else}-->
		<!--{foreach $hi as $volist}-->
		<tr>
		  <td>
		    <input name='id[]' type='checkbox' value='<!--{$volist.hiid}-->' onClick="checkItem(this, 'chkAll')">
			<!--{if $volist.status == '0'}-->
			  <img src="<!--{$ucpath}-->images/tips-msg01.gif" title="未读问候" alt="未读问候" />
			<!--{elseif $volist.status == '1'}-->
			   <img src="<!--{$ucpath}-->images/tips-msg02.gif" title="已读问候" alt="已读问候" />
			<!--{/if}-->
		  </td>
		  <td style="text-align:left;<!--{if $volist.status=='0'}-->font-weight:bold;<!--{/if}-->"><!--{$volist.levelimg}--> <a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></td>
		  <td style="text-align:left;<!--{if $volist.status=='0'}-->font-weight:bold;<!--{/if}-->">
			<!--{if $volist.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;&nbsp;<!--{$volist.age}-->岁&nbsp;&nbsp;
			<!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}-->
			<!--{area type='text' value=$volist.provinceid}-->&nbsp;
			<!--{area type='text' value=$volist.cityid}-->&nbsp;
			<!--{hook mod='var' item='education' type='text' value=$volist.education}-->&nbsp;
			<!--{hook mod='var' item='salary' type='text' value=$volist.salary}-->
		  </td>
		  <td style="<!--{if $volist.status=='0'}-->font-weight:bold;<!--{/if}-->"><!--{$volist.sendtime|date_format:"%Y/%m/%d %H:%M:%S"}--></td>
		  <td align="left" style="<!--{if $volist.status=='0'}-->font-weight:bold;<!--{/if}-->"><a href='<!--{$ucfile}-->?c=hi&a=read&id=<!--{$volist.hiid}-->&<!--{$urlitem}-->'>阅读</a></td>
		</tr>
		<!--{/foreach}-->
		<tr>
		  <td><input name='chkAll' type='checkbox' id='chkAll' onClick="checkAll(this, 'id[]')" value='checkbox' />全选</td>
		  <td style="text-align:left;" colspan="4">
		    <input type="submit" name="btn_delete" id="btn_delete" value="删除选定" onClick="{if(confirm('确定要删除吗？')){$('#a').val('delreceive');$('#myform').submit();return true;}return false;}"  class="button-red" style="cursor:pointer;" />
		  </td>
		</tr>
		<!--{/if}-->
	  </table>
	  </form>

	  <!--{if $showpage!=""}-->
	  <div class="page_digg" style="margin-top:15px"><!--{$showpage}--></div>
	  <!--{/if}-->
	  <!--{/if}-->
	  
	  <!--{if $a == 'read'}-->
	  <!--阅读已收-->
	  <div class="nav-tips">
	    <div class="span"><a href="<!--{$ucfile}-->?c=hi&<!--{$comeurl}-->">返回列表</a></div>
	    筛选排序：
	    <img src="<!--{$ucpath}-->images/tips-msg01.gif" /><a href="<!--{$ucfile}-->?c=hi&type=unread">未读问候</a> &nbsp;&nbsp;&nbsp;
	    <img src="<!--{$ucpath}-->images/tips-msg02.gif" /><a href="<!--{$ucfile}-->?c=hi&type=read">已读问候</a>&nbsp;&nbsp;&nbsp;
	  </div>
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
	    <tr>
		  <td class="lblock" width="15%">发件时间：</td>
		  <td class="rblock" width="85%"><!--{$hi.sendtime|date_format:"%Y-%m-%d %H:%M:%S"}--></td>
		</tr>
		<tr>
		  <td class="lblock">发 件 人：</td>
		  <td class="rblock">
			<!--{$hi.levelimg}--><a href="<!--{$hi.homeurl}-->" target="_blank"><!--{$hi.username}--></a>

			（<!--{if $hi.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;&nbsp;<!--{$hi.age}-->岁&nbsp;&nbsp;
			<!--{hook mod='var' item='marrystatus' type='text' value=$hi.marrystatus}-->
			<!--{area type='text' value=$hi.provinceid}-->&nbsp;
			<!--{area type='text' value=$hi.cityid}-->&nbsp;
			<!--{hook mod='var' item='education' type='text' value=$hi.education}-->&nbsp;
			<!--{hook mod='var' item='salary' type='text' value=$hi.salary}-->）
		  </td>
		</tr>
		<tr>
		  <td class="lblock">问 候 语：</td>
		  <td class="rblock"><!--{$hi.message|nl2br}--></td>
		</tr>
		<tr>
		  <td class="lblock"></td>
		  <td class="rblock">
		  <input type="button" name="btn_hi" id="btn_hi" value="打招呼" class="button-red" onclick="artbox_hi('<!--{$hi.fromuserid}-->');" />&nbsp;&nbsp;&nbsp;
		  <input type="button" name="btn_write" id="btn_write" value="写信件" class="button-green" onclick="artbox_writemsg('<!--{$hi.fromuserid}-->');" />
		  </td>
		</tr>
	  </table>
	  <!--{/if}-->

	  <!--{if $a eq 'to'}-->
	  <!--已发问候列表-->
	  <div class="nav-tips">
	    <div class="span">已发问候<!--{$total}-->个</div>
	    筛选排序：
	    <img src="<!--{$ucpath}-->images/tips-msg01.gif" /><a href="<!--{$ucfile}-->?c=hi&a=to&type=unread">未读问候</a> &nbsp;&nbsp;&nbsp;
	    <img src="<!--{$ucpath}-->images/tips-msg02.gif" /><a href="<!--{$ucfile}-->?c=hi&a=to&type=read">已读问候</a>&nbsp;&nbsp;&nbsp;
	  </div>
	  <form action="<!--{$ucfile}-->?c=hi&a=to" method="post" name="myform" id="myform">
	  <input type="hidden" name="a" id="a" value="" />
	  <table class="table">
		<tr> 	 	 	 	
		  <td width='12%'>状态</td>
		  <td width='15%'>收件人</td>
		  <td width='45%'>收件人信息</td>
		  <td width='20%'>收件时间</td>
		  <td>操作</td>
		</tr>
		<!--{if empty($hi)}-->
		<tr>
		  <td colspan="5" align="center" class='hback'>对不起， 暂没有给任何打过招呼。</td>
		</tr>
		<!--{else}-->
		<!--{foreach $hi as $volist}-->
		<tr>
		  <td>
		    <input name='id[]' type='checkbox' value='<!--{$volist.hiid}-->' onClick="checkItem(this, 'chkAll')">
			<!--{if $volist.status == 0}-->
			  <img src="<!--{$ucpath}-->images/tips-msg01.gif" title="未读问候" alt="未读问候" />
			<!--{elseif $volist.status == 1}-->
			   <img src="<!--{$ucpath}-->images/tips-msg02.gif" title="已读问候" alt="已读问候" />
			<!--{/if}-->
		  </td>
		  <td style="text-align:left;"><!--{$volist.levelimg}--> <a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></td>
		  <td style="text-align:left;">
			<!--{if $volist.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;&nbsp;<!--{$volist.age}-->岁&nbsp;&nbsp;
			<!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}-->
			<!--{area type='text' value=$volist.provinceid}-->&nbsp;
			<!--{area type='text' value=$volist.cityid}-->&nbsp;
			<!--{hook mod='var' item='education' type='text' value=$volist.education}-->&nbsp;
			<!--{hook mod='var' item='salary' type='text' value=$volist.salary}-->
		  </td>
		  <td><!--{$volist.sendtime|date_format:"%Y/%m/%d %H:%M:%S"}--></td>
		  <td align="left"><a href='<!--{$ucfile}-->?c=hi&a=view&id=<!--{$volist.hiid}-->&<!--{$urlitem}-->'>查看</a></td>
		</tr>
		<!--{/foreach}-->
		<tr>
		  <td><input name='chkAll' type='checkbox' id='chkAll' onClick="checkAll(this, 'id[]')" value='checkbox' />全选</td>
		  <td style="text-align:left;" colspan="4">
		    <input type="submit" name="btn_delete" id="btn_delete" value="删除选定" onClick="{if(confirm('确定要删除吗？')){$('#a').val('delto');$('#myform').submit();return true;}return false;}"  class="button-coff" style="cursor:pointer;" />
		  </td>
		</tr>
		<!--{/if}-->
	  </table>
	  </form>

	  <!--{if $showpage!=""}-->
	  <div class="page_digg" style="margin-top:15px"><!--{$showpage}--></div>
	  <!--{/if}-->
	  <!--{/if}-->

	  <!--{if $a == 'view'}-->
	  <!--阅读已发-->
	  <div class="nav-tips">
	    <div class="span"><a href="<!--{$ucfile}-->?c=hi&a=to&<!--{$comeurl}-->">返回列表</a></div>
	    筛选排序：
	    <img src="<!--{$ucpath}-->images/tips-msg01.gif" /><a href="<!--{$ucfile}-->?c=hi&a=to&type=unread">未读问候</a> &nbsp;&nbsp;&nbsp;
	    <img src="<!--{$ucpath}-->images/tips-msg02.gif" /><a href="<!--{$ucfile}-->?c=hi&a=to&type=read">已读问候</a>&nbsp;&nbsp;&nbsp;
	  </div>
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
	    <tr>
		  <td class="lblock" width="15%">发件时间：</td>
		  <td class="rblock" width="85%"><!--{$hi.sendtime|date_format:"%Y-%m-%d %H:%M:%S"}--></td>
		</tr>
		<tr>
		  <td class="lblock">收 件 人：</td>
		  <td class="rblock">
			<!--{$hi.levelimg}--><a href="<!--{$hi.homeurl}-->" target="_blank"><!--{$hi.username}--></a>
			（<!--{if $hi.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;&nbsp;<!--{$hi.age}-->岁&nbsp;&nbsp;
			<!--{hook mod='var' item='marrystatus' type='text' value=$hi.marrystatus}-->
			<!--{area type='text' value=$hi.provinceid}-->&nbsp;
			<!--{area type='text' value=$hi.cityid}-->&nbsp;
			<!--{hook mod='var' item='education' type='text' value=$hi.education}-->&nbsp;
			<!--{hook mod='var' item='salary' type='text' value=$hi.salary}-->）
		  </td>
		</tr>
		<tr>
		  <td class="lblock">问 候 语：</td>
		  <td class="rblock"><!--{$hi.message|nl2br}--></td>
		</tr>
		<tr>
		  <td class="lblock"></td>
		  <td class="rblock">
		  <input type="button" name="btn_hi" id="btn_hi" value="打招呼" class="button-red" onclick="artbox_hi('<!--{$hi.touserid}-->');" />&nbsp;&nbsp;&nbsp;
		  <input type="button" name="btn_write" id="btn_write" value="写信件" class="button-green" onclick="artbox_writemsg('<!--{$hi.touserid}-->');" />
		  </td>
		</tr>
	  </table>
	  <!--{/if}-->


    </div>
	<!--//div_smallnav_content_hover End-->

  </div>
  <div class="clear"> </div>
  <!--//main_right End-->

</div>
<div class="_margin"></div>

<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}-->
</body>
</html>