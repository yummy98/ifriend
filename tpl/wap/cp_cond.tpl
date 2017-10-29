<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">征友条件</div>

<form name="myform" id="myform" method="post" action="<!--{$wapfile}-->?c=cp_cond">
<input type="hidden" name="a" id="a" value="savecond" />
<div class="cp-layout-body">
  <div class="profile-layout">
    <ul>
	  
	  <li onclick="areaPopup('地区', 'wbdist');">
	    <div class="profile-item">地区：</div>
		<div class="profile-value" id="wbdist_text">
		<!--{if $cond.wbdist1 == '0'}-->
		不限
		<!--{else}-->
		<!--{area type="text" value=$cond.wbdist1}--> 
		<!--{area type="text" value=$cond.wbdist2}--> 
		<!--{/if}-->
		</div>
		<div class="clear"></div>
		<input type="hidden" name="wbdist1" id="wbdist1" value="<!--{$cond.wbdist1}-->" />
		<input type="hidden" name="wbdist2" id="wbdist2" value="<!--{$cond.wbdist2}-->" />
		<input type="hidden" name="wbdist3" id="wbdist3" value="" />
	  </li>

	  <li>
	    <div class="profile-item">性别：</div>
		<div class="profile-value">
		<select name="gender" id="gender">
		  <option value="">不限</option>
		  <option value="2"<!--{if $cond.gender == '2'}--> selected<!--{/if}-->>女会员</option>
		  <option value="1"<!--{if $cond.gender == '1'}--> selected<!--{/if}-->>男会员</option>
		</select>
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">头像：</div>
		<div class="profile-value">
		<select name="avatar" id="avatar">
		  <option value="">不限</option>
		  <option value="1"<!--{if $cond.avatar == '1'}--> selected<!--{/if}-->>有头像</option>
		</select>
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">年龄：</div>
		<div class="profile-value">
	     <!--{hook mod='age' name='startage' text='=不限=' value=$cond.startage}-->&nbsp;~&nbsp;<!--{hook mod='age' name='endage' text='=不限=' value=$cond.endage}--> 岁
		</div>
		<div class="clear"></div>
	  </li>


	  <li>
	    <div class="profile-item">身高：</div>
		<div class="profile-value">
		<!--{hook mod='height' name='startheight' text='=不限=' value=$cond.startheight}--><span>&nbsp;~&nbsp;</span><!--{hook mod='height' name='endheight' text='=不限=' value=$cond.endheight}--> CM
		</div>
		<div class="clear"></div>
	  </li>

	  <li>
	    <div class="profile-item">学历：</div>
		<div class="profile-value">
		<!--{hook mod='var' item='education' type='select' name='startedu' text='=不限=' value=$cond.startedu}--><span>&nbsp;~&nbsp;</span><!--{hook mod='var' item='education' type='select' name='endedu' text='=不限=' value=$cond.endedu}-->
		</div>
		<div class="clear"></div>
	  </li>


	  <li>
	    <div class="profile-item">星级：</div>
		<div class="profile-value">
		<select name="star" id="star">
		  <option value="">不限</option>
		  <option value="1"<!--{if $cond.star == '1'}--> selected<!--{/if}-->>1星</option>
		  <option value="2"<!--{if $cond.star == '2'}--> selected<!--{/if}-->>2星</option>
		  <option value="3"<!--{if $cond.star == '3'}--> selected<!--{/if}-->>3星</option>
		  <option value="4"<!--{if $cond.star == '4'}--> selected<!--{/if}-->>4星</option>
		  <option value="5"<!--{if $cond.star == '5'}--> selected<!--{/if}-->>5星</option>
		  <option value="6"<!--{if $cond.star == '6'}--> selected<!--{/if}-->>6星</option>
		  <option value="7"<!--{if $cond.star == '7'}--> selected<!--{/if}-->>7星</option>
		  <option value="8"<!--{if $cond.star == '8'}--> selected<!--{/if}-->>8星</option>
		  <option value="9"<!--{if $cond.star == '9'}--> selected<!--{/if}-->>9星</option>
		  <option value="10"<!--{if $cond.star == '10'}--> selected<!--{/if}-->>10星</option>
		</select>

		<select name="starup" id="starup">
		  <option value=""></option>
		  <option value="1"<!--{if $cond.starup == '1'}--> selected<!--{/if}-->>以上</option>
		  <option value="2"<!--{if $cond.starup == '2'}--> selected<!--{/if}-->>以下</option>
		</select>
		</div>
		<div class="clear"></div>
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">婚姻状况：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="marry" id="marry" value="<!--{$cond.marry}-->" />
	  </li>
	  <li class="profile-var-multi">
	    <!--{assign var="marrylist" value=vo_list("mod={volistvar} where={marrystatus}")}-->
		<!--{foreach $marrylist as $val}-->
		<input type="checkbox" name="marry_id" value="<!--{$val.value}-->"<!--{checkbox value="<!--{$cond.marry}-->" tofound="<!--{$val.value}-->"}--> /><!--{$val.text}--> &nbsp;
		<!--{/foreach}-->
	  </li>

	  <li style="border-bottom:0px;">
	    <div class="profile-item">交友类型：</div>
		<div class="profile-value"></div>
		<div class="clear"></div>
		<input type="hidden" name="lovesort" id="lovesort" value="<!--{$cond.lovesort}-->" />
	  </li>
	  <li class="profile-var-multi">
	    <!--{assign var="lovesortlist" value=vo_list("mod={volistlovesort}")}-->
		<!--{foreach $lovesortlist as $val}-->
		<input type="checkbox" name="lovesort_id" value="<!--{$val.sortid}-->"<!--{checkbox value="<!--{$cond.lovesort}-->" tofound="<!--{$val.sortid}-->"}--> /><!--{$val.sortname}--> &nbsp;
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

<div id="varpop_shade" class="varpop-shade"></div>
<div class="varpop-layout" id='area_box'>
  <div class="varpop-head">
    <span id="area_title">选择</span>
	<i id="area_loading">loading...</i>
  </div>
  <div id="area_data"></div>
  <!--//area_data End-->
</div>
<!--//area_box ajax End-->


</body>
</html>
<script type="text/javascript">
$("#btn_post").click(function(){
	
	$("#marry").val(_buildVarIDs('marry_id'));
	$("#lovesort").val(_buildVarIDs('lovesort_id'));

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