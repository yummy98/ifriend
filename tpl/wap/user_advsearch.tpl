<!--{assign var="menu_id" value="user"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->
<div class="hr-shadow"></div>
<div class="tab-layout">
  <ul>
    <li onclick="goUrl('<!--{$wapfile}-->?c=user');" style="width:33.3%">搜索结果</li>
    <li onclick="goUrl('<!--{$wapfile}-->?c=user&a=idsearch');" style="width:33.3%">ID搜索</li>
    <li class="tab-selected" style="width:33.3%">条件搜索</li>
  </ul>
  <div class="clear"></div>
</div>

<form name="search_form" id="search_form" action="<!--{$wapfile}-->?c=user" method="post">
<div class="adv-search">
  <dl>
    <dt>地&#12288;区：</dt>
	<dd>
		<span onclick="areaPopup('选择地区', 's_dist');" id="s_dist_text">选择</span>
		<input type="hidden" name="s_dist1" id="s_dist1" value="0" />
		<input type="hidden" name="s_dist2" id="s_dist2" value="0" />
		<input type="hidden" name="s_dist3" id="s_dist3" value="0" />
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>我要找：</dt>
	<dd>
	   <select name="s_sex" id='s_sex'>
		<!--{if $login.status == 1}-->
        <option value="1"<!--{if $login.info.gender==2}--> selected<!--{/if}-->>男会员</option>
        <option value="2"<!--{if $login.info.gender==1}--> selected<!--{/if}-->>女会员</option>
		<!--{else}-->
        <option value="1">男会员</option>
        <option value="2" selected="selected">女会员</option>
		<!--{/if}-->
      </select>
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>头&#12288;像：</dt>
	<dd>
	   <select name='s_avatar' id='s_avatar'><option value=''>不限</option><option value='1' selected>有</option></select>
	</dd>
	<div class="clear"></div>
  </dl>



  <dl>
    <dt>年&#12288;龄：</dt>
	<dd>
	   <!--{hook mod='age' name='s_sage' value='20' text='=不限='}-->&nbsp;~&nbsp;<!--{hook mod='age' name='s_eage' value='30' text='=不限='}--> 岁
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>身&#12288;高：</dt>
	<dd>
	   <!--{hook mod='height' name='s_sheight' value='155' text='=不限='}--><span>&nbsp;~&nbsp;</span><!--{hook mod='height' name='s_eheight' value='175' text='=不限='}--> CM
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>婚&#12288;史：</dt>
	<dd>
	   <!--{hook mod='var' item='marrystatus' name='s_marry' type='select' text='=不限='}-->
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>学&#12288;历：</dt>
	<dd>
	   <!--{hook mod='var' item='education' type='select' name='s_sedu' text='=不限='}--><span>&nbsp;~&nbsp;</span><!--{hook mod='var' item='education' type='select' name='s_eedu' text='=不限='}-->
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>月收入：</dt>
	<dd>
	   <!--{hook mod='var' item='salary' type='select' name='s_ssalary' text='=不限='}--><span>&nbsp;~&nbsp;</span><!--{hook mod='var' item='salary' type='select' name='s_esalary' text='=不限='}-->
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>小孩情况：</dt>
	<dd>
	   <!--{hook mod='var' item='childrenstatus' type='select' name='s_havechild' text='=不限='}-->
	</dd>
	<div class="clear"></div>
  </dl>

  <dl>
    <dt>住房情况：</dt>
	<dd>
	   <!--{hook mod='var' item='housing' type='select' name='s_house' text='=不限='}-->
	</dd>
	<div class="clear"></div>
  </dl>

  <dl style="border-bottom:none;">
    <dt>购车情况：</dt>
	<dd>
	   <!--{hook mod='var' item='caring' type='select' name='s_car' text='=不限='}-->
	</dd>
	<div class="clear"></div>
  </dl>

  <div class="clear"></div>
</div>
</form>
<div class="spanbtn0" id="btn_submit">立即搜索</div>
<script type="text/javascript">
$("#btn_submit").click(function(){
	$("#search_form").submit();
});
</script>
<div class="hr-b"></div>


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

<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</body>
</html>