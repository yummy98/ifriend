<!--{assign var="menu_id" value=""}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->

<div class="reg-layout">


  <div class="reg2-avatar">
	<div class="img-preview">
	  <!--{if !empty($login.info.avatar)}-->
	  <img id="img_preview" src="<!--{$urlpath}--><!--{$login.info.avatar}-->" />
	  <!--{else}-->
	  <!--{if $login.info.gender == "2"}-->
	  <img id="img_preview" src="<!--{$urlpath}-->tpl/static/images/gender_2.gif" />
	  <!--{else}-->
	  <img id="img_preview" src="<!--{$urlpath}-->tpl/static/images/gender_1.gif" />
	  <!--{/if}-->
	  <!--{/if}-->
	</div>
	<div class="img-up" style="position:relative;">
	  <h2>上传头像，获得更多惊喜。</h2>
	  <div class="oe_uploadimg_layout">
		<div class="_img_layout_rt" style="width:80%;">
		  <div class="oe_img_upload">
			<label class="_uploadbtn">上传头像<input type="file" name="img" id="img" value="" /></label>
			<label class="_uploading" id="img_loading">
			  <img src="<!--{$wapskin}-->images/loading.gif" />上传中...
			</label>
			<input type="hidden" id="img_thumb" name="img_thumb" value="" />
			<input type="hidden" id="img_url" name="img_url" value="" />
		  </div>
		</div>
		<div class="clear"></div>
	  </div>
	  <script type="text/javascript">
	  $(function(){
		$("#img").live("change", function(){
			oeloveUploadImg("img", "<!--{$wapfile}-->?c=passport&a=upladimg");
		});
	  });
	  </script>

	</div>
	<div class="clear"></div>
  </div>


  <div class="reg-wrap" style="margin-top:15px;">
    <h2>内心独白 (请勿填写联系方式，否则无法通过)</h2>
	<div class="reg-itemlist">
	  <p>
	  <textarea name="content" id="content"></textarea>
	  </p>
	</div>
  </div>
  <!--/reg-wrap End-->
 <div class="spanbtn1" id="btn_post">保存独白</div>
 <p style="padding:10px;color:#666;text-align:center;" onclick="goUrl('<!--{$wapfile}-->?c=cp');">跳过这一步，进入会员中心</p>

</div>
<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
<script type="text/javascript">
$(function(){
	$("#btn_post").click(function(){
		var content = $("#content").val();
		if (content == "") {
			ToastShow("内心独白不能为空");
			return false;
		}

		$("#btn_post").html("保存中，请稍等...");
		$.ajax({
			type: "POST",
			url: "<!--{$wapfile}-->?c=passport",
			cache: false,
			data: {
					a:"savemonolog", content:content, r:get_rndnum(8)
			},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					ToastShow("保存成功");
					setTimeout(function(){
						goUrl("<!--{$webappfile}-->?c=cp");
					}, 800);
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("保存失败，请检查网络...");
					}
					$("#btn_post").html("保存独白");
					
				}
			},
			error: function() {
				ToastShow("提交失败，请检查网络...");
				$("#btn_post").html("保存独白");
			}
		});


	});
});
</script>
</body>
</html>
