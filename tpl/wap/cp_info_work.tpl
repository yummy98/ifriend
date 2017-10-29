<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">学习工作</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="savework" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li>
	    <div class="profile-item">公司类型：</div>
		<div class="profile-value" id="companytype_text">
		<!--{hook mod="var" item="companytype" name="companytype" type="select" text="=请选择=" value=$login.info.companytype}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">收入描述：</div>
		<div class="profile-value" id="income_text">
		<!--{hook mod="var" item="income" name="income" type="select" text="=请选择=" value=$login.info.income}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">工作状况：</div>
		<div class="profile-value" id="workstatus_text">
		<!--{hook mod="var" item="workstatus" name="workstatus" type="select" text="=请选择=" value=$login.info.workstatus}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">学&#12288;&#12288;历：</div>
		<div class="profile-value" id="education_text">
		<!--{hook mod="var" item="education" name="education" type="select" text="=请选择=" value=$login.info.education}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">专业类型：</div>
		<div class="profile-value" id="specialty_text">
		<!--{hook mod="var" item="specialty" name="specialty" type="select" text="=请选择=" value=$login.info.specialty}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">语言能力：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="language" id="language" value="<!--{$login.info.language}-->" />
	  </li>
	  <li class="profile-var-multi" id="language_text">
	    <!--{assign var="languagelist" value=vo_list("mod={volistvar} where={language}")}-->
		<!--{foreach $languagelist as $val}-->
		<input type="checkbox" name="language_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.language}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->
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

$("#btn_post").click(function(){ //提交
	$("#language").val(_buildVarIDs("language_id"));
	if ($("#education").val() < 1) {
		ToastShow("请选择学历");
		return false;
	}
	$("#myform").submit();
});

//组合var多选
function _buildVarIDs(name) {
	var ids = "";
	$("input:checked[name="+name+"]").each(function(){
		if($(this)[0].checked){
			ids += $(this).val()+",";
		}
	});
	return ids;
}
</script>