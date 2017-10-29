<!--{assign var="menu_id" value="login"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->
<form name="login_form" id="login_form" action="<!--{$wapfile}-->?c=passport" method="post">
<input type="hidden" name="a" id="a" value="loginpost" />
<div class="layout-body">
  <div class="login-box">
    <h2>会员登录</h2>
    <ul>
	  <li style="margin-bottom:15px;">
	    <i>帐号</i>
		<input type="text" id="loginname" name="loginname" placeholder="输入用户名或者邮箱" />
	  </li>
	  <li>
	    <i>密码</i>
		<input type="password" id="password" name="password" placeholder="输入登录密码" />
	  </li>
	</ul>
	<div class="clear"></div>
  </div>
  <div class="hr-t"></div>
  <div class="spanbtn0" id="btn_login">立即登录</div>
  <div class="hr-b"></div>
  <div class="login-tips" onclick="goUrl('<!--{$wapfile}-->?c=passport&a=reg');">没有帐号？点击注册。</div>
</div>
</form>
<script type="text/javascript">
var forward = "<!--{$forward}-->";
$(function(){
	$("#btn_login").click(function(){ //登录
		var loginname = $("#loginname").val();
		var password = $("#password").val();
		if (loginname == '') {
			ToastShow("登录帐号不能为空");
			return false;
		}
		if (password == '') {
			ToastShow("登录密码不为空");
			return false;
		}
		$("#login_form").submit();
	});

});
</script>
<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</body>
</html>
