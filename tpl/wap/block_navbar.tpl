<div class="navbar-layout">
  <ul>
    <li<!--{if $menu_id == 'index'}--> class="cur"<!--{/if}--> onclick="goUrl('<!--{$wapfile}-->');">首页</li>
	<li<!--{if $menu_id == 'user'}--> class="cur"<!--{/if}--> onclick="goUrl('<!--{$wapfile}-->?c=user');">搜索</li>
	<li<!--{if $menu_id == 'message'}--> class="cur"<!--{/if}--> onclick="goUrl('<!--{$wapfile}-->?c=cp_message');">信件</li>
	<li<!--{if $menu_id == 'buy'}--> class="cur"<!--{/if}--> onclick="goUrl('<!--{$wapfile}-->?c=cp_buy');">购买</li>
	<!--{if $login.status == "1"}-->
	<li<!--{if $menu_id == 'cp'}--> class="cur"<!--{/if}--> onclick="goUrl('<!--{$wapfile}-->?c=cp')">我的</li>
	<!--{else}-->
	<li <!--{if $menu_id == 'login'}--> class="cur"<!--{/if}--> onclick="goUrl('<!--{$wapfile}-->?c=passport&a=login')">登录</li>
	<!--{/if}-->
  </ul>
  <div class="clear"></div>
</div>