<!--{assign var='menuid' value='blackuser'}-->
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headinc.tpl"}-->
<body>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_menu.tpl"}-->
<form action="<!--{$urlpath}-->index.php?c=blackuser" method="post" id="black_serform" style="padding:0;margin:0;">
<div class="oe_blackuser_ser">
  <div class="oe_search_item">
	黑名单搜索：
	<select name="gender" id="gender">
	<option value=''>=性别=</option>
	<option value='2'<!--{if $gender=='2'}--> selected<!--{/if}-->>女会员</option>
	<option value='1'<!--{if $gender=='1'}--> selected<!--{/if}-->>男会员</option>
	</select>&nbsp;&nbsp;
	 拉黑原因：<!--{hook mod='var' item='blacktype' type='select' name='type' text='=不限=' value=$type}-->&nbsp;&nbsp;
	 会员ID：<input type="text" name="userid" id="userid" value="<!--{if $userid>0}--><!--{$userid}--><!--{/if}-->" />&nbsp;&nbsp;
	 会员名：<input type="text" name="username" id="username" value="<!--{$username}-->" />&nbsp;&nbsp;
	<i class="_btn2" id="btn_blackser">搜索</i>
  </div>
</div>
</form>
<script type="text/javascript">
$(function(){
	$("#btn_blackser").bind("click", function(){
		$("#black_serform").submit();
	});

});
</script>

<div class="oe_main_layout">
  <div class="oe_main_cont">
  
    <div class="_cont_lt">
	  <h2>
	    <b>黑名单</b>（如发现不良分子或不良行为,请您及时向我们举报！）
		<!--{if $login.status == '0'}-->
		<span><a href="###" onclick="artbox_loginbox();">我要举报+</a></span>
		<!--{else}-->
		<span><a href="###" onclick="artbox_complaint(0);">我要举报+</a></span>
		<!--{/if}-->
	  </h2>
	  <div class="oe_blackuser_list">
	    <!--{if empty($blackuser)}-->
	    <h6>没有符合条件的信息</h6>
	    <!--{else}-->
	    <!--{foreach $blackuser as $volist}-->
	    <dl>
		  <dt><img src="<!--{$volist.avatarurl}-->" /></dt>
		  <dd>
		    <h2><!--{$volist.username}--></h2>
		    <p>
		    ID：<!--{$volist.userid}--> <!--{if $volist.gender == '1'}-->男<!--{else}-->女<!--{/if}--> 
		    <!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> 
		    <!--{if $volist.height > 0}--><!--{$volist.height}-->CM<!--{/if}-->
		    </p>
		    <p>拉黑原因：<!--{hook mod='var' item='blacktype' type='text' value=$volist.blacktype}--></p>
		  </dd>
		  <i>拉黑时间：<!--{$volist.blacktime|date_format:"%Y-%m-%d %H:%M"}--></i>
		  <div class="clear"></div>
	    </dl>
	    <!--{/foreach}-->
	    <div class="clear"></div>
	    <!--{/if}-->
	  </div>
	  <!--//oe_blackuser_list End-->
	</div>

	<!--{if !empty($showpage)}-->
	<div class="page1">
	  <div class="pagecode"><!--{$showpage}--></div>
	  <div style="clear:both;"></div>
	</div>
	<!--{/if}-->	

	<div class="_cont_rt">
      
	  <div class="oe_right_layout">
	    <div class="oe_blackuser_tip">
	      <h2>帐号为什么被拉黑？<i></i><span></span></h2>
		  <p>
		  导致封号拉黑的行为有：照片不实 资料虚假 玩色情 玩一夜情 找第三者 攻击诽谤 言语不雅 侮辱 骚扰 谩骂 流氓 做托 诈骗 广告 活动违规 发帖违规 乱留联系方式。
		  </p>
	    </div>
	  </div>
	</div>

	<div class="clear"></div>

  </div>
</div>


<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_footer.tpl"}-->
</body>
</html>