<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">爱情规划</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="saveguihua" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li>
	    <div class="profile-item">最大消费：</div>
		<div class="profile-value" id="consume_text">
		<!--{hook mod="var" item="consume" name="consume" type="select" text="=请选择=" value=$login.info.consume}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">制造浪漫：</div>
		<div class="profile-value" id="romantic_text">
		<!--{hook mod="var" item="romantic" name="romantic" type="select" text="=请选择=" value=$login.info.romantic}-->
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">是否要孩子：</div>
		<div class="profile-value" id="havechildren_text">
		<!--{hook mod="var" item="havechildren" name="havechildren" type="select" text="=请选择=" value=$login.info.havechildren}-->
		</div>
		<div class="clear"></div>
	  </li>


	  <li>
	    <div class="profile-item">与对方父母同住：</div>
		<div class="profile-value" id="talive_text">
		<!--{hook mod="var" item="talive" name="talive" type="select" text="=请选择=" value=$login.info.talive}-->
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
$("#btn_post").click(function(){ //提交
	$("#myform").submit();
});
</script>