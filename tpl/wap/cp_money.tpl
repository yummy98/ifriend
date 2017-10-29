<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->

<div class="cp-bartitle">消费记录</div>
<div class="cp-layout-body">
  <div class="money-list">
    <!--{if empty($money)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
    <ul id="json_data">
	  <!--{foreach $money as $volist}-->
	  <li>
	    <h2>
		<!--{$volist.timeline|date_format:"%Y-%m-%d %H:%M:%S"}-->
		<span><!--{if $volist.actiontype=='1'}--><font color="green"><!--{$volist.amount}--></font><!--{else}--><font color="red"><!--{$volist.amount}--></font><!--{/if}--></span>
		</h2>
	    <p><!--{$volist.logcontent}--></p>
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
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_money&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_money&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
	<!--{/if}-->
  </div>
  <!--//ShowPage End-->
  <!--{/if}-->

</div>
<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</html>