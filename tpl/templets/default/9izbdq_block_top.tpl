<div class="oe_top">
  <div class="oe_topcn">
    <div class="oe_toplogin"> 
      <!--{if $login.status == '0'}-->
      帐号：<input type="text" name="loginname" id="top_loginname" value="用户名/邮箱" />
      密码：<input type="password" name="password" id="top_password" />
      <!--{if $config.logincode == '1'}-->
      验证码：<input type="text" name="checkcode" id="top_checkcode" class="w2" style="width:40px;" maxlength="6" />
      <img src="<!--{$urlpath}-->source/include/imagecode.php?act=verifycode" id="top_codeimg" style="vertical-align:middle;" />
      <!--{/if}-->
	  &nbsp;
      <input type="button" value="登 录" class="login_button" id="but_top_submit" />
	  &nbsp;
      <a href="<!--{$appfile}-->?c=passport&a=reg" style="color:red;">点此注册</a>&#12288;
	  <a href="<!--{$appfile}-->?c=passport&a=forget" style="color:#0066cf;">忘记密码?</a>
    
		<!--{assign var='connectlist' value=vo_list("mod={connect}")}-->
		<!--{if !empty($connectlist)}-->
		<!--{foreach $connectlist as $volist}-->&nbsp;
		<a rel="nofollow" href="<!--{$volist.apiurl}-->"><img src="<!--{$volist.logo}-->" title=" <!--{$volist.authname}-->" /></a>
		<!--{/foreach}-->
		<!--{/if}-->
      <!--{else}--> 
      欢迎您：
      <!--{if !empty($login.info.levelimg)}-->
      <!--{$login.info.levelimg}--><!--{$login.username}-->(ID:<!--{$login.userid}-->) <span><!--{$login.info.groupname}--></span>
      <!--{else}-->
      <!--{$u.levelimg}--><!--{$login.username}-->(ID:<!--{$login.userid}-->) <span><!--{$u.groupname}--></span>
      <!--{/if}-->
	  <!--{if $login.info.integrity == "0"}-->
	  <a href="<!--{$urlpath}-->index.php?c=passport&a=perfect">点击这里激活帐号</a>&nbsp;&nbsp;
	  <a href="<!--{$urlpath}-->index.php?c=passport&a=logout">退出登录</a> 
	  <!--{else}-->
      <a href="<!--{$urlpath}-->usercp.php">会员中心</a> | <a href="<!--{$urlpath}-->index.php?c=home&uid=<!--{$login.userid}-->">我的主页</a> | <a href="<!--{$urlpath}-->index.php?c=passport&a=logout">退出登录</a> 
	  <!--{/if}-->
      &#12288;
      <a href="<!--{$urlpath}-->usercp.php?c=vip">升级会员</a> &#12288;<a href="<!--{$urlpath}-->usercp.php?c=payment">在线充值</a> &#12288;<a href="<!--{$urlpath}-->usercp.php?c=message">我的信件</a>&#12288;
		<!--{if $config.oeinterface.flag == '1'}-->
		<!--{if empty($login.info.oeopenid)}-->
		<a href="<!--{$urlpath}-->usercp.php?c=extend&a=connect" style="color:yellow;">绑定帐号</a>
		<!--{/if}-->
		<!--{/if}-->

      <!--{/if}--> 
    </div>
    <div class="n_tops"><span class="n_tops_1"> <a href="javascript:;" class="waptips" title="在手机浏览器输入“<!--{$config.siteurl}-->”即可访问。">手机交友</a> </span> <span class="n_tops_2"><a href="<!--{$urlpath}-->usercp.php?c=vip">会员服务</a></span> <span class="n_tops_3"><a href="###" onclick="addfavorite('<!--{$config.siteurl}-->', '<!--{$config.sitename}-->');">收藏本站</a></span>
      <div class="cc"></div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<script language="javascript">
$(function(){

	$("#top_loginname").bind("click", function(){ //帐号
		$_val = $(this).val();
		if ($_val == "用户名/邮箱") {
			$(this).val("");
		}
	});

	$("#top_codeimg").bind("click", function(){ //验证码
		$(this).attr("src", "<!--{$urlpath}-->source/include/imagecode.php?act=verifycode&"+Math.random());
	});

	$("#but_top_submit").bind("click", function(){ //注册
		$_loginname = $("#top_loginname").val();
		$_password = $("#top_password").val();
		$_checkcode = "";

		if ($_loginname == "" || $_loginname == "用户名/邮箱") {
			alert("请填写登录帐号");
			return false;
		}
		if ($_password.length == 0) {
			alert("请填写登录密码");
			return false;
		}
		<!--{if $config.logincode=='1'}-->
		$_checkcode = $("#top_checkcode").val();
		if ($_checkcode.length == 0) {
			alert("请填写验证码");
			return false;
		}
		<!--{/if}-->
		
		$forward = "<!--{$forward}-->";
		if ($forward.length == 0) {
			$forward = "<!--{$urlpath}-->";
		}
		$.ajax({
			type: "POST",
			url: _ROOT_PATH+"index.php?c=passport",
			cache: false,
			data: {a:"loginpost", loginname:$_loginname, password:$_password, checkcode:$_checkcode, fromhalt:"ajax", r:get_rndnum(8)},
			dataType: "json",
			success: function($data) {
				$json = eval($data);
				$response = $json.response;
				$result = $json.result;
				if ($response == "1") {
					window.location.href = $forward;
				}
				else if ($response == "2") {
					window.top.location.href = $result;
				}
				else {
					if ($result.length > 0) {
						alert($result);
					}
					else {
						alert("登录失败，请检查帐号和密码");
					}
				}
			},
			error: function() {
				alert("登录失败，请检查帐号和密码");
			}
		});


	});

});
</script>