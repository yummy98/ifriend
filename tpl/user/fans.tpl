<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="fans"}-->
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 我的粉丝</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->

  <div class="main_right">
    <!--TAB BEGIN-->
	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=listen">我的关注</a></li>
		  <li class="tab_item current"><a href="<!--{$ucfile}-->?c=fans">我的粉丝</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=visitme">谁看过我</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=visit">我看过谁</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=black">黑名单</a></li>
	    </ul>
	  </div>
	<!--TAB END-->

    <div class="div_smallnav_content_hover">
	  <!--{if $a eq 'run'}-->
	  <!--{if empty($fans)}-->
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
		<tr>
		  <td align="center">对不起，你还没有粉丝！</td>
		</tr>
	  </table>
	  <!--{else}-->
	  <!--{foreach $fans as $volist}-->

	  <div class="myfan_item">
	    <div class="myfan_logo">
		  <img class="user-logo" src="<!--{$volist.avatarurl}-->" width="50" height="60" />
		</div>
	    <div class="myfan_info">
		  <div style="width:100%;">
		    <strong><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></strong>
			<div class="myfan-button" id="tips_listen_<!--{$volist.userid}-->"><script>obj_listen_status('<!--{$volist.userid}-->', 'tips_listen_<!--{$volist.userid}-->');</script></div>
			<span><a href="###" onclick="artbox_complaint('<!--{$volist.userid}-->');">举报</a></span>
			<span><a href="###" onclick="artbox_sendgift('<!--{$volist.userid}-->');">送礼物</a></span>
			<span><a href="###" onclick="artbox_writemsg('<!--{$volist.userid}-->');">发信件</a></span>
			<span><a href="###" onclick="artbox_hi('<!--{$volist.userid}-->');">打招呼</a></span>
		  </div>
		  <div class="myfan_x">
			<!--{$volist.age}-->岁 <!--{hook mod='var' type='text' item='marrystatus' value=$volist.marrystatus}--> <!--{$volist.height}-->CM&nbsp;&nbsp;
		    <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}-->&nbsp;&nbsp;
		    <!--{hook mod='var' type='text' item='education' value=$volist.education}-->&nbsp;&nbsp;<!--{hook mod='var' type='text' item='salary' value=$volist.salary}-->
		  </div>
		  <div class="myfan_d">
		  <!--{if $volist.molstatus==1}-->
		  <!--{$volist.monolog|filterhtml:100}-->...
		  <!--{else}-->
		  <font color='#999999'>暂无内心独白</font>
		  <!--{/if}-->
		  </div>
		</div>
		<div class="clear"></div>
	  </div>

	  <!--{/foreach}-->
	  <div class="clear"></div>
	  <!--{if $showpage!=""}-->
	  <div class="page_digg" style="margin-top:15px"><!--{$showpage}--></div>
	  <!--{/if}-->

	  <!--{/if}-->
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
<script type="text/javascript">
/*粉丝关注*/
$(function() {
	$(".myfollow_item").bind({
		mouseover: function() {
			$("#" + $(this).attr("id") + "_db").hide();
			$("#" + $(this).attr("id") + "_gn").show();
			$("#" + $(this).attr("id") + "_close").show();
		},
		mouseout: function() {
			$("#" + $(this).attr("id") + "_db").show();
			$("#" + $(this).attr("id") + "_gn").hide();
			$("#" + $(this).attr("id") + "_close").hide();
		}
	});

	/*取消关注*/
	$(".myfollow_close").click(function() {
		$("#" + $(this).attr("cyaz")).fadeOut("slow");
	});
});
</script>
