<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">基本资料</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="savebase" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li>
	    <div class="profile-item">交友类型：</div>
		<div class="profile-value" id="lovesort_text">
		<!--{hook mod='lovesort' type='select' name='lovesort' text='=请选择=' value=$login.info.lovesort}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">婚姻状况：</div>
		<div class="profile-value">
		<!--{hook mod='var' type='select' item='marrystatus' name="marrystatus" text='=请选择=' value=$login.info.marrystatus}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">月薪收入：</div>
		<div class="profile-value" id="salary_text">
		<!--{hook mod='var' type='select' item='salary' name="salary" text='=请选择=' value=$login.info.salary}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">民&#12288;&#12288;族：</div>
		<div class="profile-value" id="national_text">
		<!--{hook mod='var' type='select' item='national' name="national" text='=请选择=' value=$login.info.national}-->
		</div>
		<div class="clear"></div>
	  </li>


	  <li>
	    <div class="profile-item">个&#12288;&#12288;性：</div>
		<div class="profile-value" id="personality_text">
		<!--{hook mod='var' type='select' item='personality' name="personality" text='=请选择=' value=$login.info.personality}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">职&#12288;&#12288;业：</div>
		<div class="profile-value" id="jobs_text">
		<!--{hook mod='var' type='select' item='jobs' name="jobs" text='=请选择=' value=$login.info.jobs}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">住房情况：</div>
		<div class="profile-value" id="housing_text">
		<!--{hook mod='var' type='select' item='housing' name="housing" text='=请选择=' value=$login.info.housing}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">购车情况：</div>
		<div class="profile-value" id="caring_text">
		<!--{hook mod='var' type='select' item='caring' name="caring" text='=请选择=' value=$login.info.caring}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">小孩情况：</div>
		<div class="profile-value" id="childrenstatus_text">
		<!--{hook mod='var' type='select' item='childrenstatus' name="childrenstatus" text='=请选择=' value=$login.info.childrenstatus}-->
		</div>
		<div class="clear"></div>
	  </li>
	</ul>
	<div class="clear"></div>
  </div>
  <!--//profile-layout End-->
  
  <div class="spanbtn0" id="btn_post">保存修改</div>
</div>
</form>
<!--//cp-layout-body End-->


</body>
</html>
<script type="text/javascript">
$("#btn_post").click(function(){
	if ($("#marrystatus").val() == "") {
		ToastShow("请选择婚姻状况");
		return false;
	}

	if ($("#jobs").val() == "") {
		ToastShow("请选择职业");
		return false;
	}

	$("#myform").submit();
});
</script>