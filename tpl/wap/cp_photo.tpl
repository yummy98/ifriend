<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">我的相册 <b id="up_tips">上传照片</b></div>
<div class="cp-layout-body">

  <form action="<!--{$wapfile}-->?c=cp_photo&a=saveupload&uploadpart=fileurl" method="post" enctype="multipart/form-data" name="upload_form" id="upload_form" target="uploadiframe" style="display:none;">
  <input type="hidden" name="thumbfiles" id="thumbfiles" />
  <div class="cp-album-upload">
    <ul>
	  <li>照片标题：<input type="text" name="title" id="title" maxlength="255" placeholder="输入照片标题" /></li>
	  <li>本地照片：<input type="file" name="fileurl" id="fileurl" /></li>
	</ul>
	<div class="clear"></div>
    
	<div class="spanbtn0" style="margin-top:10px;margin-bottom:10px;" id="btn_upload">上传</div>

  </div>
  <iframe name="uploadiframe" id="uploadiframe" style="display:none;"></iframe>
  </form>
  <script type="text/javascript">
  $(function(){
	$("#up_tips").click(function(){
		if (document.getElementById("upload_form").style.display == "none") { //展开
			$("#upload_form").show();
			$("#up_tips").html("取消上传");
		}
		else { //隐藏
			$("#upload_form").hide();
			$("#up_tips").html("上传照片");
		}
	});

	//提交上传
	$("#btn_upload").click(function(){
		var file = $("#fileurl");
		var file_val = $("#fileurl").val();
		var img_size = 0;
		var max_size = <!--{$config.uploadmaxsize}-->*1024*1024;
		if (file_val == "") {
			ToastShow("请选择要上传的照片");
			return false;
		}
		if(!/.(gif|jpg|jpeg|png)$/.test(file_val)){ 
			ToastShow("照片格式不正确");
			return false;
		}
		img_size = file[0].files[0].size;
		if (img_size > max_size) {
			ToastShow("照片大小不能超过<!--{$config.uploadmaxsize}-->M");
			return false;
		}
		$("#btn_upload").html("上传中，请稍等...");
		$("#upload_form").submit();
	});
  });
  //iframe callback parent.uploadCallBack();
  function uploadCallBack(res, msg) {
	if (res == "1") {
		ToastShow("上传成功");
		setTimeout(function(){
			$("#upload_form").remove();
			window.location.reload();
		}, 1000);
		
	}
	else {
		$("#btn_upload").html("上传");
		if (msg.length >0) {
			ToastShow(msg);
		}
		else {
			ToastShow("上传失败，请检查网络情况。");
		}
	}
  }
  </script>


  <div class="cp-album-list">
    <!--{if empty($album)}-->
    <h6>没有符合条件的信息</h6>
	<!--{else}-->
	<ul id="json_data">
	  <!--{foreach $album as $volist}-->
	  <li id="id_<!--{$volist.photoid}-->">
	    <div class="album-inner">
		  <h2><img src="<!--{$volist.thumbfiles}-->" /></h2>
		  <p>
			<!--{if $volist.flag == '2'}-->
			未通过
			<!--{elseif $volist.flag == '1'}-->
			已通过
			<!--{else}-->
			待审核
			<!--{/if}-->
		  </p>
		  <p><span onclick="delAlbum('<!--{$volist.photoid}-->');">删除</span></p>
		</div>
	  </li>
	  <!--{/foreach}-->
	</ul>
	<div class="clear"></div>
	<!--{/if}-->
  </div>
  <!--//List End-->

  <!--{if $pagecount > 1}-->
  <div class="page-layout">
    页次：<!--{$page}-->/<!--{$pagecount}-->
	<!--{if $prepage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_photo&<!--{$urlitem}-->&page=<!--{$prepage}-->');">上一页</span>  
	<!--{/if}-->
	<!--{if $nextpage>0}-->
	<span onclick="goUrl('<!--{$wapfile}-->?c=cp_photo&<!--{$urlitem}-->&page=<!--{$nextpage}-->');">下一页</span>  
	<!--{/if}-->
  </div>
  <!--//ShowPage End-->
  <!--{/if}-->

</div>
</body>
</html>
<script type="text/javascript">
//删除
function delAlbum(id) {
	if (id > 0) {
		$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=cp_photo",
			cache: false,
			data: {a:'del', id:id, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					ToastShow("删除成功");
					$("#id_"+id).remove();
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("删除失败，请检查网络...");
					}
				}
			},
			error: function() {
				ToastShow("删除失败，请检查网络...");
			}
		});
	}
}
</script>