/**
 * OElove (C)2010-2016 PHPCOO.COM
 * This is NOT a freeware, use is subject to license terms
 * Email：service@phpcoo.com ,phpcoo@qq.com
 * Last Time: 2016.06.13 By OEdev
*/
/**
 * $Id   :: jquery for ajax更改状态值
 * @param:: string imgid 标签ID
 * @param:: sting id ID
 * @return:: string
*/
function fetch_ajax(imgid,id){
	var requesturl = document.URL;
	var filename = requesturl.split("&")[0];
	var img_on  = _ROOT_PATH + "tpl/static/images/yes.gif";
	var img_off = _ROOT_PATH + "tpl/static/images/no.gif";
    var type  = $("#attr_"+imgid+id).val();
	if(type == imgid+"close"){
		$("#"+imgid+id).attr("src",img_off);
		$("#attr_"+imgid+id).val(imgid+"open");
		$.ajax({
			type: "POST",
			url: filename,
			data: "a=update&type="+type+"&id="+id+"&rnd="+new Date().toString(),
	        dataType : "text",
			success: function(data) {}
		});
	}else{
		$("#"+imgid+id).attr("src",img_on);
		$("#attr_"+imgid+id).val(imgid+"close");
		$.ajax({
			type: "POST",
			url: filename,
			data: "a=update&type="+type+"&id="+id+"&rnd="+new Date().toString(),
	        dataType : "text",
			success: function(data) {}
		});
	}
}


/*--------------- thickbox操作 Start-------------------*/
/**
 * 关闭 thickbox窗口
*/
function tbox_close(){
	window.parent.tb_remove();
}
/**
 * 关闭thickbox并刷新父页
*/
function tbox_close_reload(){
	window.parent.tb_remove();
	window.parent.location.reload();
}
/**
 * 弹出会员查询窗口
 * @param:: string title 标题
 * @param:: string inputid document输入框
 * @param:: string tipid 用户名提示框
*/
function tbox_get_user(title, inputid, tipid) {
	if(typeof(tipid) == 'undefined') {
		tipid = '';
	}
	var filename = get_curl();
	var url = filename + "?c=user&a=search&inputid="+inputid+"&tipid="+tipid+"&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=680&height=400";
	tb_show(title, url, false);
}


/**
 * 弹出添加现金记录窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_addmoney(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=money&a=add&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=650&height=280";
	tb_show(title, url, false);
}


/**
 * 弹出添加积分记录窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_addpoints(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=points&a=add&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=650&height=280";
	tb_show(title, url, false);
}

/**
 * 弹出添加短信记录窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_addmbsms(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=mbsms&a=add&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=650&height=280";
	tb_show(title, url, false);
}

/**
 * 弹出选择模板页
 * @param:: string title 标题
 * @param:: int inputid 接收框
*/
function tbox_templet(title, inputid) {
	var filename = get_curl();
	var url = filename + "?c=templet&a=select&inputid="+inputid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=700&height=400";
	tb_show(title, url, false);
}

/**
 * 弹出修改会员密码窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_editpass(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=user&a=editpass&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=550&height=230";
	tb_show(title, url, false);
}

/**
 * 弹出修改会员内心独白窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_monolog(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=user&a=monolog&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=650&height=350";
	tb_show(title, url, false);
}

/**
 * 弹出会员认证项目窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_rzmanage(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=user&a=rzmanage&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=680&height=280";
	tb_show(title, url, false);
}

/**
 * 弹出会员VIP操作窗口
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_uservip(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=user&a=vip&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=700&height=450";
	tb_show(title, url, false);
}

/**
 * 弹出会员上传照片
 * @param:: string title 标题
 * @param:: int userid 会员ID
*/
function tbox_album_add(title, userid) {
	var filename = get_curl();
	var url = filename + "?c=album&a=add&userid="+userid+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=650&height=350";
	tb_show(title, url, false);
}

/**
 * 弹出会员修改照片
 * @param:: string title 标题
 * @param:: int id 相册ID
*/
function tbox_album_edit(title, id) {
	var filename = get_curl();
	var url = filename + "?c=album&a=edit&id="+id+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=650&height=350";
	tb_show(title, url, false);
}

/**
 * 弹出设置形象照
 * @param:: string title 标题
 * @param:: int id 相册ID
*/
function tbox_setavatar(title, id) {
	var filename = get_curl();
	var url = filename + "?c=album&a=avatar&id="+id+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=700&height=450";
	tb_show(title, url, false);
}

/**
 * 弹出证件验证窗口
 * @param:: string title 标题
 * @param:: int id
*/
function tbox_certify_edit(title, id) {
	var filename = get_curl();
	var url = filename + "?c=certify&a=edit&id="+id+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=680&height=400";
	tb_show(title, url, false);
}

/**
 * 弹出视频认证窗口
 * @param:: string title 标题
 * @param:: int id
 * @param:: int $width 页面宽 px
 * @param:: int $height 页面高 px
*/
function tbox_videorz_edit(title, id, width, height) {
	if(typeof(width) == 'undefined') {width = 680;}
	if(typeof(height) == 'undefined') {height = 400;}
	var filename = get_curl();
	var url = filename + "?c=videorz&a=edit&id="+id+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width="+width+"&height="+height+"";
	tb_show(title, url, false);
}

/**
 * 弹出查看/编辑信件窗口
 * @param:: string title 标题
 * @param:: int id
*/
function tbox_message_edit(title, id) {
	var filename = get_curl();
	var url = filename + "?c=message&a=edit&id="+id+"&fromtype=jdbox&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=680&height=350";
	tb_show(title, url, false);
}

/**
 * 弹出选择邮件模板
 * @param:: string title 标题
 * @param:: string fromform 来源Form
 * @param:: string inputid tplid
 * @param:: string tipsid 提示ID
 * @param:: int id
*/
function tbox_get_mailtpl(title, fromform, inputid, tipsid) {
	if(typeof(title) == 'undefined') {
		title = '选择邮件模板';
	}
	var filename = get_curl();
	var url = filename + "?c=mailtpl&a=search&fromtype=jdbox&fromform="+fromform+"&inputid="+inputid+"&tipsid="+tipsid+"&r="+get_rndnum(6);
	url = url + "&keepThis=true&TB_iframe=true&width=630&height=420";
	tb_show(title, url, false);
}

/*--------------- thickbox操作 End -------------------*/


/*--------------- 批量添加 Start ---------------------*/
/**
 * 会员组收费类别
 * @param:: my
 * @param:: module
*/
function commersetting_add(my) {
	$('#load_itemtips').html('正在为您努力加载中...');
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];
	//统计itemlist 个数
	var itemnum = $('.itemlist') ? $('.itemlist').length : 0;
	//当前最大排序
	var maxsort = parseInt($("input[name='itemmaxsort']").val());
	//ajax 排序 sort
	var sort = 0;
	if (maxsort>itemnum) {
		sort = maxsort;
	}
	else {
		sort = itemnum;
	}
	//URL
	var url = filename+'?c=ajax&a=commersetting&sort='+sort+"&rnd="+get_rndnum(8);
	var dom = $("tr.itemlist");
	var at = dom.length>0 ? dom.eq(dom.length-1) : $('#list-top');
    $.ajax({
	type: "GET",
    url : url, 
    dataType: "json",
    success: function(data){
		var json = eval(data);
		commersetting_addtr(at, json.list, 0);
		$('#load_itemtips').empty();
		//成功后itemmaxsort+1
		$("input[name='itemmaxsort']").val((maxsort+1));
    }
    });
	return false;
}

/**
 * 删除元素列表
*/
function commersetting_del(my, sortid) {
	//移除tr
	my.parent('td').parent('tr').remove();
	//统计itemlist 个数
	var itemnum = $('.itemlist') ? $('.itemlist').length : 0;
	//itemmaxsort最大值
	var maxsort = parseInt($("input[name='itemmaxsort']").val());
	//如果没有列表 重置0
	if (itemnum == 0) {
		$("input[name='itemmaxsort']").val(0);
	}
	//有列表
	else {
		//如果删除的ID是当前最大的ID，则itemmaxsort-1
		if(sortid == maxsort) {
			$("input[name='itemmaxsort']").val((maxsort-1));
		}

	}
}

/**
 * 统计元素列表个数
*/
function commersetting_countnums() {
	$("input[name='itemnum']").val(function(){return parseInt($(this).val())-1});
}
//focus
function commersetting_addtr(h,t,i){
	h.after(t);
	var l = i!=1?i:1;
	h.next('tr').find("input[type='text']").eq(l).focus();
}


/**
 * 短信收费设置
 * @param:: my
 * @param:: module
*/
function smsfee_add(my) {
	$('#load_itemtips').html('正在为您努力加载中...');
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];
	//统计itemlist 个数
	var itemnum = $('.itemlist') ? $('.itemlist').length : 0;
	//当前最大排序
	var maxsort = parseInt($("input[name='itemmaxsort']").val());
	//ajax 排序 sort
	var sort = 0;
	if (maxsort>itemnum) {
		sort = maxsort;
	}
	else {
		sort = itemnum;
	}
	//URL
	var url = filename+'?c=ajax&a=smsfee&sort='+sort+"&rnd="+get_rndnum(8);
	var dom = $("tr.itemlist");
	var at = dom.length>0 ? dom.eq(dom.length-1) : $('#list-top');
    $.ajax({
	type: "GET",
    url : url, 
    dataType: "json",
    success: function(data){
		var json = eval(data);
		smsfee_addtr(at, json.list, 0);
		$('#load_itemtips').empty();
		//成功后itemmaxsort+1
		$("input[name='itemmaxsort']").val((maxsort+1));
    }
    });
	return false;
}

/**
 * 删除元素列表
*/
function smsfee_del(my, sortid) {
	//移除tr
	my.parent('td').parent('tr').remove();
	//统计itemlist 个数
	var itemnum = $('.itemlist') ? $('.itemlist').length : 0;
	//itemmaxsort最大值
	var maxsort = parseInt($("input[name='itemmaxsort']").val());
	//如果没有列表 重置0
	if (itemnum == 0) {
		$("input[name='itemmaxsort']").val(0);
	}
	//有列表
	else {
		//如果删除的ID是当前最大的ID，则itemmaxsort-1
		if(sortid == maxsort) {
			$("input[name='itemmaxsort']").val((maxsort-1));
		}

	}
}

/**
 * 统计元素列表个数
*/
function smsfee_countnums() {
	$("input[name='itemnum']").val(function(){return parseInt($(this).val())-1});
}
//focus
function smsfee_addtr(h,t,i){
	h.after(t);
	var l = i != 1 ? i : 1;
	h.next('tr').find("input[type='text']").eq(l).focus();
}

/*--------------- 批量添加 End ---------------------*/


/**
 * 权限_全选
 * @param:: string control 控制ID
 * @param:: string boxname 复选框名
 * @return:: 
*/
function auths_selectAll(control, boxname) {
	if ($("input[name='"+control+"']:checked").attr('checked') == true) {
		$("input[name='"+boxname+"[]']").attr("checked", 'true');
	}
	else {
		$("input[name='"+boxname+"[]']").removeAttr("checked");
	}

}

/**
 * 权限_单组全选
 * @param:: string control 控制ID
 * @param:: string boxid 复选框ID
 * @return:: 
*/
function auths_selectGroupBy(control, boxid) {
	if ($("input[name='"+control+"']:checked").attr('checked') == true) {
		$("input[id='"+boxid+"']").attr("checked", 'true');
	}
	else {
		$("input[id='"+boxid+"']").removeAttr("checked");
	}
}

/**
 * 统计
 * @return string message
*/
function runTj() {
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];
	$.ajax({
		type: 'POST',
		url: filename + '?c=ajax&a=tj',
		cache: false,
		data: {r: get_rndnum(8)},
		dataType: 'json',
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader('request_type', 'ajax');
		},
		success: function(data) {
			var json = eval(data);
			/* JSON */
			//var message = json.message;
		},
		error: function() {
		}
	});
}

/**
 * 获取可用账号可用短信数量
 * @param:: string tipid  JSON返回的ID
 * @return:: array('response'=>, 'message'=>)
*/
function getSmsBalance(tipid) {
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];
	$('#'+tipid).html('<font color=#999999>loading...</font>');
	$.ajax({
		type: 'POST',
		url: filename + '?c=ajax&a=getsmsbalance',
		cache: false,
		data: {r: get_rndnum(8)},
		dataType: 'json',
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader('request_type', 'ajax');
		},
		success: function(data) {
			var json = eval(data);
			/* JSON */
			var response = json.response;
			var message = json.message;
			if (true == response) {
				$('#'+tipid).html('<font color=green>'+message+'</font>');
			} 
			else {
				$('#'+tipid).html('<font color=red>'+message+'</font>');
			}
		},
		error: function() {
		}
	});
}

/**
 * 发送测试手机短信
 * @param:: string tipid  JSON返回的ID
 * @return:: array('response'=>, 'message'=>)
*/
function testSms(tipid) {
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];
	$('#'+tipid).html('<font color=#999999>短信发送中...</font>');
	$.ajax({
		type: 'POST',
		url: filename + '?c=ajax&a=testsms',
		cache: false,
		data: {r: get_rndnum(8)},
		dataType: 'json',
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader('request_type', 'ajax');
		},
		success: function(data) {
			var json = eval(data);
			/* JSON */
			var response = json.response;
			var message = json.message;
			if (true == response) {
				if (message == '') {
					message = '短信发送成功，请注意查收。';
				}
				$('#'+tipid).html('<font color=green>'+message+'</font>');
			} 
			else {
				if (message == '') {
					message = '短信发送失败，请检查相关参数和可用短信数量。';
				}
				$('#'+tipid).html('<font color=red>'+message+'</font>');
			}
		},
		error: function() {
		}
	});
}

/**
 * 测试发送邮件
 * @param:: string tipid  JSON返回的ID
 * @return:: array('response'=>, 'message'=>)
*/
function testMail(tipid) {
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];
	$('#'+tipid).html('<font color=#999999>邮件发送中...</font>');
	$.ajax({
		type: 'POST',
		url: filename + '?c=ajax&a=testmail',
		cache: false,
		data: {r: get_rndnum(8)},
		dataType: 'json',
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader('request_type', 'ajax');
		},
		success: function(data) {
			var json = eval(data);
			/* JSON */
			var response = json.response;
			var message = json.message;
			if (true == response) {
				if (message == '') {
					message = '邮件发送成功，请注意查收。';
				}
				$('#'+tipid).html('<font color=green>'+message+'</font>');
			} 
			else {
				if (message == '') {
					message = '邮件发送失败，请检查相关参数配置。';
				}
				$('#'+tipid).html('<font color=red>'+message+'</font>');
			}
		},
		error: function() {
		}
	});
}



/**
 * 设置形象照
 * @param:: string 
 * @param:: int x 
 * @param:: int y
 * @param:: int w
 * @param:: int z
 * @param:: int pw ic缩略图大小
 * @param:: int ph
 * @param:: int userid
 * @return:: array('response'=>, 'message'=>)
*/
function cpSetAvatar(img, x, y, w, h, pw, ph, userid) {
	var requesturl = document.URL;
	var filename = requesturl.split("?")[0];

	if (userid > 0) {
		$.ajax({
			type: 'POST',
			url: filename + '?c=ajax&a=setavatar',
			cache: false,
			data: {img: img, x: x, y: y, w: w, h: h, pw: pw, ph: ph, userid: userid, type: 'admin', r: get_rndnum(8)},
			dataType: 'json',
			beforeSend: function(XMLHttpRequest) {
				XMLHttpRequest.setRequestHeader('request_type', 'ajax');
			},
			success: function(data) {
				var json = eval(data);
				/* JSON */
				var response = json.response;
				var message = json.message;

				if (true == response) {
					alert('设置成功');
					tbox_close_reload();
				}
				else {
					if (message == '') {
						alert('设置失败');
					}
					else {
						alert(message);
					}
				}
			},
			error: function() {
			}
		});
	}
}



//2016.06.13 By OEdev
$(function(){
	
	//改变tr错综样式代码 页面底部加载 table增加样式名 table_cs
	$oe_table_obj = $(".table_cs tr");
	$oe_tr_len = $oe_table_obj.length;
	if ($oe_tr_len > 0) {
		for (i=0; i<$oe_tr_len; i++){
			if (i > 0) {
				if (i%2 == 0) {
					$($oe_table_obj).eq(i).addClass("tr_b");
				}
			}
		}
	}

	//查看会员资料
	$("[f='viewuser']").bind("click", function(){
		$_uid = $(this).attr("data-id");
		tbox_user_view($_uid);
	});


	//申请诚信联盟
	$("[f='creditapp']").bind("click", function(){
		oelove_varpop_creditapp();
	});

	//查询诚信联盟 通信状态
	$("[f='credittest']").bind("click", function(){
		$_tips = $(this).attr("data-tips");
		$tips_obj = $("#"+$_tips);
		$tips_obj.html("loading...");
		$.ajax({
			type: "POST",
			url: _CPFILE+"?c=credit&a=test",
			cache: false,
			data: {r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				if ($response == "1") {
					$tips_obj.html("<font color='green'>通信成功</font>");
				}
				else {
					if ($result.length > 0) {
						$tips_obj.html("<font color='red'>"+$result+"</font>");
					}
					else {
						$tips_obj.html("<font color='red'>通信失败，请检查相关参数</font>");
					}
				}

			},
			error: function() {

			}
		});


	});

	//查询联系方式 诚信情况
	$("[f='creditget']").bind("click", function(){
		$type = $(this).attr("data-type");
		$value = $(this).attr("data-value");
		$tips = $(this).attr("data-tips");
		if (typeof($type) == "undefined") {
			$type = "idcard";
		}
		if (typeof($tips) == "undefined") {
			$tips = "";
		}
		$tips_obj = $("#"+$tips);

		$tips_obj.html("<img src='"+_ROOT_PATH +"tpl/static/images/loading.gif' />");
		$.ajax({
			type: "POST",
			url: _CPFILE+"?c=credit&a=get",
			cache: false,
			data: {type:$type, value:$value, r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;

				if ($response == "2") { //没有开通诚信联盟
					$tips_obj.html("<font color='red'>查询失败，网站不存在或密钥错误</font>");
				}
				else if ($response == "1") { //查询成功，被举报过
					$tips_obj.html("<img src='"+_ROOT_PATH +"tpl/static/images/false.png' />");
				}
				else if ($response == "3") { //查询成功，未被举报过
					$tips_obj.html("<img src='"+_ROOT_PATH +"tpl/static/images/true.png' />");
				}
				else {
					if ($result.length > 0) {
						$tips_obj.html("<font color='red'>"+$result+"</font>");
					}
					else {
						$tips_obj.html("<font color='red'>查询失败</font>");
					}
				}

			},
			error: function() {

			}
		});
		

	});

});

//弹出联盟申请页 2016.06.13
function oelove_varpop_creditapp() {
	$_url = _CPFILE+"?c=credit&a=app&r="+get_rndnum(6);
	$_url = $_url + "&keepThis=true&TB_iframe=true&width=700&height=265";
	tb_show("申请诚信联盟", $_url, false);
}
