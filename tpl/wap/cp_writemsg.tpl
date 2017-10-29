<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">【给<!--{$touser.username}-->写信件】</div>

<div class="cp-layout-body-gray">
  <div class="item-wrap">
    <h2>信件不能出现联系方式，否则无法提交。</h2>
	<div class="item-list">
	  <p>
	  <input type="hidden" name="touid" id="touid" value="<!--{$touid}-->" />
	  <textarea name="content" id="content" style="height:150px;"></textarea></p>
	</div>
  </div>
  <div class="hr-t"></div>

  <!--{if true === $paystatus}-->
  <div class="spanbtn1" id="btn_post">付费发信(<!--{$fee}-->金币)</div>
  <!--{else}-->
  <div class="spanbtn0" id="btn_post">免费发信</div>
  <!--{/if}-->
  <div class="hr-b"></div>
</div>
</body>
</html>
<script type="text/javascript">
$("#btn_post").click(function(){ //提交
	var touid = $("#touid").val();
	var content = $("#content").val();
	if (touid < 1) {
		ToastShow("参数错误");
		return false;
	}
	if (content == "") {
		ToastShow("内容不能为空");
		return false;
	}

	$.ajax({
		type: "POST",
		url: "<!--{$wapfile}-->?c=cp_do",
		cache: false,
		data: {a:"savewrite", touid:touid, content:content, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				ToastShow("发送成功");
				setTimeout(function(){
					goBack();
				}, 500);
			}
			else {
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("发送失败");
				}
			}
		},
		error: function() {
			ToastShow("操作失败，请检查网络状态。");
		}
	});

});
</script>