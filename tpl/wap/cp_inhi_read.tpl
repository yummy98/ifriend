<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">查看收到招呼</div>

<div class="cp-layout-body">

  <div class="cp-data">
    <div class="cp-data-avatar">
	  <img src="<!--{$inhi.avatarurl}-->" />
	</div>
	<div class="cp-data-info">
	  <h2><b><!--{$inhi.username}--></b>(发件人)</h2>
	  <ul>
	    <li>
		  <!--{if $inhi.gender=='1'}-->男<!--{else}-->女<!--{/if}-->  <!--{$inhi.age}--> 岁 <!--{hook mod='var' item='marrystatus' type='text' value=$inhi.marrystatus}-->
		</li>
		<li>
		  <!--{area type='text' value=$inhi.provinceid}--> <!--{area type='text' value=$inhi.cityid}--> 
		  <!--{hook mod='var' item='education' type='text' value=$inhi.education}-->
		</li>
	  </ul>
	  <div class="clear"></div>
	</div>
	<div class="clear"></div>
  </div>
  
  <div class="message-box">
    <h2><!--{$inhi.username}--></h2>
	<h3><!--{$inhi.sendtime|date_format:"%Y-%m-%d %H:%M"}--></h3>
	<p><!--{$inhi.message|nl2br}--></p>
  </div>

  <div class="spanbtn0" onclick="goBackRefresh();">返回上一页</div>
  <div class="hr-b"></div>

</div>

</body>
</html>