<!--{assign var="menu_id" value="message"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">收信箱 <b onclick="goUrl('<!--{$wapfile}-->?c=cp_outmsg');">发信箱</b></div>
<div class="tab-layout-2">
  <ul>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_message&type=')" style="width:33.3%;"<!--{if empty($type)}--> class="tab-selected"<!--{/if}-->>全部</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_message&type=read')" style="width:33.3%;"<!--{if $type == 'read'}--> class="tab-selected"<!--{/if}-->>已读</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_message&type=unread')" style="width:33.3%;"<!--{if $type == 'unread'}--> class="tab-selected"<!--{/if}-->>未读</li>
  </ul>
  <div class="clear"></div>
</div>


  <div class="cplist-box">
    <!--{if empty($message)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
	<ul id="json_data">
	  <!--{foreach $message as $volist}-->
	  <li>
	    <div class="cplist-img" onclick="userDetail('<!--{$volist.fromuserid}-->');">
		  <img src="<!--{$volist.avatarurl}-->" />
		  <!--{if $volist.readflag == '0'}-->
		  <div class="cplist-new"></div>
		  <!--{/if}-->
		</div>
		<div class="cplist-info">
		  <h2>
		  <!--{if $volist.readflag == '0'}-->
		  <span style="color:#333"><!--{$volist.sendtime|date_format:"%m/%d %H:%M"}--></span>
		  <!--{else}-->
		  <span><!--{$volist.sendtime|date_format:"%m/%d %H:%M"}--></span>
		  <!--{/if}-->
		  <b onclick="userDetail('<!--{$volist.fromuserid}-->');"><!--{$volist.username}--></b>
		  </h2>
		  <p><!--{$volist.age}-->岁 <!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}--> <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--></p>
		  <p>
		  <!--{if $volist.readflag == '1'}-->
		    <!--已读-->
		    <i onclick="goUrl('<!--{$wapfile}-->?c=cp_message&a=readmsg&id=<!--{$volist.msgid}-->&<!--{$urlitem}-->&page=<!--{$page}-->');">已读</i>
		  <!--{else}-->
		    <!--{if true === $needpay}-->
			<i onclick="payView('<!--{$volist.msgid}-->');">付费看信</i>
			<!--{else}-->
		    <i onclick="goUrl('<!--{$wapfile}-->?c=cp_message&a=readmsg&id=<!--{$volist.msgid}-->&<!--{$urlitem}-->&page=<!--{$page}-->');">免费看信</i>
			<!--{/if}-->
		  <!--{/if}-->
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

  <!--{if $pagecount > 1}-->
  <div class="page-layout">
    页次：<!--{$page}-->/<!--{$pagecount}-->
	<!--{if $prepage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_message&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_message&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
	<!--{/if}-->
  </div>
  <!--//ShowPage End-->
  <!--{/if}-->

</body>
</html>
<script type="text/javascript">
$(function(){
	//maxwidth
	var max_width = (WIN_WIDTH-100);
	$(".cplist-box .cplist-info").css({"width":max_width});

});
function payView(id) {
	$.ajax({
		type: "POST",
		url: "<!--{$wapfile}-->?c=cp_message",
		cache: false,
		data: {a:"readpay", id:id, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				goUrl("<!--{$wapfile}-->?c=cp_message&a=readmsg&id="+id+"&<!--{$urlitem}-->&page=<!--{$page}-->");
			}
			else {
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("付费失败，请先充值。");
				}
			}
		},
		error: function() {
			ToastShow("操作失败，请检查网络状态。");
		}
	});
}
</script>