/**
 * OElove (C)2010-2016 PHPCOO.COM
 * This is not a freeware, use is subject to license terms
 * Email：service@phpcoo.com ,phpcoo@qq.com
 * Last Time: 2016.06.15 By CL
*/
var OECREDIT_BOX = "id_credit_box"; //弹出容器
var OECREDIT_CONTACTS = "id_credit_contacts"; //会员联系方式容器
var OECREDIT_HOME_UID = 0; //会员主页ID
var OECREDIT_DETAILS = "id_credit_details"; //举报详情容器

$(function(){
	//点击诚信查询 按钮
	$("[f='but_check_credit']").bind("click", function(){
		OECREDIT_HOME_UID = $(this).attr("data-uid"); //主页ID
		if ($("#"+OECREDIT_BOX).css("display") == "block") {
			$("#"+OECREDIT_BOX).hide();
		}
		else {
			$("#"+OECREDIT_BOX).show();
			_oeCreditUser();
		}
	});
	
	//查看举报详情
	$(document).on("click", "[f='but_credit_details']", function(){
		$type = $(this).attr("data-type");
		$uid = $(this).attr("data-uid");

		$("#"+OECREDIT_DETAILS).show();
		_oeCreditDetails($type, $uid);
	});
	
	//关闭举报详情
	$(document).on("click", "[f='but_close_credit_details']", function(){
		$("#"+OECREDIT_DETAILS).hide();
	});
	
});

//获取会员资料
function _oeCreditUser() {
	if (OECREDIT_HOME_UID > 0) {
		$tips_obj = $("#"+OECREDIT_CONTACTS);
		$tips_obj.html("<p>loading...</p>");
		$.ajax({
			type: "POST",
			url: _ROOT_PATH+"wap.php?c=credit&a=getuser",
			cache: false,
			data: {uid:OECREDIT_HOME_UID, r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				if ($response == "1") {
					$tips_obj.html($result);
				}
				else {
					if ($result.length > 0) {
						$tips_obj.html("<p>"+$result+"</p>");
					}
					else {
						$tips_obj.html("<p>没有查询数据</p>");
					}
				}

			},
			error: function() {

			}
		});

	}
}

//查询某项资料举报状态
function _oeCreditGet($type, $uid) {
	if ($type.length > 0 && $uid.length > 0) {
		$tips_obj = $("#id_credit_"+$type);
		$tips_obj.html("<img class='loading' src='"+_ROOT_PATH+"tpl/static/images/loading.gif' />");
		$.ajax({
			type: "POST",
			url: _ROOT_PATH+"wap.php?c=credit&a=getcredit",
			cache: false,
			data: {type:$type, uid:$uid, r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				$tips_obj = $("#id_credit_"+$type); //重新赋值

				if ($response == "2") { //没有开通诚信联盟
					$tips_obj.html("<font color='red'>查询失败,请联系网站</font>");
				}
				else if ($response == "1") { //查询成功，被举报过
					$tips_obj.html("<em class='em_2 xx'></em> <em class='em_3' f='but_credit_details' data-type='"+$type+"' data-uid='"+$uid+"' style='cursor:pointer;'>点击查看</em>");
				}
				else if ($response == "3") { //查询成功，未被举报过
					$tips_obj.html("<em class='em_2'></em>");
				}
				else {
					if ($result.length > 0) {
						$tips_obj.html("<font color='red'>"+$result+"</font>");
					}
					else {
						$tips_obj.html("<font color='red'>查询失败,请联系网站</font>");
					}
				}

			},
			error: function() {

			}
		});
	}
}

//查看举报详情
function _oeCreditDetails($type, $uid) {
	if ($type.length > 0 && $uid.length > 0) {
		$tips_obj = $("#"+OECREDIT_DETAILS);
		$.ajax({
			type: "POST",
			url: _ROOT_PATH+"wap.php?c=credit&a=getdetails",
			cache: false,
			data: {type:$type, uid:$uid, r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;

				if ($response == "1") { //有详细...
					$tips_obj.html($result);
				}
				else {
					if ($result.length > 0) {
						$tips_obj.html("<p><font color='red'>"+$result+"</font></p>");
					}
					else {
						$tips_obj.html("<p><font color='red'>查询失败,请联系网站</font></p>");
					}
				}

			},
			error: function() {

			}
		});
	}
}
