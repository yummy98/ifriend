<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">兴趣爱好</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_info">
<input type="hidden" name="a" id="a" value="saveinterest" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li style="border-bottom:0px;">
	    <div class="profile-item">喜欢的运动：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="sports" id="sports" value="<!--{$login.info.sports}-->" />
	  </li>
	  <li class="profile-var-multi" id="sports_text">
	    <!--{assign var="sportslist" value=vo_list("mod={volistvar} where={sports}")}-->
		<!--{foreach $sportslist as $val}-->
		<input type="checkbox" name="sports_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.sports}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->	  
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">喜欢的食物：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="food" id="food" value="<!--{$login.info.food}-->" />
	  </li>
	  <li class="profile-var-multi" id="food_text">
	    <!--{assign var="foodlist" value=vo_list("mod={volistvar} where={food}")}-->
		<!--{foreach $foodlist as $val}-->
		<input type="checkbox" name="food_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.food}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->		  
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">喜欢的书籍：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="book" id="book" value="<!--{$login.info.book}-->" />
	  </li>
	  <li class="profile-var-multi" id="book_text">
	    <!--{assign var="booklist" value=vo_list("mod={volistvar} where={book}")}-->
		<!--{foreach $booklist as $val}-->
		<input type="checkbox" name="book_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.book}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->	
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">喜欢的电影：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="film" id="film" value="<!--{$login.info.film}-->" />
	  </li>
	  <li class="profile-var-multi" id="film_text">
	    <!--{assign var="filmlist" value=vo_list("mod={volistvar} where={film}")}-->
		<!--{foreach $filmlist as $val}-->
		<input type="checkbox" name="film_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.film}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->	
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">业余爱好：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="interest" id="interest" value="<!--{$login.info.interest}-->" />
	  </li>
	  <li class="profile-var-multi" id="interest_text">
	    <!--{assign var="interestlist" value=vo_list("mod={volistvar} where={interest}")}-->
		<!--{foreach $interestlist as $val}-->
		<input type="checkbox" name="interest_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.interest}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">喜欢的旅游：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="travel" id="travel" value="<!--{$login.info.travel}-->" />
	  </li>
	  <li class="profile-var-multi" id="travel_text">
	    <!--{assign var="travellist" value=vo_list("mod={volistvar} where={travel}")}-->
		<!--{foreach $travellist as $val}-->
		<input type="checkbox" name="travel_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.travel}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">关注的节目：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="attention" id="attention" value="<!--{$login.info.attention}-->" />
	  </li>
	  <li class="profile-var-multi" id="attention_text">
	    <!--{assign var="attentionlist" value=vo_list("mod={volistvar} where={attention}")}-->
		<!--{foreach $attentionlist as $val}-->
		<input type="checkbox" name="attention_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.attention}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
		<!--{/foreach}-->
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">娱乐休闲：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="leisure" id="leisure" value="<!--{$login.info.leisure}-->" />
	  </li>
	  <li class="profile-var-multi" id="leisure_text">
	    <!--{assign var="leisurelist" value=vo_list("mod={volistvar} where={leisure}")}-->
		<!--{foreach $leisurelist as $val}-->
		<input type="checkbox" name="leisure_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$login.info.leisure}-->" tofound="<!--{$val.value}-->"}--> /> <!--{$val.text}--><br />
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
	$("#sports").val(_buildVarIDs("sports_id"));
	$("#food").val(_buildVarIDs("food_id"));
	$("#book").val(_buildVarIDs("book_id"));
	$("#film").val(_buildVarIDs("film_id"));
	$("#interest").val(_buildVarIDs("interest_id"));
	$("#travel").val(_buildVarIDs("travel_id"));
	$("#attention").val(_buildVarIDs("attention_id"));
	$("#leisure").val(_buildVarIDs("leisure_id"));
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