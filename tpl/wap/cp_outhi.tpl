<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">已发招呼 <b onclick="goUrl('<!--{$wapfile}-->?c=cp_inhi');">收到招呼</b></div>
<div class="tab-layout-2">
  <ul>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_outhi&type=')" style="width:33.3%;"<!--{if empty($type)}--> class="tab-selected"<!--{/if}-->>全部</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_outhi&type=read')" style="width:33.3%;"<!--{if $type == 'read'}--> class="tab-selected"<!--{/if}-->>已读</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_outhi&type=unread')" style="width:33.3%;"<!--{if $type == 'unread'}--> class="tab-selected"<!--{/if}-->>未读</li>
  </ul>
  <div class="clear"></div>
</div>

<div class="cp-layout-body">

  <div class="smlist-box">
    <!--{if empty($outhi)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
	<ul id="json_data">
	  <!--{foreach $outhi as $volist}-->
	  <li>
	    <div class="smlist-img" onclick="userDetail('<!--{$volist.touserid}-->');">
		  <img src="<!--{$volist.avatarurl}-->" />
		</div>
		<div class="smlist-info">
		  <h2>
		  <span><!--{$volist.sendtime|date_format:"%m/%d %H:%M"}--></span>
		  <b onclick="userDetail('<!--{$volist.touserid}-->');"><!--{$volist.username}--></b></h2>
		  <p>
		  <i onclick="goUrl('<!--{$wapfile}-->?c=cp_outhi&a=view&id=<!--{$volist.hiid}-->');">查看</i>
		  <!--{$volist.age}-->岁 <!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}--> <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}-->
		  </p>
		</div>
		<div class="clear"></div>
	  </li>
	  <!--{/foreach}-->
	</ul>
	<div class="clear"></div>
	<!--{/if}-->
  </div>
  <!--//List End-->


  <!--{if $pagecount > 1}-->
  <div class="page-layout">
    页次：<!--{$page}-->/<!--{$pagecount}-->
	<!--{if $prepage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_outhi&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_outhi&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
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
	var max_width = (WIN_WIDTH-88);
	$(".smlist-box .smlist-info").css({"width":max_width});

});
</script>