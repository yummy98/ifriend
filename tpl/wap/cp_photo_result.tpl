<!--{assign var="menu_id" value=""}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<script type="text/javascript">
$(function(){
	var response = "<!--{$response}-->";
	var msg = "<!--{$msg}-->";
	window.parent.uploadCallBack(response, msg);
});
</script>
</body>
</html>