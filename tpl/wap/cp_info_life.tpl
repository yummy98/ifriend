<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">生活资料</div>
<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="savelife" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li>
	    <div class="profile-item">家中排行：</div>
		<div class="profile-value" id="tophome_text">
		<!--{hook mod="var" item="tophome" name="tophome" type="select" text="=请选择=" value=$login.info.tophome}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">吸烟情况：</div>
		<div class="profile-value" id="smoking_text">
		<!--{hook mod="var" item="smoking" name="smoking" type="select" text="=请选择=" value=$login.info.smoking}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li onclick="varRadioPopup('喝酒情况', 'drinking');">
	    <div class="profile-item">喝酒情况：</div>
		<div class="profile-value" id="drinking_text">
		<!--{hook mod="var" item="drinking" name="drinking" type="select" text="=请选择=" value=$login.info.drinking}-->
		</div>
		<div class="clear"></div>
	  </li>


	  <li>
	    <div class="profile-item">宗教信仰：</div>
		<div class="profile-value" id="faith_text">
		<!--{hook mod="var" item="faith" name="faith" type="select" text="=请选择=" value=$login.info.faith}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">锻炼习惯：</div>
		<div class="profile-value" id="workout_text">
		<!--{hook mod="var" item="workout" name="workout" type="select" text="=请选择=" value=$login.info.workout}-->
		</div>
		<div class="clear"></div>	
	  </li>

	  <li>
	    <div class="profile-item">作息习惯：</div>
		<div class="profile-value" id="rest_text">
		<!--{hook mod="var" item="rest" name="rest" type="select" text="=请选择=" value=$login.info.rest}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">生活技能：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="lifeskill" id="lifeskill" value="" />
	  </li>
	  <li class="profile-var-multi" id="lifeskill_text">
	    <!--{assign var="lifelist" value=vo_list("mod={volistvar} where={lifeskill}")}-->
		<!--{foreach $lifelist as $val}-->
		<input type="checkbox" name="lifeskill_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.lifeskill}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
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

$("#btn_post").click(function(){
	$("#lifeskill").val(_buildVarIDs("lifeskill_id"));
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