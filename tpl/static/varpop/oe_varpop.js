/**
	[OElove] (C)2010-2099 PHPCOO.COM Inc.
	This is NOT a freeware, use is subject to license terms
	$Id: oe_varpop.js 2015-03-25 OEdev $
*/

/*
var OE_WIN_WIDTH = $(window).width();
if ($.browser.mozilla) {
	OE_WIN_WIDTH = window.screen.width; //兼容Mozilla
}
*/
var OE_WIN_WIDTH = $("html").width();
var OE_BODY_WIDTH = $("body").width();
var Toast = function(config){
	this.context = config.context == null ? $('body'):config.context;//上下文
	this.message = config.message;//显示内容
	this.time = config.time == null ? 3000 : config.time;//持续时间
	this.left = config.left;//距容器左边的距离
	this.top = config.top;//距容器上方的距离
	this.init();
}
var msgEntity;
Toast.prototype = {
	//初始化显示的位置内容等
	init : function(){
		$("#ToastBox").remove();
		//设置消息体
		var msgDIV = new Array();
		msgDIV.push('<div id="ToastBox" class="oe-toast">');
		msgDIV.push('<span id="ToastText">'+this.message+'</span>');
		msgDIV.push('</div>');

		msgEntity = $(msgDIV.join('')).appendTo(this.context);

		$span_width = msgEntity.width();
		$left_width = (OE_WIN_WIDTH-$span_width)/2;
		//设置消息样式
		//var left = this.left == null ? this.context.width()/2-msgEntity.find('span').width()/2 : this.left;
		//var top = this.top == null ? '20px' : this.top;
		msgEntity.css({left:$left_width});
		msgEntity.hide();
	},
	//显示动画
	show :function(){
		//msgEntity.fadeIn(this.time/2);
		msgEntity.fadeIn(600);
		setTimeout(function(){
			msgEntity.fadeOut(2000);
		}, 2000);
	}	
}
function ToastShow(text, focus, callback) {
	if (typeof(focus) == "undefined") {focus = "";}
	if (typeof(callback) == "undefined") {callback = "";}
	new Toast({context:$('body'), message:text}).show();
	if (focus.length > 0) {
		$("#"+focus).focus();
	}
	if (typeof(callback) == "function") {
		callback.call(this);
	}
}

function ToastTips(msg, focus, callback) {
	if (typeof(msg) == 'undefined') {
		msg = "";
	}
	if (typeof(focus) == "undefined") {focus = "";}
	if (typeof(callback) == "undefined") {callback = "";}
	$obj_id = "ToastTips";
	$("#"+$obj_id).remove();
	$append_html = "<div id='"+$obj_id+"' class='oe_toasttips'><span>"+msg+"</span></div>";
	$($append_html).appendTo("body");

	$height =  ($(window).height()-$("#"+$obj_id).height())/3;
	$("#"+$obj_id).css("left", Math.max(0, (($(window).width() - $("#"+$obj_id).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
	$("#"+$obj_id).css("bottom", $height+"px");
	
	$("#"+$obj_id).fadeIn(800);
	setTimeout(function(){
		$("#"+$obj_id).fadeOut(2000);
	}, 2000);
	if (focus.length > 0) {
		$("#"+focus).focus();
	}
	if (typeof(callback) == "function") {
		callback.call(this);
	}
}

//自适应居中
function varPopMarginAuto(tabid){
	$('#'+tabid).css("position","fixed");
	$height =  ($(window).height()-$("#"+tabid).height())/2;
	$('#'+tabid).css("top", $height+"px");
	$('#'+tabid).css("left", Math.max(0, (($(window).width() - $('#'+tabid).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
}

//弹出窗口
function varPopShow(tabid) {
	$(".varpop-shade").fadeIn(200);
	varPopMarginAuto(tabid);
	$("#"+tabid).fadeIn(200);
}

//关闭弹窗
function varPopClose(tabid) {
	if(typeof(tabid) == 'undefined') {
		tabid = "";
	}
	$("#"+tabid).fadeOut(200);
	$(".varpop-shade").fadeOut(200);
}