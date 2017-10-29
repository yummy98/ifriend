<div class="varpop-label">
  <ul>
	<li>
	  <i>一级地区：</i>
	  <span>
	  <!--{assign var="volistdist1" value=vo_list("mod={volistdist1}")}-->
	  <select name="item_dist1" id="item_dist1">
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
	  <select name="item_dist2" id="item_dist2">
		<option value="0">选择</option>
		<!--{if $dist1>0}-->
		<!--{assign var="volistdist2" value=vo_list("mod={volistdist2} catid={<!--{$dist1}-->}")}-->
		<!--{foreach $volistdist2 as $val}-->
		<option value="<!--{$val.areaid}-->"<!--{if $dist2==$val.areaid}--> selected<!--{/if}-->><!--{$val.areaname}--></option>
		<!--{/foreach}-->
		<!--{/if}-->
	  </select>
	  </span>
	  <div class="clear"></div>
	</li>
	<li>
	  <i>三级地区：</i>
	  <span>
	  <select name="item_dist3" id="item_dist3">
		<option value="0">选择</option>
		<!--{if $dist2>0}-->
		<!--{assign var="volistdist3" value=vo_list("mod={volistdist2} catid={<!--{$dist2}-->}")}-->
		<!--{foreach $volistdist3 as $val}-->
		<option value="<!--{$val.areaid}-->"<!--{if $dist3==$val.areaid}--> selected<!--{/if}-->><!--{$val.areaname}--></option>
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
  <div class="btn-comfirm" id="area-btn-comfirm">确定</div>
  <div class="btn-cancel" id="area-btn-cancel">取消</div>
  <div class="clear"></div>
</div>
<!--//varpop-button End-->
<script type="text/javascript">
$(function(){
	//一级地区切换
	var dist1_value = 0;
	var dist1_text = '';
	$("#item_dist1").bind("change", function(){
		dist1_value = $("#item_dist1").find("option:selected").val();
		dist1_text = $("#item_dist1").find("option:selected").text();
		if (dist1_value == 0) {
			//清空2，3级地区
			$("#item_dist2").empty();
			$("#item_dist3").empty();
		}
		else {
			//获取二级地区
			$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=index&a=getarea",
			cache: false,
			data: {rootid:dist1_value, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				//清空2，3级地区
				$("#item_dist2").empty();
				$("#item_dist3").empty();
				var option_dist2 = "<option value='0'>选择</option>";
				$.each(data,function(entryIndex,entry){
					option_dist2 += "<option value='"+entry.areaid+"'>"+entry.areaname+"</option>";
				});
				$("#item_dist2").append(option_dist2);
			},
			error: function() {
				ToastShow("数据获取失败，请检查网络...");
			}
			});
		}
	});

	//二级级地区切换
	var dist2_value = 0;
	var dist2_text = '';
	$("#item_dist2").bind("change", function(){
		dist2_value = $("#item_dist2").find("option:selected").val();
		dist2_text = $("#item_dist2").find("option:selected").text();
		if (dist2_value == 0) { 
			$("#item_dist3").empty();//清空3级地区
		}
		else {
			//获取二级地区
			$.ajax({
			type: "POST",
			url: WAP_APPFILE+"?c=index&a=getarea",
			cache: false,
			data: {rootid:dist2_value, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				//清空三级地区
				$("#item_dist3").empty();
				var option_dist3 = "<option value='0'>选择</option>";
				$.each(data,function(entryIndex,entry){
					option_dist3 += "<option value='"+entry.areaid+"'>"+entry.areaname+"</option>";
				});
				$("#item_dist3").append(option_dist3);
			},
			error: function() {
				ToastShow("数据获取失败，请检查网络...");
			}
			});
		}
	});

	//确定回调数据
	$("#area-btn-comfirm").click(function(){
		var return_dist_text = "";
		//一级地区
		var return_dist1_value = $("#item_dist1").find("option:selected").val();
		var retrun_dist1_text = $("#item_dist1").find("option:selected").text();
		
		//二级地区
		var return_dist2_value = $("#item_dist2").find("option:selected").val();
		var retrun_dist2_text = $("#item_dist2").find("option:selected").text();
		
		//三级地区
		var return_dist3_value = $("#item_dist3").find("option:selected").val();
		var retrun_dist3_text = $("#item_dist3").find("option:selected").text();
		if (return_dist1_value == "") {
			return_dist1_value = 0;
		}
		if (return_dist2_value == "") {
			return_dist2_value = 0;
		}
		if (return_dist3_value == "") {
			return_dist3_value = 0;
		}
		
		if (return_dist1_value >0 ) {
			return_dist_text += retrun_dist1_text+" ";
		}
		if (return_dist2_value >0 ) {
			return_dist_text += retrun_dist2_text+" ";
		}
		if (return_dist3_value >0 ) {
			return_dist_text += retrun_dist3_text;
		}
		//选择查询、等操作
		$("#<!--{$item}-->1").val(return_dist1_value);
		$("#<!--{$item}-->2").val(return_dist2_value);
		$("#<!--{$item}-->3").val(return_dist3_value);
		
		$("#<!--{$item}-->_text").html(return_dist_text);
		areaPopClose(); //关闭
	});

	//关闭取消
	$("#area-btn-cancel").click(function(){
		areaPopClose();
	});
});
</script>