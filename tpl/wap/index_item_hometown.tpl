<div class="varpop-label">
  <ul>
	<li>
	  <i>一级地区：</i>
	  <span>
	  <!--{assign var="volistdist1" value=vo_list("mod={volisthome1}")}-->
	  <select name="town_dist1" id="town_dist1">
		<option value="0">选择</option>
		<!--{foreach $volistdist1 as $val}-->
		<option value="<!--{$val.areaid}-->"<!--{if $dist1==$val.areaid}--> selected<!--{/if}-->><!--{$val.areaname}--></option>
		<!--{/foreach}-->
	  </select>
	  </span>
	  <div class="clear"></div>
	</li>

	<li>
	  <i>二级地区：</i>
	  <span>
	  <select name="town_dist2" id="town_dist2">
		<option value="0">选择</option>
		<!--{if $dist1>0}-->
		<!--{assign var="volistdist2" value=vo_list("mod={volisthome2} catid={<!--{$dist1}-->}")}-->
		<!--{foreach $volistdist2 as $val}-->
		<option value="<!--{$val.areaid}-->"<!--{if $dist2==$val.areaid}--> selected<!--{/if}-->><!--{$val.areaname}--></option>
		<!--{/foreach}-->
		<!--{/if}-->
	  </select>
	  </span>
	  <div class="clear"></div>
	</li>
  </ul>
  <div class="clear"></div>
</div>
<!--//varpop-label End-->

<div class="varpop-button">
  <div class="btn-comfirm" id="town-btn-comfirm">确定</div>
  <div class="btn-cancel" id="town-btn-cancel">取消</div>
  <div class="clear"></div>
</div>
<!--//varpop-button End-->
<script type="text/javascript">
$(function(){
	//一级地区切换
	var town1_value = 0;
	var town1_text = '';
	$("#town_dist1").bind("change", function(){
		town1_value = $("#town_dist1").find("option:selected").val();
		town1_text = $("#town_dist1").find("option:selected").text();
		if (town1_value == 0) {
			//清空2级地区
			$("#town_dist2").empty();
		}
		else {
			//获取二级地区
			$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=index&a=gethometown",
			cache: false,
			data: {rootid:town1_value, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				//清空2级地区
				$("#town_dist2").empty();
				var option_town2 = "<option value='0'>选择</option>";
				$.each(data,function(entryIndex,entry){
					option_town2 += "<option value='"+entry.areaid+"'>"+entry.areaname+"</option>";
				});
				$("#town_dist2").append(option_town2);
			},
			error: function() {
				ToastShow("数据获取失败，请检查网络...");
			}
			});
		}
	});

	//确定回调数据
	$("#town-btn-comfirm").click(function(){
		//一级地区
		var return_town1_value = $("#town_dist1").find("option:selected").val();
		var retrun_town1_text = $("#town_dist1").find("option:selected").text();
		//二级地区
		var return_town2_value = $("#town_dist2").find("option:selected").val();
		var retrun_town2_text = $("#town_dist2").find("option:selected").text();
		//选择查询、等操作
		$("#<!--{$item}-->1").val(return_town1_value);
		$("#<!--{$item}-->2").val(return_town2_value);
		$("#<!--{$item}-->_text").text(retrun_town1_text+" "+retrun_town2_text);
		hometownPopClose(); //关闭
	});

	//关闭取消
	$("#town-btn-cancel").click(function(){
		hometownPopClose();
	});
});
</script>