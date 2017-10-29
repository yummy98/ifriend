<!--{assign var="menu_id" value=""}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<script type="text/javascript">
$(function(){
	var response = "<!--{$response}-->";
	var msg = "<!--{$msg}-->";
	var avatarurl = "<!--{$avatarurl}-->";
	window.parent.uploadCallBack(response, msg, avatarurl);
});
</script>
</body>
</html>