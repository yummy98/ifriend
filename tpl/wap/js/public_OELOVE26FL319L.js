/**
 * [OElove] (C)2010-2099 oelove.com Inc.
 * Email：service@phpcoo.com，phpcoo@qq.com
 * $ LastTime 2015.06.10 Update by cy$
*/
/*----------- 支持div滚动条 方式1 touch begin  noBarsOnTouchScreen(divid)---------------*/
function noBarsOnTouchScreen(arg) {
	var elem, tx, ty;
	if('ontouchstart' in document.documentElement ) {
		if (elem = document.getElementById(arg)) {
			//elem.style.overflow = 'hidden';
			elem.ontouchstart = ts;
			elem.ontouchmove = tm;
		}
	}

	function ts(e) {
		var tch;
		if(e.touches.length == 1) {
			e.stopPropagation();
			tch = e.touches[ 0 ];
			tx = tch.pageX;
			ty = tch.pageY;
		}
	}
	function tm(e) {
		var tch;
		if (e.touches.length == 1 ) {
			e.preventDefault();
			e.stopPropagation();
			tch = e.touches[ 0 ];
			this.scrollTop +=  ty - tch.pageY;
			ty = tch.pageY;
		}
	}
}


function isTouchDevice(){
    try{
        document.createEvent("TouchEvent");
        return true;
    }catch(e){
        return false;
    }
}
//支持div滚动条 方式2  touchScroll("MyElement");
function touchScroll(id){
    if(isTouchDevice()){ //if touch events exist...
        var el=document.getElementById(id);
        var scrollStartPos=0;

        document.getElementById(id).addEventListener("touchstart", function(event) {
            scrollStartPos=this.scrollTop+event.touches[0].pageY;
            event.preventDefault();
        },false);

        document.getElementById(id).addEventListener("touchmove", function(event) {
            this.scrollTop=scrollStartPos-event.touches[0].pageY;
            event.preventDefault();
        },false);
    }
}
/*----------- andriod touch end ---------------*/


//判断字符长度，一个汉字为2个字符
function strlen(s){
	var l = 0;
	var a = s.split("");
	for (var i=0;i<a.length;i++){
		if (a[i].charCodeAt(0)<299){
			l++;
		}else{
			l+=2;
		}
	}
	return l;
}

//判断字体个数
function strQuantity(s){
	var l = 0;
	var a = s.split("");
	for (var i=0;i<a.length;i++){
		if (a[i].charCodeAt(0)<299){
			l++;
		}else{
			l++;
		}
	}
	return l;
}

//随机数
function get_rndnum(n) {
	var chars = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
	var res = "";
	for(var i = 0; i < n ; i ++) {
		var id = Math.ceil(Math.random()*35);
		res += chars[id];
	}
	return res;
}

/*----------------------- 公共弹出层 Begin ----------------------*/
//popbox position
function popMakerCenter(){
	//$('.pop-layout').css("display","block");
	$('.pop-layout').css("position","absolute");
	$('.pop-layout').css("top", Math.max(0, (($(window).height() - $('.pop-layout').outerHeight()) / 2) + $(window).scrollTop()) + "px");
	$('.pop-layout').css("left", Math.max(0, (($(window).width() - $('.pop-layout').outerWidth()) / 2) + $(window).scrollLeft()) + "px");
}

//popbox close
function layoutPopClose() {
	//$('.pop-layout').css("display","none");
	$('.pop-shade').fadeOut(200);
	$('.pop-layout').fadeOut(200);
}

//popbox
function layoutPop() {
	$('.pop-shade').fadeIn(100);
	popMakerCenter();
	$('.pop-layout').fadeIn(200);

}
/*----------------------- 公共弹出层 End -----------------------*/


//url location to
function goUrl(url) {
	$("#loading").fadeIn(1);
	window.location.href = url;
}

//url reload
function urlReload() {
	$("#loading").fadeIn(1);
	window.location.reload();
}

//url go back
function goBack() {
	window.history.go(-1);
	$("#loading").fadeOut();
}

//url go back refresh
function goBackRefresh() {
	window.history.go(-1);
	opener.location.reload();
	//window.location.href = document.referrer;
}

//home detail 
function userDetail(uid) {
	$("#loading").fadeIn(1);
	window.location.href = WAP_APPFILE+"?c=home&uid="+uid;
}



//tabpop position
/**
 * 层自适应居中
 * @param:: string $tabid DIV 
 * @return:: 
*/
function tabPopMarginAuto(tabid){
	$('#'+tabid).css("position","absolute");
	$('#'+tabid).css("top", Math.max(0, (($(window).height() - $('#'+tabid).outerHeight()) / 2) + $(window).scrollTop()) + "px");
	$('#'+tabid).css("left", Math.max(0, (($(window).width() - $('#'+tabid).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
}

/**
 * 层自适应居中
 * @param:: string $tabid DIV 
 * @return:: 
*/
function varPopMarginAuto(tabid){
	$('#'+tabid).css("position","absolute");
	$('#'+tabid).css("top", "100px");
	$('#'+tabid).css("left", Math.max(0, (($(window).width() - $('#'+tabid).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
}


/**
 * 关闭所在地区层
 * @return:: NULL;
*/
function areaPopClose() {
	$("#varpop_shade").hide();
	$("#area_box").fadeOut(200);
	$("#area_loading").text("");
	$("#area_data").html("");
}

/**
 * 弹出所在地区选项层
 * @param:: string $title 标题
 * @param:: string $item 参数
 * @return:: NULL;
*/
function areaPopup(title, item) {
	$('#varpop_shade').show(); //遮罩效果
	varPopMarginAuto("area_box"); //自适应居中
	$("#area_box").fadeIn(200); //显示
	$("#area_loading").text("Loading...");
	$("#area_title").text(title);
	var dist1 = $("#"+item+"1").val(); //一级地区value
	var dist2 = $("#"+item+"2").val(); //二级地区value
	var dist3 = $("#"+item+"3").val(); //三级地区value
	//POST
	$.ajax({
		type: "POST",
		url: WAP_APPFILE+"?c=index",
		cache: false,
		data: {a:"area", item:item, dist1:dist1, dist2:dist2, dist3:dist3, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				$("#area_loading").text("");
				//加载数据
				$("#area_data").html(result);
				tabPopMarginAuto("area_box"); //重新居中
			}
			else {
				$("#area_loading").text("");
				ToastShow("数据加载失败，请检查网络...");
			}
		},
		error: function() {
		}
	});
}

/**
 * 关闭出生地层
 * @return:: NULL;
*/
function hometownPopClose() {
	//$("#varpop_shade").fadeOut(200);
	$("#varpop_shade").hide();
	$("#hometown_box").fadeOut(200);
	$("#hometown_loading").text("");
	$("#hometown_data").html("");
}

/**
 * 弹出出生地选项层
 * @param:: string $title 标题
 * @param:: string $item 参数
 * @return:: NULL;
*/
function hometownPopup(title, item) {
	//$('#varpop_shade').fadeIn(100); //遮罩效果
	$('#varpop_shade').show(); //遮罩效果
	varPopMarginAuto("hometown_box"); //自适应居中
	$("#hometown_box").fadeIn(200); //显示
	$("#hometown_loading").text("Loading...");
	$("#hometown_title").text(title);
	var dist1 = $("#"+item+"1").val(); //一级地区value
	var dist2 = $("#"+item+"2").val(); //二级地区value
	//POST
	$.ajax({
		type: "POST",
		url: WAP_APPFILE+"?c=index",
		cache: false,
		data: {a:"hometown", item:item, dist1:dist1, dist2:dist2, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				$("#hometown_loading").text("");
				//加载数据
				$("#hometown_data").html(result);
				tabPopMarginAuto("hometown_box"); //重新居中
			}
			else {
				$("#hometown_loading").text("");
				ToastShow("数据加载失败，请检查网络...");
			}
		},
		error: function() {
		}
	});
}


//上传图片 AJAX提交 支持IE
function oeloveUploadImg($file, $url) {
	if (_oeloveCheckImgType($file) == true) {
		$obj_loading = $("#"+$file+"_loading");
		if ($obj_loading.length > 0) {
			$obj_loading.show();
		}
		$.ajaxFileUpload({
			"url": $url,
			"secureuri": false,
			"fileElementId": $file,
			"dataType": "json",
			"data": {
				uploadpart: $file
			},
			async: this.async,
			beforeSend: function ($xmlobj) {},
			complete: function ($data) {},
			success: function ($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				$imgthumb = $json.thumbimg;
				$imgurl = $json.uploadimg;

				if ($response == "1") {
					if ($("#"+$file+"_thumb").length > 0) {
						$("#"+$file+"_thumb").val($imgthumb);
					}
					if ($("#"+$file+"_url").length > 0) {
						$("#"+$file+"_url").val($imgurl);
					}
					if ($("#"+$file+"_preview").length > 0) {
						$img = _ROOT_PATH+$imgurl+"?r="+get_rndnum(8);
						$("#"+$file+"_preview").attr("src", $img);
					}
					if ($obj_loading.length > 0) {
						$obj_loading.hide();
					}
					ToastShow("上传成功");
				}
				else {
					if ($obj_loading.length > 0) {
						$obj_loading.hide();
					}
					if ($result.length > 0 ) {
						ToastShow($result);
					}
					else {
						ToastShow("上传失败，请检查图片。");
					}
				}

			},
			error: function ($data, e, b) {
				if ($obj_loading.length > 0) {
					$obj_loading.hide();
				}
				ToastShow("上传失败，请检查网络...");
			}
		});

	}
}


//判断图片格式
function _oeloveCheckImgType(filepart) {
	$res = true;
	$oe_file_obj = $("#"+filepart);
	$oe_file_val = $oe_file_obj.val();
	$oe_file_size = 0;
	//$oe_sys_max_size = (_UPLOAD_MAXSIZE*1024*1024);
	if ($oe_file_val.length == 0) {
		ToastShow("请选择要上传的图片");
		$res = false;
	}
	if(!/.(gif|GIF|jpg|JPG|jpeg|JPEG|png|PNG)$/.test($oe_file_val)){ 
		ToastShow("图片格式不正确");
		$res = false;
	}
	return $res;
}
