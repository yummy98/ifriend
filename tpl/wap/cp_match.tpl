<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">缘分速配</div>

<div class="cp-layout-body">

  <div class="user-list">
    <!--{if empty($match)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
    <ul id="json_data">
	  <!--{foreach $match as $volist}-->
	  <li onclick="userDetail('<!--{$volist.userid}-->');">
	    <img class="userlist-img" src="<!--{$volist.avatarurl}-->" />
		<div class="user-inner">
		  <h5><!--{$volist.username}--><span><!--{if $volist.gender == '1'}-->男<!--{else}-->女<!--{/if}--></span></h5>
		  <p>
		    <!--{$volist.age}-->岁 | <!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}--> | <!--{$volist.height}-->CM<br />
			<!--{$volist.astro}--> | <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--><br />
			<!--{hook mod='var' item='education' type='text' value=$volist.education}--> <!--{hook mod='var' item='salary' type='text' value=$volist.salary}-->
		  </p>
		</div>
	  </li>
	  <!--{/foreach}-->
	</ul>
    <div class="clear"></div>
	<!--{/if}-->
  </div>
  <!--//list End-->

  <!--{if $pagecount > 1}-->
  <div class="page-layout">
    页次：<!--{$page}-->/<!--{$pagecount}-->
	<!--{if $prepage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_match&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_match&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
	<!--{/if}-->
  </div>
  <!--//ShowPage End-->
  <!--{/if}-->

</div>

</body>
</html>
<script type="text/javascript">
$(function(){
	//maxwidth
	var max_width = (WIN_WIDTH-140);
	$(".user-inner").css({"width":max_width});
});
</script>