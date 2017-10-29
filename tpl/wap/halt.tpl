<!--{assign var="menu_id" value=""}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<div class="navbar-layout">
  <p>信息提示</p>
</div>
<div class="halt-layout">
  <p><!--{$msg}--></p>
  <p>
  <!--{if $type == "1"}-->
  <span onclick="goBack();">返回上一页</span>
  <!--{else}-->
  <script type="text/javascript">
  $(function(){
	  setTimeout(function(){
		  window.location.href = "<!--{$url}-->";
	  }, 1000);
  });
  </script>
  <span onclick="goUrl('<!--{$url}-->');">如果没有跳转，点击这里。</span>
  <!--{/if}-->
  </p>
</div>
</body>
</html>