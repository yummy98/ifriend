<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<script type="text/javascript" src="<!--{$urlpath}-->tpl/static/js/ajaxfileupload.js"></script>
<!--{assign var="cp_menuid" value="avatar"}-->
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 我的头像</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->
  <div class="main_right">

    <div class="oe_tab_nv">
	  <ul>
	    <li class="tab_item"><a href="<!--{$ucfile}-->?c=album">我的相册</a></li>
		<li class="tab_item"><a href="<!--{$ucfile}-->?c=album&a=upload">上传相册</a></li>
		<li class="tab_item current"><a href="<!--{$ucfile}-->?c=avatar">设置形象照</a></li>
	  </ul>
	</div>
	<!--//oe_tab_nv End-->
    

    <div class="oe_content_layout">
		
		<div class="oe_ucavatar_layout">
		  
		  <div class="oe_ucavatar_lt">
			<h2>我的头像照</h2>
			<dl>
			  <dt>
			    <!--{if !empty($u.avatar)}-->
				<img src="<!--{$urlpath}--><!--{$u.avatar}-->" />
				<!--{else}--> 
				<img src="<!--{$u.avatarurl}-->" />
				<!--{/if}-->
				<!--{if $u.avatar != ''}--> 
                <!--{if $u.avatarflag == '1'}--> 
                <font color="green">审核通过</font> 
                <!--{elseif $u.avatarflag == '-2'}--> 
                <font color="gray">头像审核中</font> 
                <!--{elseif $u.avatarflag == '-1'}--> 
                <font color="red">未通过审核</font> 
                <!--{/if}--> 
                <!--{else}--> 
                还没设置头像照
                <!--{/if}-->
			  </dt>
			  <dd>
			    <h3>
				  <i>上传头像</i>&nbsp;
				  <span id="img_tips" style="display:none;"><img src="<!--{$ucpath}-->images/loading.gif" />上传中...</span>
				  <input type="file" name="img" id="img" />
				</h3>
				<p>有照片会员，收到的<span>信件</span>比没照片的会员多<span>11</span>倍；</p>
				<p>全方位展示自己，更快找对象，成功率是无照片用户的6倍；</p>
				<p>您还可以从“<a href="<!--{$ucfile}-->?c=album">我的相册</a>”选取照片。</p>
			  </dd>
			  <div class="clear"></div>
			</dl>
			<div class="clear"></div>

			<div class="oe_ucavatar_rqs">
			   <b>温馨提示：</b><br />
			   点击“上传头像”，选择您想要上传作为头像的照片；<br />
			   仅支持PNG，JPG，JPEG，GIF格式，<!--{$config.uploadmaxsize}-->M以下图片；<br />
			   上传您的单人真实照片，要求五官清晰。请勿上传明星、名人或他人照片，您将对此负法律责任；<br />
			   如果您的照片被会员投诉为假照片，经查实会将您列入网站黑名单，以后都将无法注册和登录。
			</div>
		  </div>

		  <div class="oe_ucavatar_rt">
			<div class="oe_ucavatar_trap">
			  <h3>设置头像照增加曝光率</h3>
			  <p>
			    为什么要上传头像？<br />
			    据统计，有照片的会员征友成功率是无照片会员的6倍！清晰生动的照片能为您吸引更多的目光，让更多的异性关注您。<br />
				上传照片是征友诚意的体现，90%的会员在搜索时会选择有头像照的会员进行联系。
			  </p>
			</div>
		  </div>
		  <!--//oe_ucavatar_rt End-->
		  <div class="clear"></div>
		</div>

	</div>
	<!--//oe_content_layout End-->



  </div>
  <div class="clear"> </div>
  <!--//main_right End-->
</div>
<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}-->

<script type="text/javascript">
$(function(){
	$("#img").live("change", function(){
		if (checkUpImg("img") == true) {
			oeStUploadImgAjax("img");
		}
	});
});

//上传图片 AJAX提交 支持IE
function oeStUploadImgAjax(file) {
	$("#"+file+"_tips").show();
	$url = _ROOT_PATH + "usercp.php",
	$.ajaxFileUpload({
		"url": $url,
		"secureuri": false,
		"fileElementId": file,
		"dataType": "json",
		"data": {
			c:"avatar",
			a:"uploadimg",
			uploadpart: file
		},
		async: this.async,
		beforeSend: function ($xmlobj) {},
		complete: function ($data) {},
		success: function ($data) {
			$json = eval($data);
			$response = $json.response;
			$result = $json.result;
			if ($response == "1") {
				if ($result.length > 0) {
					window.location.href = "<!--{$ucfile}-->?c=avatar&a=setavatar&url="+encodeURIComponent($result);
				}
				else {
					$("#"+file+"_tips").hide();
					ToastShow("上传失败，请检查图片。");
				}
			}
			else {
				$("#"+file+"_tips").hide();
				if ($result.length > 0 ) {
					ToastShow($result);
				}
				else {
					ToastShow("上传失败，请检查图片。");
				}
			}

		},
		error: function ($data, e, b) {
			$("#"+file+"_tips").hide();
			ToastShow("上传失败，请检查网络...");
		}
	});
}

//检查图片格式
function checkUpImg(file) {
	$res = true;
	var oe_file_obj = $("#"+file);
	var oe_file_val = oe_file_obj.val();
	var oe_file_size = 0;
	//var oe_sys_max_size = <!--{$config.uploadmaxsize}-->*1024*1024;
	if (oe_file_val.length == 0) {
		ToastShow("请选择要上传的头像");
		$res = false;
	}
	if(!/.(gif|GIF|jpg|JPG|jpeg|JPEG|png|PNG)$/.test(oe_file_val)){ 
		ToastShow("图片格式不正确");
		$res = false;
	}
	return $res;
}
</script>
</body>
</html>
