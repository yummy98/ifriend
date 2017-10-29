<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headinc.tpl"}-->
<body>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_menu.tpl"}-->
<div id="page-index" class="page">
  <div class="ce reg">
    <div class="left">
      <div class="loginbox">

        <div class="log_box">
            <div class="form_li  desc">登录网站</div>
            <div class="formtip">
              <p id="login_error_msg" class="color5"></p>
            </div>
            <div class="form_li pas">
              <label class="lo_la">帐&#12288;号：</label>
              <input type="text" name="loginname" id="loginname" value="用户名/邮箱" class="w1" />
            </div>
            <div class="form_li pas">
              <label class="lo_la">密&#12288;码：</label>
              <input type="password" name="password" id="password" class="w1" />
            </div>
			<!--{if $config.logincode == '1'}-->
            <div class="form_li pas">
              <label class="lo_la">验证码：</label>
              <input type="text" id="checkcode" name="checkcode" class="w2" />
			  <img id="codeimg" src="<!--{$urlpath}-->source/include/imagecode.php?act=verifycode" align="middle" />
			  <a href="javascript:refreshCode();"> 换一张</a>
            </div>
			<!--{/if}-->
            <div class="form_li">
			  <a class="btn_a1" href="javascript:;">
			  <button class="login_register" id="but_login">登  录</button>
              </a><a href="<!--{$urlpath}-->index.php?c=passport&a=forget">忘记密码</a>
			</div>
        </div>

        <div class="cooperation">
          <p class="login_list clearfix color3">
		    <span class="li_d">·</span>没有账号？
			<a class="no_ico" href="<!--{$urlpath}-->index.php?c=passport&a=reg">立即注册</a><br>
            <span class="li_d" style='display:none;'>·用合作网站账号登录</span>
			<!--{assign var='connect' value=vo_list("mod={connect}")}-->
			<!--{foreach $connect as $volist}-->
			<a href="<!--{$volist.apiurl}-->"><img src="<!--{$volist.logo}-->" /><!--{$volist.authname}--></a>
			<!--{/foreach}-->
		  </p>
        </div>

      </div>
    </div>
    <div class="right"> 
	  <a class="login" href="<!--{$urlpath}-->index.php?c=passport&a=reg">没有账号？点击注册&gt;&gt;</a>
	  <!--{include file="<!--{$tplpath}--><!--{$tplpre}-->passport_tips.tpl"}-->
    </div>
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_footer.tpl"}-->

<script language="javascript">
$(function(){

	$("#loginname").bind("click", function(){ //帐号
		$_val = $(this).val();
		if ($_val == "用户名/邮箱") {
			$(this).val("");
		}
	});

	$("#codeimg").bind("click", function(){ //验证码
		$(this).attr("src", "<!--{$urlpath}-->source/include/imagecode.php?act=verifycode&"+Math.random());
	});

	$("#but_login").bind("click", function(){ //注册
		$_loginname = $("#loginname").val();
		$_password = $("#password").val();
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
		$_checkcode = $("#checkcode").val();
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
			data: {a:"loginpost", loginname:$_loginname, password:$_password, checkcode:$_checkcode, forward:$forward, fromhalt:"ajax", r:get_rndnum(8)},
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
</body>
</html>