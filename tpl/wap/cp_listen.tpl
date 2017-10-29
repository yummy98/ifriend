<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="tab-layout-2">
  <ul>
    <li class="tab-selected" style="width:50%;">我的关注</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=cp_fans');" style="width:50%;">我的粉丝</li>
  </ul>
  <div class="clear"></div>
</div>

<div class="cp-layout-body">
  <div class="cplist-box">
    <!--{if empty($listen)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
	<ul id="json_data">
	  <!--{foreach $listen as $volist}-->
	  <li id="listen_<!--{$volist.fuserid}-->">
	    <div class="cplist-img" onclick="userDetail('<!--{$volist.fuserid}-->');"><img src="<!--{$volist.avatarurl}-->" /></div>
		<div class="cplist-info">
		  <h2><i onclick="cancelListen('<!--{$volist.fuserid}-->');">取消关注</i> <b onclick="userDetail('<!--{$volist.fuserid}-->');"><!--{$volist.username}--></b></h2>
		  <p><!--{$volist.age}-->岁 <!--{hook mod='var' item='marrystatus' type='text' value=$volist.marrystatus}--> <!--{$volist.astro}--></p>
		  <p>
		  <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> <!--{hook mod='var' item='education' type='text' value=$volist.education}--> <!--{hook mod='var' item='salary' type='text' value=$volist.salary}-->
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
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_listen&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_listen&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
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

//取消关注
function cancelListen(id) {
	if (id > 0) {
		$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=cp_listen&a=cancel",
			cache: false,
			data: {fuid:id, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					ToastShow("操作成功");
					$("#listen_"+id).remove();
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("操作失败，请检查网络...");
					}
				}
			},
			error: function() {
				ToastShow("操作失败，请检查网络...");
			}
		});
	}
}
</script>