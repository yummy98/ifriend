<script type='text/javascript'>
//新信息
function obj_loading_count(type, tipsid) {
	$.ajax({
		type: "POST",
		url: _ROOT_PATH + "usercp.php?c=popwin&a=count",
		cache: false,
		data: {type:type, r:get_rndnum(8)},
		dataType: "json",
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader("request_type","ajax");
		},
		success: function(data) {
			var json = eval(data);
			var num = json.num;
			if (num > 0) {
				var html = "";
				html = html+"<font style='color:#51545B;'>(";
				if (num > 99) {
					html = html+"99";
				}
				else {
					html = html+num;
				}
				html = html+")</font>";
				$("#"+tipsid).html(html);
			}
		},
		error: function() {}
	});
}
</script>
<style>
.popwin-box{
  position:fixed;
  bottom:0px; 
  right:0px;
  background:url("<!--{$ucpath}-->images/popwin/popwin_bg.jpg") repeat-x bottom;
  width:100%;
  z-index:999;
}
.popwin-main {
	width:330px; 
	border:1px solid #f0f0f0; 
	margin-bottom:1px;
	bottom: 29px;
	position: absolute;
	z-index: 9;
	background:#ffffff;

}
.popwin-titlebar{background:#F0EDEB; padding:8px;height:20px;}
.popwin-title{ color: #C70067;display: inline;float: left;font-family: Microsoft YaHei,SimHei;font-size: 14px;line-height: 20px;}
.popwin-min{float:right; width:13px; height:10px; border-top:3px solid #D83473; line-height:20px; cursor:pointer;margin-top:5px;}

.popwin-menu{
	width:330px;height:30px;
	background:url("<!--{$ucpath}-->images/popwin/popwin_bg.jpg") repeat-x bottom;
}
.popwin-menu li{
	float:left; width:80px; text-align:center;padding:7px 0 0 0; 
	border-left:1px solid #ddd; position:relative;
}   
.popwin-menu li img {vertical-align:middle;padding-bottom:2px;}
.popwin-menu li:hover{cursor:pointer;}
.popwin-menu .popwin-tx{
	width: 8px; height: 8px; 
	background: url(<!--{$ucpath}-->images/icon.png) repeat scroll -100px -275px transparent; 
	position:absolute; top:9px; left:3px; display:none;
}
.popwin-menu span{padding-top:5px;}

.popwin-content {
	width:310px;padding:10px;background:#ffffff;
}
.popwin-content .popwin-nothing{
	padding:20px;line-height:20px;text-align:center;color:#666666;
}



.zm_popwin_left {
	float:left;width:50%;height:30px;color:#666666;
	position:fixed;
	bottom:0px; 
}
.zm_popwin_left ul li {
	float:left;line-height:30px;height:30px;
}
.zm_popwin_left ul li img {
	vertical-align:middle;
}
.zm_popwin_left .zm_popwin_rightbor {border-right:1px solid #ccc;}

.zm_popwin_right {
	float:right;width:330px;
}
</style>
<div class="popwin-box">
  
  <div class="zm_popwin_left">
    <ul>
	  <li style="padding-left:20px;padding-right:10px;" class="zm_popwin_rightbor"><a href="<!--{$urlpath}-->usercp.php">会员中心</a></li>
	  <li style="padding-left:10px;padding-right:10px;" class="zm_popwin_rightbor"><img src="<!--{$ucpath}-->images/popwin/popwin_avatar.gif"><a href="<!--{$urlpath}-->usercp.php?c=avatar">设置形象照</a></li>
	  
	  <li style="padding-left:10px;padding-right:10px;">
		<a href="<!--{$urlpath}-->usercp.php?c=vip"><img title="VIP服务" src="<!--{$ucpath}-->images/popwin/popwin_vip.png"></a>&nbsp;
		<a href="<!--{$urlpath}-->usercp.php?c=certify"><img title="诚信认证" src="<!--{$ucpath}-->images/popwin/cid.png"></a>&nbsp;&nbsp;
		<a href="<!--{$urlpath}-->usercp.php?c=cond">修改择友条件</a>
	  </li>

	</ul>
	<div style="clear:both;"></div>
  </div>
  <!--//zm_popwin_left End-->

  <div class="zm_popwin_right">

	  <div class="popwin-main" style="display:none;" id="popwin-main">
		<div class="popwin-titlebar">
		  <span class="popwin-title"></span>
		  <div class="popwin-min" title="关闭消息"></div>
		  <div class="clear"></div>
		</div>
		<div class="popwin-content" id="popwin-data">
		
		</div>
	  </div>
	  <!--/popwin_main End-->
	  
	  <input type="hidden" id="click_menu_value" value="" />
	  <div class="popwin-menu">
		<ul>
		  <li onclick="obj_click_menu('msg', '2', '我的信件');">
		  <div class="popwin-tx"></div><img src="<!--{$ucpath}-->images/popwin/popwin_letter.gif">信件<span id="popwinmsg"><script>obj_loading_count('msg', 'popwinmsg');</script></span>
		  </li>

		  <li onclick="obj_click_menu('hi', '1', '我的招呼');">
		  <div class="popwin-tx"></div><img src="<!--{$ucpath}-->images/popwin/popwin_hi.gif">招呼<span id="popwinhi"><script>obj_loading_count('hi', 'popwinhi');</script></span>
		  </li>

		  <li onclick="obj_click_menu('gift', '3', '我的礼物');">
		  <div class="popwin-tx"></div><img src="<!--{$ucpath}-->images/popwin/popwin_gift.gif">礼物<span id="popwingift"><script>obj_loading_count('gift', 'popwingift');</script></span>
		  </li>
		  <li onclick="obj_click_menu('sysmsg', '1', '我的消息');">
		  <div class="popwin-tx"></div><img src="<!--{$ucpath}-->images/popwin/popwin_gg.gif">消息<span id="popwinsysmsg"><script>obj_loading_count('sysmsg', 'popwinsysmsg');</script></span>
		  </li>
		</ul>
	  </div>
	  <!--//popwin-menu End-->
 
  </div>
  <!--//zm_popwin_right End-->
  <div style="clear"></div>



</div>
<script type='text/javascript'>
$(function() {
	$(".popwin-tx").addClass("block");
	//最小化
    $(".popwin-min").click(function() {
        $(".popwin-main").slideUp("slow");
    });
});

//扑捉区域
function obj_click_menu(id, num, title) {
	var _v = $("#click_menu_value").val();
	//同一区域
	if (_v == id) {
		$(".popwin-title").html(title);
		if ($("#popwin-main").css('display') == 'none') {
			$(".popwin-main").slideDown("slow");
			obj_popwin_data(id, num, "popwin-data");
		}
		else {
			$(".popwin-main").slideUp("slow");
		}
	}
	//不同区域
	else {
		if ($("#popwin-main").css('display') == 'block') {
			$(".popwin-main").slideUp("slow");
		}
		$("#click_menu_value").val(id);
		$(".popwin-title").html(title);
		$(".popwin-main").slideDown("slow");
		obj_popwin_data(id, num, "popwin-data");
	}
}

//获取数据
function obj_popwin_data(type, num, tips) {
	$("#"+tips).html("<div style='text-align:center;padding:10px;color:#999999;'>loading</div>");
	$.ajax({
		type: "POST",
		url: _ROOT_PATH + "usercp.php?c=popwin",
		cache: false,
		data: {a:type, num:num, r:get_rndnum(8)},
		dataType: "json",
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader("request_type","ajax");
		},
		success: function(data) {
			var json = eval(data);
			var result = json.result;
			$("#"+tips).html(result);
		},
		error: function() {}
	});
}

//imbox
function obj_imbox() {
	var tips = "popwin-data";
	$.ajax({
		type: "POST",
		url: _ROOT_PATH + "usercp.php?c=popwin",
		cache: false,
		data: {r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			var type = json.type;
			//存在数据
			if (response == 1) {
				var title = '';
				if (type == 'newvisit') {
					title = '谁访问了我';
				}
				$(".popwin-title").html(title);
				$("#"+tips).html(result);
				if ($("#popwin-main").css('display') == 'block') {
					$(".popwin-main").slideUp("slow");
				}
				$(".popwin-main").slideDown("slow");
			}
		},
		error: function() {}
	});
}
<!--{if $config.imbox_userstatus == '1'}-->
	$(function(){
		//载入弹出框
		setTimeout("obj_imbox()", <!--{$config.imbox_loadtimer}-->*1000);
	});
	<!--{if $config.imbox_loopstatus == 1}-->
	$(function(){
		//开启循环
		setInterval("obj_imbox()", <!--{$config.imbox_looptimer}-->*1000);
	});
	<!--{/if}-->
<!--{/if}-->
</script>
