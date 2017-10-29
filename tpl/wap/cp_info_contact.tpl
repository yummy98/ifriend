<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">联系方式</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="savecontact" />
<div class="cp-layout-body-gray">
  <div class="item-wrap">
	<div class="item-list">
	  <dl>
	    <dt>手机号码：</dt>
		<dd><input type="text" name="mobile" id="mobile" value="<!--{$login.info.mobile}-->" /></dd>
	  </dl>
	  <dl>
	    <dt>QQ号码：</dt>
		<dd><input type="text" name="qq" id="qq" value="<!--{$login.info.qq}-->" /></dd>
	  </dl>
	  <dl>
	    <dt>微信号：</dt>
		<dd><input type="text" name="msn" id="msn" value="<!--{$login.info.msn}-->" /></dd>
	  </dl>
	  <div class="clear"></div>
	</div>
  </div>
  <div class="hr-t"></div>
  <div class="spanbtn0" id="btn_post">提交保存</div>
  <div class="hr-b"></div>
</div>
</form>

</body>
</html>
<script type="text/javascript">
$("#btn_post").click(function(){
	$("#myform").submit();
});
</script>