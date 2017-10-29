<!--{assign var="menu_id" value="message"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">【阅读<!--{$message.frominfo.username}-->的来信】</div>

<div class="cp-layout-body-gray">
  <div class="item-wrap">
    <h2>发件时间：<!--{$message.sendtime|date_format:"%m/%d %H:%M"}--></h2>
	<div class="item-list">
	  <p>
	    <!--{$message.content|nl2br}-->
	  </p>
	</div>
  </div>
  <div class="hr-t"></div>

  <div class="spanbtn0" id="btn_write">给TA回信</div>
  <div class="hr-b"></div>
  <div id="btn_back" style="padding:10px;text-align:center;">返回收信箱</div>
  <div class="hr-b"></div>

</div>
</body>
</html>
<script type="text/javascript">
$(function(){
	$("#btn_write").click(function(){ //回信
		goUrl("<!--{$wapfile}-->?c=cp_do&a=writemsg&touid=<!--{$message.fromuserid}-->");
	});

	$("#btn_back").click(function(){
		goUrl("<!--{$wapfile}-->?c=cp_message&<!--{$comeurl}-->");
	});
});

</script>