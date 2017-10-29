<!--{assign var="menu_id" value="cp"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->

<div class="cp-layout-body">

  <div class="cp-data">
    <div class="cp-data-avatar">
	  <!--{if !empty($login.info.avatar)}-->
	  <img id="img_preview" src="<!--{$urlpath}--><!--{$login.info.avatar}-->" />
	  <!--{else}-->
	  <img id="img_preview" src="<!--{$login.info.avatarurl}-->" />
	  <!--{/if}-->
	  <i>
		<!--{if $login.info.avatarflag == '-2'}-->
		待审核
		<!--{elseif $login.info.avatarflag == '-1'}-->
		未通过
		<!--{elseif $login.info.avatarflag == '1'}-->
		已通过
		<!--{else}-->
		点击上传
		<!--{/if}-->
	  </i>
	</div>
	<div class="cp-data-info">
	  <h2>
	  <span class="user-name"><!--{$login.info.username}--></span>
	  <span class="<!--{if $login.info.mobilerz == '1'}-->rz-mobile<!--{else}-->rz-mobile-n<!--{/if}--> rz-line-30"></span>
	  <span class="<!--{if $login.info.emailrz == '1'}-->rz-email<!--{else}-->rz-email-n<!--{/if}--> rz-line-30"></span>
	  </h2>
	  <ul>
	    <li>
		  <!--{$login.info.age}-->岁 <!--{if $login.info.gender=='1'}-->男<!--{elseif $login.info.gender=='2'}-->女<!--{/if}--> 
		  <!--{area type="text" value=$login.info.provinceid}--> 
		  <!--{area type="text" value=$login.info.cityid}--> 
		  <!--{area type="text" value=$login.info.distid}-->
		</li>
		<li>
		  <!--{$login.info.astro}--> 
		  <!--{hook mod="var" item="marrystatus" type="text" value=$login.info.marrystatus}--> 
          <!--{hook mod="var" item="jobs" type="text" value=$login.info.jobs}-->
		</li>
	  </ul>
	  <div class="clear"></div>
	</div>
	<div class="clear"></div>
  </div><!--//cp-data End-->


  <div class="oe_uploadimg_layout" style="display:none;">
    <div class="_img_layout_lt">本地头像：</div>
	<div class="_img_layout_rt">
	  <div class="oe_img_upload">
		<label class="_uploadbtn">上传头像<input type="file" name="img" id="img" value="" /></label>
		<label class="_uploading" id="img_loading">
		  <img src="<!--{$wapskin}-->images/loading.gif" />上传中...
		</label>
		<input type="hidden" id="img_thumb" name="img_thumb" value="" />
		<input type="hidden" id="img_url" name="img_url" value="" />
	  </div>
	</div>
	<div class="clear"></div>
  </div>
  <script type="text/javascript">
  $(function(){
	$("#img_preview").click(function(){
		if ($(".oe_uploadimg_layout").css("display") == "none") {
			$(".oe_uploadimg_layout").show();
		}
		else {
			$(".oe_uploadimg_layout").hide();
		}
	});
	$("#img").live("change", function(){
		oeloveUploadImg("img", "<!--{$wapfile}-->?c=cp&a=upladimg");
	});
  });
  </script>
  <div class="cp-data-tips">
    可用金币：<font color="green"><!--{$login.info.money}--></font>
  </div>
</div>


<div class="cp-layout-body-gray">
  <div class="cp-index-bar">
    <ul>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_buy');"><i class="mob_icon_01"></i>购买特权<span><!--{$login.info.groupname}--></span></li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_photo');"><i class="mob_icon_02"></i>我的相片</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_info');"><i class="mob_icon_03"></i>修改资料</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_cond');"><i class="mob_icon_04"></i>征友条件</li>
	  <!--{if $login.group.view.viewmatch == "1"}-->
	  <li style="border-bottom:none;" onclick="goUrl('<!--{$wapfile}-->?c=cp_match');"><i class="mob_icon_09"></i>缘分速配</li>
	  <!--{else}-->
	  <li style="border-bottom:none;" onclick="needBuyVip();"><i class="mob_icon_09"></i>缘分速配<div class="cp-vip-lock"></div></li>
	  <!--{/if}-->
	</ul>
	<div class="clear"></div>
  </div>

  <div class="cp-index-bar" style="margin-top:20px;">
	<ul>
	  <!--{assign var="cp_newmsg" value=<!--{count mod='user' type='newmessage' value=$login.info.userid}-->}-->
	  <!--{assign var="cp_newhi" value=<!--{count mod='user' type='newhi' value=$login.info.userid}-->}-->
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_message');"><i class="mob_icon_05"></i>我的信件<!--{if $cp_newmsg>0}--><span><!--{$cp_newmsg}--></span><!--{/if}--></li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_inhi');"><i class="mob_icon_06"></i>收到问候<!--{if $cp_newhi>0}--><span><!--{$cp_newhi}--></span><!--{/if}--></li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_listen');"><i class="mob_icon_07"></i>我的关注</li>
	  <!--{if $login.group.view.viewvisitor == "1"}-->
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_visitme');" style="border-bottom:none;"><i class="mob_icon_08"></i>谁看过我</li>
	  <!--{else}-->
	  <li onclick="needBuyVip();" style="border-bottom:none;"><i class="mob_icon_08"></i>谁看过我
	  <div class="cp-vip-lock"></div>
	  </li>
	  <!--{/if}-->
	</ul>
	<div class="clear"></div>
  </div>


  <div class="cp-index-bar" style="margin-top:20px;">
	<ul>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp_money');">&#12288;消费记录</li>
	  <li onclick="goUrl('<!--{$wapfile}-->?c=cp&a=editpwd');" style="border-bottom:none;">&#12288;修改密码</li>
	</ul>
	<div class="clear"></div>
  </div>

  <div class="spanbtn0" style="margin-top:15px;margin-bottom:15px;" id="btn_logout" onclick="goUrl('<!--{$wapfile}-->?c=passport&a=logout');">退出登录</div>
</div>
<script type="text/javascript">
//跳到购买中心
function needBuyVip() {
	ToastShow("没有使用特权，请购买会员等级。");
	setTimeout(function(){
		goUrl("<!--{$wapfile}-->?c=cp_buy");
	}, 1000);
}
</script>

<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</body>
</html>
