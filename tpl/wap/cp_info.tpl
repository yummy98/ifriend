<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">修改资料</div>

<div class="cp-layout-body-gray">

  <div class="cp-index-bar">
    <ul>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=base');"><i class="mob_pro_01"></i>基本资料</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=area');"><i class="mob_pro_10"></i>设置地区</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=life');"><i class="mob_pro_02"></i>生活资料</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=looks')" style="border-bottom:none;"><i class="mob_pro_03"></i>外貌资料</li>
	</ul>
	<div class="clear"></div>
  </div>

  <div class="cp-index-bar" style="margin-top:20px;">
	<ul>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=monolog');"><i class="mob_pro_04"></i>内心独白</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=work');"><i class="mob_pro_05"></i>学习工作</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=guihua');" style="border-bottom:none;"><i class="mob_pro_09"></i>爱情规划</li>
	</ul>
	<div class="clear"></div>
  </div>

  <div class="cp-index-bar" style="margin-top:20px;">
	<ul>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=interest');"><i class="mob_pro_07"></i>兴趣爱好</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info&a=contact');" style="border-bottom:none;"><i class="mob_pro_08"></i>联系方式</li>
	</ul>
	<div class="clear"></div>
  </div>
</div>

<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</body>
</html>