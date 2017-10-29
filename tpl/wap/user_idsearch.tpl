<!--{assign var="menu_id" value="user"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->
<div class="hr-shadow"></div>
<div class="tab-layout">
  <ul>
    <li onclick="goUrl('<!--{$wapfile}-->?c=user');" style="width:33.3%">搜索结果</li>
    <li class="tab-selected" style="width:33.3%">ID搜索</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=user&a=advsearch');" style="width:33.3%">条件搜索</li>
  </ul>
  <div class="clear"></div>
</div>

<form id="form_search" method="post" action="<!--{$wapfile}-->?c=user">
<div class="search-id">
  <div class="search-ks">
    <input type="text" onblur="if (value ==''){value='请输入会员ID'}" onfocus="if (value =='请输入会员ID'){value =''}" value="请输入会员ID" name="s_uid" id="s_uid" />
    <span class="ks-btn" id="btn_search"></span>
  </div>
</div>
</form>
<script type="text/javascript">
$(function(){
	$("#btn_search").click(function(){
		$("#form_search").submit();
	});
});
</script>
</body>
</html>