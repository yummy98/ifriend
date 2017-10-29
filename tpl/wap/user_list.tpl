<!--{assign var="menu_id" value="user"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->
<div class="hr-shadow"></div>
<div class="tab-layout">
  <ul>
    <li style="width:33.3%" class="tab-selected">搜索结果</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=user&a=idsearch');" style="width:33.3%">ID搜索</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=user&a=advsearch');" style="width:33.3%">条件搜索</li>
  </ul>
  <div class="clear"></div>
</div>

<div class="layout-body">
  <div class="user-list">
    <!--{if empty($user)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
    <ul id="json_data">
	  <!--{foreach $user as $volist}-->
	  <li onclick="userDetail('<!--{$volist.userid}-->');">
	    <img class="userlist-img" src="<!--{$volist.avatarurl}-->" />
		<div class="user-inner">
		  <h5>
		  <!--{if $volist.groupid > 1 && $volist.vipenddate > $time}-->
		  <!--{$volist.levelimg}-->
		  <!--{/if}-->
		  <!--{$volist.username}--><span><!--{if $volist.gender == '1'}-->男<!--{else}-->女<!--{/if}--></span></h5>
		  <p>
		     <!--{$volist.age}-->岁 | <!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}--> | <!--{$volist.height}-->CM<br />
			 <!--{$volist.astro}--> <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> 
		  </p>
		  <p>
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
	<span onclick="goUrl('<!--{$wapfile}-->?c=user&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=user&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
	<!--{/if}-->
  </div>
  <!--//ShowPage End-->
  <!--{/if}-->

</div>

<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</body>
</html>