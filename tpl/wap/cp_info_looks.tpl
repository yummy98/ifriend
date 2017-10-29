<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">外貌资料</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="savelooks" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li>
	    <div class="profile-item">身&#12288;&#12288;高：</div>
		<div class="profile-value" id="height_text">
		<!--{hook mod="height" name="height" text="=请选择=" value=$login.info.height}--> CM
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">体&#12288;&#12288;重：</div>
		<div class="profile-value" id="weight_text">
		<!--{hook mod="weight" name="weight" text="=请选择=" value=$login.info.weight}--> KG
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">外貌自评：</div>
		<div class="profile-value" id="profile_text">
		<!--{hook mod="var" item="profile" name="profile" type="select" text="=请选择=" value=$login.info.profile}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">魅力部位：</div>
		<div class="profile-value" id="charmparts_text">
		<!--{hook mod="var" item="charmparts" name="charmparts" type="select" text="=请选择=" value=$login.info.charmparts}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">发&#12288;&#12288;型：</div>
		<div class="profile-value" id="hairstyle_text">
		<!--{hook mod="var" item="hairstyle" name="hairstyle" type="select" text="=请选择=" value=$login.info.hairstyle}-->
		</div>
		<div class="clear"></div>
	  </li>


	  <li>
	    <div class="profile-item">发&#12288;&#12288;色：</div>
		<div class="profile-value" id="haircolor_text">
		<!--{hook mod="var" item="haircolor" name="haircolor" type="select" text="=请选择=" value=$login.info.haircolor}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">脸&#12288;&#12288;型：</div>
		<div class="profile-value" id="facestyle_text">
		<!--{hook mod="var" item="facestyle" name="facestyle" type="select" text="=请选择=" value=$login.info.facestyle}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">体&#12288;&#12288;型：</div>
		<div class="profile-value" id="bodystyle_text">
		<!--{hook mod="var" item="bodystyle" name="bodystyle" type="select" text="=请选择=" value=$login.info.bodystyle}-->
		</div>
		<div class="clear"></div>
	  </li>
	  
	</ul>
	<div class="clear"></div>
  </div>
  <!--//profile-layout End-->
  
  <div class="spanbtn0" id="btn_post">保存修改</div>
  <div class="hr-b"></div>
</div>
</form>
<!--//cp-layout-body End-->
</body>
</html>
<script type="text/javascript">
$("#btn_post").click(function(){
	if ($("#height").val() < 1) {
		ToastShow("请选择身高");
		return false;
	}

	$("#myform").submit();
});
</script>