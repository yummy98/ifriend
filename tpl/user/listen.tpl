<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="listen"}-->
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 我的关注</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->

  <div class="main_right">
	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item current"><a href="<!--{$ucfile}-->?c=listen">我的关注</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=fans">我的粉丝</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=visitme">谁看过我</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=visit">我看过谁</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=black">黑名单</a></li>
	    </ul>
	  </div>

    <div class="div_smallnav_content_hover">
	  <!--{if $a eq 'run'}-->
	  <!--{if empty($listen)}-->
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
		<tr>
		  <td align="center">对不起，你还没关注任何人！</td>
		</tr>
	  </table>
	  <!--{else}-->
	  <!--{foreach $listen as $volist}-->
	  <div class="myfollow_item" id="myfollow_<!--{$volist.fuserid}-->">
		<div class="myfollow_logo"><a href="<!--{$volist.homeurl}-->" target="_blank"><img class="user-logo" src="<!--{$volist.avatarurl}-->" width="50" height="60" /></a></div>
		<ul class="myfollow_info">
		  <li><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a>&nbsp;&nbsp;<!--{$volist.age}-->岁</li>
		  <li> 
		  <!--{hook mod='var' type='text' item='marrystatus' value=$volist.marrystatus}--> <!--{$volist.height}-->CM&nbsp;&nbsp;<!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}-->
		  </li>
		  <li>
		  <img src="<!--{$ucpath}-->images/cid<!--{if $volist.idnumberrz==0}-->_h<!--{/if}-->.png" title="<!--{if $volist.idnumberrz==0}-->身份证未认证<!--{else}-->已身份证认证<!--{/if}-->" />
		  <img src="<!--{$ucpath}-->images/video<!--{if $volist.videorz==0}-->_h<!--{/if}-->.png" title="<!--{if $volist.videorz==0}-->视频未认证<!--{else}-->已视频认证<!--{/if}-->" />
		  <img src="<!--{$ucpath}-->images/email<!--{if $volist.emailrz==0}-->_h<!--{/if}-->.png" title="<!--{if $volist.emailrz==0}-->邮箱未认证<!--{else}-->已邮箱认证<!--{/if}-->" /> 
		  </li>
		</ul>
		<div class="clear"></div>
		<div class="myfollow_db" id="myfollow_<!--{$volist.fuserid}-->_db">
		  <!--{if $volist.molstatus==1}-->
		  <!--{$volist.monolog|filterhtml:15}-->..
		  <!--{else}-->
		  <font color='#999999'>未审核,锁定</font>
		  <!--{/if}-->		
		</div>
		<div class="myfollow_gn" id="myfollow_<!--{$volist.fuserid}-->_gn">
		<a href="###" onclick="artbox_hi('<!--{$volist.fuserid}-->');">打招呼</a> | 
		<a href="###" onclick="artbox_writemsg('<!--{$volist.fuserid}-->');">写信件</a> | 
		<a href="###" onclick="artbox_sendgift('<!--{$volist.fuserid}-->');">送礼物</a> | 
		<a href="###" onclick="artbox_complaint('<!--{$volist.fuserid}-->');">举报</a>
		</div>
		<div class="myfollow_close" cyaz="myfollow_<!--{$volist.fuserid}-->" id="myfollow_<!--{$volist.fuserid}-->_close" title="取消关注"><a href="<!--{$ucfile}-->?c=listen&a=cancel&fuid=<!--{$volist.fuserid}-->&page=<!--{$page}-->">×</a></div>
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
//关注
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
