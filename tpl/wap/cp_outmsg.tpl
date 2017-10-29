<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">发信箱 <b onclick="goUrl('<!--{$wapfile}-->?c=cp_message');">收信箱</b></div>
<div class="tab-layout-2">
  <ul>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg&type=')" style="width:33.3%;"<!--{if empty($type)}--> class="tab-selected"<!--{/if}-->>全部</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg&type=read')" style="width:33.3%;"<!--{if $type == 'read'}--> class="tab-selected"<!--{/if}-->>已读</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg&type=unread')" style="width:33.3%;"<!--{if $type == 'unread'}--> class="tab-selected"<!--{/if}-->>未读</li>
  </ul>
  <div class="clear"></div>
</div>

<div class="cp-layout-body">

  <div class="cplist-box">
    <!--{if empty($outmsg)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
	<ul id="json_data">
	  <!--{foreach $outmsg as $volist}-->
	  <li>
	    <div class="cplist-img" onclick="userDetail('<!--{$volist.touserid}-->');"><img src="<!--{$volist.avatarurl}-->" /></div>
		<div class="cplist-info">
		  <h2>
		  <span><!--{$volist.sendtime|date_format:"%m/%d %H:%M"}--></span>
		  <b onclick="userDetail('<!--{$volist.touserid}-->');"><!--{$volist.username}--></b></h2>
		  <p><!--{$volist.age}-->岁 <!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}--> <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--></p>
		  <p>
		  <i onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg&a=view&id=<!--{$volist.msgid}-->');">查看</i>
		  <!--{$volist.content|filterhtml:10}-->...
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
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
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
	var max_width = (WIN_WIDTH-100);
	$(".cplist-box .cplist-info").css({"width":max_width});

});
</script>