<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="gift"}-->

<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 我的礼物</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->
  <div class="main_right">
	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item<!--{if $a == 'run'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=gift">收到的礼物</a></li>
		  <li class="tab_item<!--{if $a == 'sendlog'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=gift&a=sendlog">送出的礼物</a></li>
		  <!--{if $a == 'viewsend'}-->
		  <li class="tab_item current">查看送出的礼物</li>
		  <!--{/if}-->
		  <!--{if $a == 'viewreceive'}-->
		  <li class="tab_item current">查看收到的礼物</li>
		  <!--{/if}-->
		</ul>
	  </div>
	
	<!--{if $a == 'run'}-->
	<!--收到的礼物-->
    <div class="div_smallnav_content_hover" id="nav_lv_detail">
	  <!--{if empty($gift)}-->
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
	    <tr>
		  <td align="center">对不起，你还没收到任何礼物。</td>
		</tr>
	  </table>
	  <!--{else}-->
      <ul>
	    <!--{foreach $gift as $volist}-->
        <li>
		  <a href="<!--{$ucfile}-->?c=gift&a=viewreceive&id=<!--{$volist.recordid}-->&page=<!--{$page}-->"><img src="<!--{$volist.imgurl}-->" width="120" height="120"  /></a>
          <div><a href="<!--{$ucfile}-->?c=gift&a=viewreceive&id=<!--{$volist.recordid}-->&page=<!--{$page}-->"><!--{$volist.giftname}--></a></div>
          <div class="cc"><!--{$volist.sendtimeline|date_format:"%Y-%m-%d %H:%M:%S"}--></div>
          赠送人：<a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a><br />
		  (<!--{if $volist.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;<!--{$volist.age}-->岁&nbsp;<!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}-->&nbsp;<!--{area type='text' value=$volist.cityid}-->)
		</li>
		<!--{/foreach}-->
      </ul>
	  <div class="clear"> </div>
	  <!--{/if}-->
    </div>
	<!--{if $showpage!=""}-->
	<div class="page_digg" style="margin-top:15px"><!--{$showpage}--></div>
	<div class="clear"></div>
	<!--{/if}-->
	<!--{/if}-->

	<!--{if $a == 'viewreceive'}-->
	<!--查看收到的礼物-->
	<div class="div_smallnav_content_hover">
	  <div class="item_title item_margin"><p>查看礼物</p><span class="shadow"></span></div>
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
	    <tr>
		  <td class="hback_1" style="text-align:center;" width="30%">
			  <br /><img src="<!--{$gift.imgurl}-->" />
			  <br /><b><!--{$gift.giftname}--></b><br />
		  </td>
		  <td valign="top">
		    <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
			    <tr>
				  <td width="15%" class="lblock">赠送人：</td>
				  <td class="rblock">
				  <!--{$gift.levelimg}--> <a href="<!--{$gift.homeurl}-->" target="_blank"><!--{$gift.username}--></a><br />(<!--{if $gift.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;&nbsp;
				  <!--{hook mod='var' item='marrystatus' type='text' value=$gift.marrystatus}-->&nbsp;<!--{$gift.age}-->岁&nbsp;
				  <!--{area type='text' value=$gift.provinceid}--> <!--{area type='text' value=$gift.cityid}-->&nbsp;
				  <!--{hook mod='var' item='education' type='text' value=$gift.education}-->)
				  </td>
				</tr>
			    <tr>
				  <td class="lblock">状 态：</td>
				  <td class="rblock">
				  <!--{if $gift.viewstatus=='1'}-->
				    <img src="<!--{$ucpath}-->images/ok.gif" /> <font color="green">已查看</font>  <!--{$gift.viewtimeline|date_format:"%Y-%m-%d %H:%M:%S"}-->
				  <!--{else}-->
				    <font color="#999999">未看</font>
				  <!--{/if}-->
				  &nbsp;
				  </td>
				</tr>
			    <tr>
				  <td class="lblock">赠 言：</td>
				  <td class="rblock"><!--{$gift.message|nl2br}--></td>
				</tr>
			    <tr>
				  <td class="lblock" height="50"></td>
				  <td class="rblock">
				  <input type="button" name="btn_jixu" id="btn_jixu" class="button-red" value="回赠礼物" onclick="artbox_sendgift('<!--{$gift.fromuserid}-->');" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="btn_return" id="btn_return" value="返回列表" class="button-green" onclick="javascript:window.location.href='<!--{$ucfile}-->?c=gift&<!--{$comeurl}-->'" /></td>
				</tr>
			</table>
		  </td>
		</tr>
	  </table>
	</div>
	<!--{/if}-->

    
	<!--{if $a == 'sendlog'}-->
	<!--送出的礼物-->
    <div class="div_smallnav_content_hover" id="nav_sclw_detail">
	  <!--{if empty($gift)}-->
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
	    <tr>
		  <td align="center">对不起，你还没送出任何礼物。</td>
		</tr>
	  </table>
	  <!--{else}-->
      <ul>
		<!--{foreach $gift as $volist}-->
        <li>
		  <a href="<!--{$ucfile}-->?c=gift&a=viewsend&id=<!--{$volist.recordid}-->&page=<!--{$page}-->"><img src="<!--{$volist.imgurl}-->" width="120" height="120" /></a>
          <div><a href="<!--{$ucfile}-->?c=gift&a=viewsend&id=<!--{$volist.recordid}-->&page=<!--{$page}-->"><!--{$volist.giftname}--></a></div>
          <div class="cc"><!--{$volist.sendtimeline|date_format:"%Y-%m-%d %H:%M:%S"}--></div>
		  接收人：<a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a><br />(<!--{if $volist.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;<!--{$volist.age}-->岁&nbsp;<!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}-->&nbsp;<!--{area type='text' value=$volist.cityid}-->)
	    </li>
		<!--{/foreach}-->
      </ul>
	  <!--{/if}-->
      <div class="clear"> </div>
    </div>
	<!--{if $showpage!=""}-->
	<div class="page_digg" style="margin-top:15px"><!--{$showpage}--></div>
	<div class="clear"></div>
	<!--{/if}-->
	<!--{/if}-->


	<!--{if $a == 'viewsend'}-->
	<!--查看送出的礼物-->
	<div class="div_smallnav_content_hover">
	  <div class="item_title item_margin"><p>查看礼物</p><span class="shadow"></span></div>
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh25">
	    <tr>
		  <td class="hback_1" style="text-align:center;" width="30%">
			  <br /><img src="<!--{$gift.imgurl}-->" />
			  <br /><b><!--{$gift.giftname}--></b><br />
		  </td>
		  <td valign="top">
		    <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh25">
			    <tr>
				  <td width="15%" class="lblock">接收人：</td>
				  <td class="rblock">
				  <!--{$gift.levelimg}--> <a href="<!--{$gift.homeurl}-->" target="_blank"><!--{$gift.username}--></a><br />(<!--{if $gift.gender==1}-->男<!--{else}-->女<!--{/if}-->&nbsp;&nbsp;
				  <!--{hook mod='var' item='marrystatus' type='text' value=$gift.marrystatus}-->&nbsp;<!--{$gift.age}-->岁&nbsp;
				  <!--{area type='text' value=$gift.provinceid}--> <!--{area type='text' value=$gift.cityid}-->&nbsp;
				  <!--{hook mod='var' item='education' type='text' value=$gift.education}-->)
				  </td>
				</tr>
			    <tr>
				  <td class="lblock">状 态：</td>
				  <td class="rblock">
				  <!--{if $gift.viewstatus=='1'}-->
				    <img src="<!--{$ucpath}-->images/ok.gif" /> <font color="green">已查看</font>  <!--{$gift.viewtimeline|date_format:"%Y-%m-%d %H:%M:%S"}-->
				  <!--{else}-->
				    <font color="#999999">未看</font>
				  <!--{/if}-->
				  &nbsp;
				  </td>
				</tr>
			    <tr>
				  <td class="lblock">赠 言：</td>
				  <td class="rblock"><!--{$gift.message|nl2br}--></td>
				</tr>
			    <tr>
				  <td class="lblock" height="50"></td>
				  <td class="rblock">
				  <input type="button" name="btn_send" id="btn_send" class="button-red" value="继续赠送" onclick="artbox_sendgift('<!--{$gift.touserid}-->');" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="btn_return" id="btn_return" value="返回列表" class="button-green" onclick="javascript:window.location.href='<!--{$ucfile}-->?c=gift&a=sendlog&<!--{$comeurl}-->';" /></td>
				</tr>
			</table>
		  </td>
		</tr>
	  </table>
	</div>
	<!--{/if}-->

  </div>
  <div class="clear"> </div>
  <!--//main_right End-->

  <div style="margin:30px;"></div>
</div>
<!--//user_main End-->
<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}-->
</body>
</html>
