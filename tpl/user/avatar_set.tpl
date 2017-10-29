<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="avatar"}-->
<div class="user_main">
  <script type="text/javascript" src="<!--{$urlpath}-->tpl/static/js/cropper/cropper.min.js"></script> 
  <script type="text/javascript" src="<!--{$urlpath}-->tpl/static/js/cropper/drag.min.js"></script> 
  <script type="text/javascript" src="<!--{$urlpath}-->tpl/static/js/cropper/resize.min.js"></script>
  <link rel="stylesheet" href="<!--{$urlpath}-->tpl/static/js/cropper/default.css" />
  <style>
  #dragDiv {
    width:<!--{$config.avatarwidth}-->px; height:<!--{$config.avatarheight}-->px; 
  }
  </style>
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
	    
		  <div class="oe_ucavatar_cut">
		    <h2>我的头像照 <span>照片不好？<a href="<!--{$ucfile}-->?c=avatar">返回重新上传</a></span></h2>
		    <dl>
			  <dt>
			    <h3>你现在要做的是在下方剪切头像照</h3>
			    <div id="bgDiv">
                    <div id="dragDiv">
                      <div id="rRightDown"> </div>
                      <div id="rLeftDown"> </div>
                      <div id="rRightUp"> </div>
                      <div id="rLeftUp"> </div>
                      <div id="rRight"> </div>
                      <div id="rLeft"> </div>
                      <div id="rUp"> </div>
                      <div id="rDown"> </div>
                    </div>
				</div>
				<!--//bgDiv End-->

			    <div class="oe_ucavatar_cutlayer">
			      <div class="culayer_content">
				    <p>你可以自由移动、缩放，剪切出更好的头像照。</p>
				  </div>
				  <div class="oe_close">×</div>
				  <div class="oe_arrow"></div>
			    </div>
				<!--//oe_ucavatar_cutlayer End-->

			  </dt>
			  <dd>
			    <h3>裁剪预览效果</h3>
			    <div id="viewDiv" style="width:<!--{$config.avatarwidth}-->px; height:<!--{$config.avatarheight}-->px;"></div>
				<h4>头像照大小为<!--{$config.avatarwidth}-->x<!--{$config.avatarheight}-->像素</font></h4>
			  </dd>
			  <div class="clear"></div>
			</dl>
			<div class="clear"></div>
		  </div>
		  <script type="text/javascript">
			$(function(){
				$(".oe_close").bind("click", function(){
					$(".oe_ucavatar_cutlayer").hide();
				});
			});
			var OE_IC_IMG = new ImgCropper("bgDiv", "dragDiv", "<!--{$imgurl}-->", {
				Width: 300, Height: 368, Color: "#ffffff",
				Resize: true,
				Scale: true,
				Opacity: 80,
				Right: "rRight", Left: "rLeft", Up:	"rUp", Down: "rDown",
				RightDown: "rRightDown", LeftDown: "rLeftDown", RightUp: "rRightUp", LeftUp: "rLeftUp",
				Preview: "viewDiv", viewWidth: <!--{$config.avatarwidth}-->, viewHeight: <!--{$config.avatarheight}-->
			});
		  </script>

		  <div class="oe_ucavatar_rt">
			<div class="oe_ucavatar_trap">
			  <h3>设置头像照增加曝光率！</h3>
			  <p>
			    为什么要上传头像？<br />
			    据统计，有照片的会员征友成功率是无照片会员的6倍！清晰生动的照片能为您吸引更多的目光，让更多的异性关注您。<br />
				上传照片是征友诚意的体现，90%的会员在搜索时会选择有头像照的会员进行联系。
			  </p>
			</div>
		  </div>
		  <!--//oe_ucavatar_rt End-->
		  <div class="clear"></div>

		  <div class="oe_ucavatar_cutbtn">
		    <i id="btn_cut">保存裁剪</i>
			<div class="cut_tips">
			  剪裁好了，你就可以点击"保存裁剪"，提交客服审核。
			  <div class="arrow"></div>
			</div>
		  </div>

		  <div class="oe_ucavatar_rqs">
		    <b>温馨提示：</b><br />
			请上传您的单人真实照片，要求五官清晰，请勿上传明星、名人或他人照片，您将对此负法律责任；<br />
			如果您的照片被会员投诉为假照片，经查实会将您列入网站黑名单，以后都将无法注册和登录。
		  </div>

	    </div>
	    <!--//oe_ucavatar_layout End-->
	</div>
	<!--//oe_content_layout End-->

  </div>
  <div class="clear"> </div>
  <!--//main_right End-->
</div>
<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}-->
<script type="text/javascript">
$(function(){
	$("#btn_cut").bind("click", function(){
		oeCutAvatar();
	});
});
function oeCutAvatar() {
	$p = OE_IC_IMG.Url;
	$o = OE_IC_IMG.GetPos();
	$x = $o.Left;
	$y = $o.Top;
	$w = $o.Width;
	$h = $o.Height;
	$pw = OE_IC_IMG._layBase.width;
	$ph = OE_IC_IMG._layBase.height;
	$("#btn_cut").html("保存中...");
	$.ajax({
		type: "POST",
		url: _ROOT_PATH + "usercp.php?c=avatar",
		cache: false,
		data: {a:"savecut", img: "<!--{$imgurl}-->", x: $x, y: $y, w: $w, h: $h, pw: $pw, ph: $ph, r: get_rndnum(8)},
		dataType: 'json',
		success: function($data) {
			$json = eval($data);
			$response = $json.response;
			$result = $json.result;
			if ($response == '1') {
				<!--{if $config.auditavatar == '1'}-->
				ToastShow("保存成功，请等待管理员审核。");
				<!--{else}-->
				ToastShow("保存成功");
				<!--{/if}-->
				setTimeout(function(){
					window.location.href = "<!--{$ucfile}-->?c=avatar";
				}, 1000);
			}
			else {
				$("#btn_cut").html("保存裁剪");
				if ($result.length > 0) {
					ToastShow($result);
				}
				else {
					ToastShow("保存失败，请检查网络。");
				}
			}
		},
		error: function() {
			$("#btn_cut").html("保存裁剪");
			ToastShow("保存失败，请检查网络...");
		}
	});

}
</script>
</body>
</html>
