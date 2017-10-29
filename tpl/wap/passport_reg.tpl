<!--{assign var="menu_id" value=""}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->

<div class="reg-layout">


  <div class="reg-wrap">
    <h2>会员帐号信息 必填</h2>
	<div class="reg-itemlist">
	  <dl id="li_email">
	    <dt>邮 箱：</dt>
		<dd><input type="text" id="email" name="email" placeholder="输入有效邮箱" class="input" onblur="checkEmail();" /></dd>
	  </dl>
	  <dl id="li_username">
	    <dt>用户名：</dt>
		<dd><input type="text" id="username" name="username" placeholder="输入用户名称" class="input" onblur="checkUserName();" /></dd>
	  </dl>
	  <dl style="border:none;">
	    <dt>密 码：</dt>
		<dd><input type="password" id="password" name="password" placeholder="输入6~16位密码" class="input" /></dd>
	  </dl>
	  <div class="clear"></div>
	</div>
  </div>
  <!--/reg-wrap End-->


  <div class="reg-wrap">
    <h2>会员基本资料 带*号必填</h2>
	<div class="reg-itemlist">
	  <dl>
	    <dt><font color="red">*</font>所在地区：</dt>
		<dd>
		<span onclick="areaPopup('选择地区', 'dist');" id="dist_text">选择</span>
		<input type="hidden" name="dist1" id="dist1" value="0" />
		<input type="hidden" name="dist2" id="dist2" value="0" />
		<input type="hidden" name="dist3" id="dist3" value="0" />
		</dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>性别：</dt>
		<dd>
		  <select name="gender" id="gender">
		    <option value="">=请选择=</option>
            <option value="1">男</option>
            <option value="2">女</option>
          </select>
		</dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>生日：</dt>
		<dd><input type="text" name="birthday" id="birthday" placeholder="(格式:19920501)" class="input" style="width:120px" /></dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>婚姻：</dt>
		<dd><!--{hook mod='var' item='marrystatus' name='marrystatus' type='select' text='=请选择='}--></dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>学历：</dt>
		<dd><!--{hook mod='var' item='education' name='education' type='select' text='=请选择='}--></dd>
	  </dl>
	  <dl>
	    <dt><font color="red">*</font>身高：</dt>
		<dd><!--{hook mod='height' name='height' text='=请选择=' value='160'}--> CM</dd>
	  </dl>
	  <!--{if $config.regweight == '1'}-->
	  <dl>
	    <dt><!--{if $config.requestweight=='1'}--><font color="red">*</font><!--{/if}-->体重：</dt>
		<dd><!--{hook mod='weight' name='weight' text='=请选择='}--> KG</dd>
	  </dl>
	  <!--{/if}-->
	  <!--{if $config.reglovesort == '1'}-->
	  <dl>
	    <dt><!--{if $config.requestlovesort=='1'}--><font color="red">*</font><!--{/if}-->交友类型：</dt>
		<dd><!--{hook mod='lovesort' type='select' name='lovesort' text='=请选择='}--></dd>
	  </dl>
	  <!--{/if}-->
	  <!--{if $config.regsalary == '1'}-->
	  <dl>
	    <dt><!--{if $config.requestsalary=='1'}--><font color="red">*</font><!--{/if}-->月薪收入：</dt>
		<dd><!--{hook mod='var' item='salary' name='salary' type='select' text='=请选择='}--></dd>
	  </dl>
	  <!--{/if}-->
	  <!--{if $config.regmobile == '1'}-->
	  <dl>
	    <dt><!--{if $config.requestmobile=='1'}--><font color="red">*</font><!--{/if}-->手机号码：</dt>
		<dd><input type="text" name="mobile" id="mobile" placeholder="输入有效手机号码" class="input" /></dd>
	  </dl>
	  <!--{/if}-->
	  <!--{if $config.regqq == '1'}-->
	  <dl>
	    <dt><!--{if $config.requestqq=='1'}--><font color="red">*</font><!--{/if}-->QQ号码：</dt>
		<dd><input type="text" name="qq" id="qq" placeholder="输入有效QQ号码" class="input" /></dd>
	  </dl>
	  <!--{/if}-->
	  <!--{if $config.regidnumber == '1'}-->
	  <dl>
	    <dt><!--{if $config.requestidnumber=='1'}--><font color="red">*</font><!--{/if}-->身份证号：</dt>
		<dd><input type="text" name="idnumber" id="idnumber" placeholder="输入有效身份证号" class="input" /></dd>
	  </dl>
	  <!--{/if}-->
	  <div class="clear"></div>
	</div>
  </div>
  <!--/reg-wrap End-->


 <div class="spanbtn0" id="btn_post">下一步</div>
</div>

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


<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
<script type="text/javascript">
$(function(){

	$("#btn_post").click(function(){ //提交 下一步
		var email = $("#email").val();
		if (email == "") {
			ToastShow("请填写邮箱");
			return false;
		}
		
		var username = $("#username").val();
		if (username == "") {
			ToastShow("请填写用户名");
			return false;
		}
		
		var password = $("#password").val();
		if (password == "") {
			ToastShow("请填写登录密码");
			return false;
		}

		var dist1 = $("#dist1").val();
		var dist2 = $("#dist2").val();
		var dist3 = $("#dist3").val();
		if (dist1 < 1) {
			ToastShow("请选择地区");
			return false;
		}
		if (dist2 < 1) {
			ToastShow("请选择地区");
			return false;
		}

		var gender = $("#gender").val();
		if (gender < 1) {
			ToastShow("请选择性别");
			return false;
		}

		var birthday = $("#birthday").val();
		if (birthday == "") {
			ToastShow("请填写生日");
			return false;
		}

		var marrystatus = $("#marrystatus").val();
		if (marrystatus == "") {
			ToastShow("请选择婚姻");
			return false;
		}

		var education = $("#education").val();
		if (education == "") {
			ToastShow("请选择学历");
			return false;
		}

		var height = $("#height").val();
		if (height == "") {
			ToastShow("请选择身高");
			return false;
		}

		var weight = "";
		<!--{if $config.regweight == '1'}-->
		weight = $("#weight").val();
		<!--{if $config.requestweight=='1'}-->
		if (weight == "") {
			ToastShow("请选择体重");
			return false;
		}
		<!--{/if}-->
		<!--{/if}-->

		var lovesort = "";
		<!--{if $config.reglovesort == '1'}-->
		lovesort = $("#lovesort").val();
		<!--{if $config.requestlovesort=='1'}-->
		if (lovesort == "") {
			ToastShow("请选择交友类型");
			return false;
		}
		<!--{/if}-->
		<!--{/if}-->

		var salary = "";
		<!--{if $config.regsalary == '1'}-->
		salary = $("#salary").val();
		<!--{if $config.requestsalary=='1'}-->
		if (salary == "") {
			ToastShow("请选择月薪收入");
			return false;
		}
		<!--{/if}-->
		<!--{/if}-->

		var mobile = "";
		<!--{if $config.regmobile == '1'}-->
		mobile = $("#mobile").val();
		<!--{if $config.requestmobile == '1'}-->
		if (mobile == "") {
			ToastShow("请填写手机号码");
			return false;
		}
		<!--{/if}-->
		<!--{/if}-->

		var qq = "";
		<!--{if $config.regqq == '1'}-->
		qq = $("#qq").val();
		<!--{if $config.requestqq == '1'}-->
		if (qq == "") {
			ToastShow("请填写QQ号码");
			return false;
		}
		<!--{/if}-->
		<!--{/if}-->

		var idnumber = "";
		<!--{if $config.regidnumber == '1'}-->
		idnumber = $("#idnumber").val();
		<!--{if $config.requestidnumber == '1'}-->
		if (idnumber == "") {
			ToastShow("请填写身份证号");
			return false;
		}
		<!--{/if}-->
		<!--{/if}-->
		
		$("#btn_post").html("注册中，请稍等...");
		$.ajax({
			type: "POST",
			url: "<!--{$wapfile}-->?c=passport",
			cache: false,
			data: {
					a:"regpost", email:email, username:username, password:password,
					dist1:dist1, dist2:dist2, dist3:dist3, gender:gender, birthday:birthday, 
					marrystatus:marrystatus, education:education, height:height, weight:weight,
					lovesort:lovesort, salary:salary, mobile:mobile, qq:qq, idnumber:idnumber, r:get_rndnum(8)
			},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var response = json.response;
				var result = json.result;
				if (response == '1') {
					<!--{if $config.useraudit == '1'}-->
					ToastShow("注册成功，请等待审批。");
					setTimeout(function(){
						goUrl("<!--{$wapfile}-->");
					}, 800);
					<!--{else}-->
					ToastShow("注册成功");
					setTimeout(function(){
						goUrl("<!--{$wapfile}-->?c=passport&a=profile");
					}, 800);
					<!--{/if}-->
				}
				else if (response == "2") {
					goUrl(result);
				}
				else {
					if (result.length > 0) {
						ToastShow(result);
					}
					else {
						ToastShow("注册失败，请检查网络...");
					}
					$("#btn_post").html("下一步");
					
				}
			},
			error: function() {
				ToastShow("提交失败，请检查网络...");
				$("#btn_post").html("下一步");
			}
		});

	});
});


//check username
function checkUserName() {
	var li_tips = $("#li_username");
	var value = $("#username").val();
	if (value == "") {
		ToastShow("用户名不能为空");
		li_tips.addClass("error-border");
		return false;
	}
	else {
		li_tips.removeClass("error-border");
	}
	$.ajax({
		type: "POST",
		url: "<!--{$wapfile}-->?c=passport",
		cache: false,
		data: {a:"checkusername", username:value, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				li_tips.removeClass("error-border");
				ToastShow("用户名可用");
			}
			else {
				li_tips.addClass("error-border");
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("用户名不可用");
				}
			}
		},
		error: function() {
			ToastShow("提交失败，请检查网络...");
		}
	});
}

//check email
function checkEmail() {
	var li_tips = $("#li_email");
	var value = $("#email").val();
	if (value == "") {
		ToastShow("邮箱不能为空");
		li_tips.addClass("error-border");
		return false;
	}
	else {
		li_tips.removeClass("error-border");
	}
	$.ajax({
		type: "POST",
		url: "<!--{$wapfile}-->?c=passport",
		cache: false,
		data: {a:"checkemail", email:value, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				li_tips.removeClass("error-border");
				ToastShow("邮箱可用");
			}
			else {
				li_tips.addClass("error-border");
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("邮箱不可用");
				}
			}
		},
		error: function() {
			ToastShow("提交失败，请检查网络...");
		}
	});
}
</script>
</body>
</html>
