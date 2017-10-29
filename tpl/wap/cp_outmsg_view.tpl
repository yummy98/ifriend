<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">查看已发信件</div>

<div class="cp-layout-body">

  <div class="cp-data">
    <div class="cp-data-avatar">
	  <img src="<!--{$outmsg.avatarurl}-->" />
	</div>
	<div class="cp-data-info">
	  <h2><b><!--{$outmsg.username}--></b>(收件人)</h2>
	  <ul>
	    <li>
		  <!--{if $outmsg.gender=='1'}-->男<!--{else}-->女<!--{/if}-->  <!--{$outmsg.age}--> 岁 <!--{hook mod='var' item='marrystatus' type='text' value=$outmsg.marrystatus}-->
		</li>
		<li>
		  <!--{area type='text' value=$outmsg.provinceid}--> <!--{area type='text' value=$outmsg.cityid}--> 
		  <!--{hook mod='var' item='education' type='text' value=$outmsg.education}-->
		</li>
	  </ul>
	  <div class="clear"></div>
	</div>
	<div class="clear"></div>
  </div>
  
  <div class="message-box">
    <h2><!--{$login.info.username}--></h2>
	<h3><!--{$outmsg.sendtime|date_format:"%Y-%m-%d %H:%M"}--></h3>
	<p><!--{$outmsg.content|nl2br}--></p>
  </div>
  
  <div class="spanbtn0" onclick="goBack();">返回上一页</div>
  <div class="hr-b"></div>
</div>

</body>
</html>