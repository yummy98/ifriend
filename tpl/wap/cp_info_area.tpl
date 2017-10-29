<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">设置地区 (点击地区名称选择)</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="savearea" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li onclick="areaPopup('所在地区', 'dist');">
	    <div class="profile-item">所在地区：</div>
		<div class="profile-value" id="dist_text">
		<!--{if $login.info.provinceid == '0'}-->
		选择
		<!--{else}-->
		<!--{area type="text" value=$login.info.provinceid}--> 
		<!--{area type="text" value=$login.info.cityid}--> 
		<!--{area type="text" value=$login.info.distid}-->
		<!--{/if}-->
		</div>
		<div class="clear"></div>
		<input type="hidden" name="dist1" id="dist1" value="<!--{$login.info.provinceid}-->" />
		<input type="hidden" name="dist2" id="dist2" value="<!--{$login.info.cityid}-->" />
		<input type="hidden" name="dist3" id="dist3" value="<!--{$login.info.distid}-->" />
	  </li>

	  <li onclick="hometownPopup('户籍地区', 'hometown');">
	    <div class="profile-item">户&#12288;&#12288;籍：</div>
		<div class="profile-value" id="hometown_text">
		<!--{if $login.info.nationprovinceid == '0'}-->
		选择
		<!--{else}-->
		<!--{area type="text" value=$login.info.nationprovinceid}--> 
		<!--{area type="text" value=$login.info.nationcityid}--> 
		<!--{/if}-->
		</div>
		<div class="clear"></div>
		<input type="hidden" name="hometown1" id="hometown1" value="<!--{$login.info.nationprovinceid}-->" />
		<input type="hidden" name="hometown2" id="hometown2" value="<!--{$login.info.nationcityid}-->" />
	  </li>

	</ul>
	<div class="clear"></div>
  </div>
  <!--//profile-layout End-->

</div>
</form>
<!--//cp-layout-body End-->

<div class="spanbtn0" id="btn_post">保存修改</div>

<div id="varpop_shade" class="varpop-shade"></div>

<div class="varpop-layout" id='area_box'>
  <div class="varpop-head">
    <span id="area_title">选择</span>
	<i id="area_loading">loading...</i>
  </div>
  <div id="area_data"></div>
  <!--//area_data End-->
</div>
<!--//area_box ajax End-->

<div class="varpop-layout" id='hometown_box'>
  <div class="varpop-head">
    <span id="hometown_title">选择</span>
	<i id="hometown_loading">loading...</i>
  </div>
  <div id="hometown_data"></div>
</div>
<!--//hometown ajax End-->
</body>
</html>
<script type="text/javascript">
$("#btn_post").click(function(){
	if ($("#dist1").val() < 1) {
		ToastShow("请选择所在地区");
		return false;
	}

	if ($("#dist2").val() < 1) {
		ToastShow("请选择所在地区");
		return false;
	}

	$("#myform").submit();
});
</script>