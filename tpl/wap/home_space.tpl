<!--{assign var="menu_id" value=""}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->
<script src="<!--{$wapskin}-->js/jquery.scrollTo.js"></script>
<script src="<!--{$wapskin}-->js/photo.preview.min.js"></script>
<link rel="stylesheet" href="<!--{$wapskin}-->style/photopreview_OELOVE26FL319L.css" />
<script src="<!--{$wapskin}-->js/oecredit.js"></script>

<div class="home-info-layout" style="position:relative;">
  <div class="img-box"><img src="<!--{$home.avatarurl}-->" /></div>
  <div class="name-box">
    <h2>
      <span class="user-name"><!--{$home.username}--></span>
	  <span class="<!--{if $home.mobilerz == '1'}-->rz-mobile<!--{else}-->rz-mobile-n<!--{/if}--> rz-line-25"></span>
	  <span class="<!--{if $home.emailrz == '1'}-->rz-email<!--{else}-->rz-email-n<!--{/if}--> rz-line-25"></span>
	</h2>
	<p><!--{$home.age}-->岁|<!--{if $home.gender==1}-->男<!--{else}-->女<!--{/if}-->|<!--{area type='text' value=$home.provinceid}--> <!--{area type='text' value=$home.cityid}--></p>
	<p><!--{$home.astro}--> <!--{hook mod='var' item='marrystatus' type='text' value=$home.marrystatus}--> <!--{hook mod='var' item='education' type='text' value=$home.education}--> <!--{if $home.height > 0}--><!--{$home.height}-->CM<!--{/if}--></p>
	<p>会员等级：<!--{$home.levelimg}--></p>
  </div>
  <div class="clear"></div>

  <div class="oe_idsearch">
	<span f="but_check_credit" data-uid="<!--{$home.userid}-->">诚信查询</span>
	<div class="oe_id_box" id="id_credit_box">
	  <dl>
		<dt>查询<!--{if $home.gender == '1'}-->他<!--{else}-->她<!--{/if}-->的诚信<em></em></dt>
		<dd id="id_credit_contacts">
		</dd>
	  </dl>
	</div>
  </div>
  <!--//oe_idsearch End 2016.06.15-->

</div>
<div class="home-time">
    最后登录时间：
  	<!--{if $login.status == '0'}-->
	  <span onclick="goUrl('<!--{$wapfile}-->?c=passport&a=login');">登录可见</span>
	<!--{else}-->
		<!--{if $login.userid == $home.userid}-->
			<!--{$home.logintime|date_format:"%Y-%m-%d"}-->
		<!--{else}-->
			<!--{if $login.group.view.viewlogintime == '1'}-->
			<!--{$home.logintime|date_format:"%Y-%m-%d"}-->
			<!--{else}-->
			<span onclick="goUrl('<!--{$wapfile}-->?c=cp_buy');">特权套餐可见</span>
			<!--{/if}-->
		<!--{/if}-->
	<!--{/if}-->
</div>

<!--{if $login.status == "0"}-->
<div class="home-tac">
  <ul>
    <li onclick="goUrl('<!--{$wapfile}-->?c=passport&a=login');">打招呼</li>
	<li onclick="goUrl('<!--{$wapfile}-->?c=passport&a=login');">写信件</li>
	<li onclick="goUrl('<!--{$wapfile}-->?c=passport&a=login');" style="border-right:none;">加关注</li>
  </ul>
  <div class="clear"></div>
</div>
<!--{else}-->
<!--{if $login.userid != $home.userid}-->
<div class="home-tac">
  <ul>
    <li id="act_hi">打招呼</li>
	<li id="act_message">写信件</li>
	<li id="tip_listen" style="border-right:none;">
	  <!--{if true === $listenstatus}-->
	  <span onclick="cancelListen();">取消关注</span>
	  <!--{else}-->
	  <span onclick="addToListen();">加关注</span>
	  <!--{/if}-->
	</li>
  </ul>
  <div class="clear"></div>
</div>
<!--{/if}-->
<!--{/if}-->
<script type="text/javascript">
$(function(){
	var loginstatus = "<!--{$login.status}-->";
	$("#act_hi").click(function(){ //打招呼
		if (loginstatus == "0") {
			goUrl("<!--{$wapfile}-->?c=passport&a=login");
			return false;
		}
		else {
			$.ajax({
				type: "POST",
				url: "<!--{$wapfile}-->?c=cp_do",
				cache: false,
				data: {a:"hi", touid:"<!--{$home.userid}-->", r:"<!--{$time}-->"},
				dataType: "json",
				success: function(data) {
					var json = eval(data);
					var response = json.response;
					var result = json.result;
					if (response == '1') {
						ToastShow("发送成功");
					}
					else {
						if (result.length > 0) {
							ToastShow(result);
						}
						else {
							ToastShow("发送失败");
						}
					}
				},
				error: function() {
					ToastShow("操作失败，请检查网络状态。");
				}
			});
		}
	});


	$("#act_message").click(function(){ //写信件
		if (loginstatus == "0") {
			goUrl("<!--{$wapfile}-->?c=passport&a=login");
			return false;
		}
		else {
			goUrl("<!--{$wapfile}-->?c=cp_do&a=writemsg&touid=<!--{$home.userid}-->");
		}
	});
});

function addToListen() { //加入关注
	$.ajax({
	type: "POST",
	url: "<!--{$wapfile}-->?c=cp_do",
	cache: false,
	data: {a:"listen", touid:"<!--{$home.userid}-->", r:get_rndnum(8)},
	dataType: "json",
	success: function(data) {
		var json = eval(data);
		var response = json.response;
		var result = json.result;
		if (response == '1') {
			ToastShow("关注成功");
			$("#tip_listen").html("<span onclick='cancelListen();'>取消关注</span>");
		}
		else {
			if (result.length > 0) {
				ToastShow(result);
			}
			else {
				ToastShow("关注失败");
			}
		}
	},
	error: function() {
			ToastShow("操作失败，请检查网络状态。");
		}
	});
}

function cancelListen() { //取消关注
	$.ajax({
	type: "POST",
	url: "<!--{$wapfile}-->?c=cp_do",
	cache: false,
	data: {a:"dellisten", touid:"<!--{$home.userid}-->", r:"<!--{$time}-->"},
	dataType: "json",
	success: function(data) {
		var json = eval(data);
		var response = json.response;
		var result = json.result;
		if (response == '1') {
			ToastShow("取消成功");
			$("#tip_listen").html("<span onclick='addToListen();'>加关注</span>");
		}
		else {
			if (result.length > 0) {
				ToastShow(result);
			}
			else {
				ToastShow("取消成功");
			}
		}
	},
	error: function() {
			ToastShow("操作失败，请检查网络状态。");
		}
	});
}

</script>



<!--{assign var='album' value=vo_list("mod={album} where={v.userid='<!--{$home.userid}-->'} num={1000}")}-->
<!--{if !empty($album)}-->
<script type="text/javascript">
var photo_area_width = <!--{count($album)}-->*92;
$(function(){
	$(".photograph-list").css("width", photo_area_width+"px");
	photoCrollLoaded();
});
function photoCrollLoaded() {
	new iScroll("photograph_shop", {hScrollbar:false, vScrollbar:false});
}
//document.addEventListener('DOMContentLoaded', photoCrollLoaded, false);
</script> 
<div class="home-album-box" id="photograph_shop">
  <ul class="photograph-list">
    <!--{foreach $album as $volist}-->
    <li>
	  <a href="<!--{$volist.uploadfiles}-->">
	  <img src="<!--{$volist.thumbfiles}-->" />
	  </a>
	</li>
	<!--{/foreach}--> 
  </ul>
  <div class="clear"></div>
  <!--{if $login.status == "0"}-->
    <div class="home-album-mask">
      <p onclick="goUrl('<!--{$wapfile}-->?c=passport&a=login');">点击登录查看相册</p>
    </div>
  <!--{else}-->
    <!--{if $login.userid != $home.userid}-->
    <!--{if $login.info.avatarflag != '1'}-->
    <div class="home-album-mask">
      <p onclick="goUrl('<!--{$wapfile}-->?c=cp');">您没上传头像，不能查看相册。</p>
    </div>
    <!--{/if}-->
    <!--{/if}-->
  <!--{/if}-->
</div>
<script type="text/jscript">
$(document).ready(function() {
    $('.home-album-box').magnificPopup({
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
			titleSrc: function(item) {
				//return item.el.attr('title') + '<small></small>';
			}
		}
	});

});
</script>
<!--{/if}-->
<!--//album End-->


<div class="home-data">
  
  <!--{if !empty($home.monolog) && $home.molstatus == '1'}-->
  <div class="home-wrap">
    <h2>内心独白</h2>
	<div class="home-itemlist">
	  <p><!--{$home.monolog}--></p>
	</div>
  </div>
  <!--{/if}-->

  <!--{if $config.showhomecontact == '1'}-->
  <div class="home-wrap">
    <h2>联系方式</h2>
	<!--{if $home.privacy == '4'}-->
	<div class="home-itemlist">
    <p style="padding:10px;text-align:center;">会员设置了保密</p>
	</div>
    <!--{else}-->
	<!--{if $login.group.view.viewcontact == '1'}-->
	<div class="home-itemlist">
	  <ul>
	    
		<!--{if $login.group.view.viewemail == '1'}-->
		<li>
		  邮箱：
		  <span>
			<!--{if empty($home.email)}-->未填写<!--{else}--><!--{$home.email}--><!--{/if}-->
		  </span> 
		</li>
		<!--{/if}-->

		<!--{if $login.group.view.viewmobile == '1'}-->
		<li>
		  手机：
		  <span>
			<!--{if empty($home.mobile)}-->未填写<!--{else}--><!--{$home.mobile}--><!--{/if}-->
		  </span> 
		</li>
		<!--{/if}-->
		
		<!--{if $login.group.view.viewqq == '1'}-->
		<li>
		  QQ号：
		  <span>
			<!--{if empty($home.qq)}-->未填写<!--{else}--><!--{$home.qq}--><!--{/if}-->
		  </span> 
		</li>
		<!--{/if}-->
		
		<!--{if $login.group.view.viewmsn == '1'}-->
		<li>
		  微信：
		  <span>
			<!--{if empty($home.msn)}-->未填写<!--{else}--><!--{$home.msn}--><!--{/if}-->
		  </span>
		</li>
		<!--{/if}-->
	  </ul>
	  <div class="clear"></div>
	</div>
	<!--{else}-->
	<div class="home-itemlist">
	  <p style="padding:10px;text-align:center;" onclick="goUrl('<!--{$wapfile}-->?c=cp_buy');">VIP可见</p>
	</div>
	<!--{/if}-->

	<!--{/if}-->
  </div>
  <!--{/if}-->



  <div class="home-wrap">
    <h2>择友要求</h2>
	<div class="home-itemlist">
	  <ul>
	    <li>会员性别：<span><!--{if $cond.gender=='1'}-->男<!--{else if $cond.gender=='2'}-->女<!--{else}-->不限<!--{/if}--></span></li>
		<li>照片要求：<span><!--{if $cond.avatar=='1'}-->有照片<!--{else}-->不限<!--{/if}--></span></li>
		<li>年龄要求：<span><!--{if $cond.startage=='0'}-->不限<!--{else}--><!--{$cond.startage}-->~<!--{$cond.endage}-->岁<!--{/if}--></span></li>
		<li>身高要求：<span><!--{if $cond.startheight=='0'}-->不限<!--{else}--><!--{$cond.startheight}-->~<!--{$cond.endheight}-->CM<!--{/if}--></span></li>
		<li>类型要求：<span><!--{if empty($cond.lovesort)}-->不限<!--{else}--><!--{hook mod='lovesort' type='multi' value=$cond.lovesort}--><!--{/if}--></span></li>
		<li>婚史要求：<span><!--{if empty($cond.marry)}-->不限<!--{else}--><!--{hook mod='var' type='multi' item='marrystatus' value=$cond.marry}--><!--{/if}--></span></li>
		<li>学历要求：<span><!--{if $cond.startedu == '0'}-->不限<!--{else}--><!--{area type='text' value=$home.startedu}-->~<!--{area type='text' value=$home.endedu}--><!--{/if}--></span></li>
		<li style="border-bottom:none;">地区要求：<span>
		<!--{assign var='i' value=false}-->
		<!--{foreach $cond.bulidarea as $volist}-->
		<!--{if $volist.city>0}-->
		<!--{assign var='i' value=true}-->
		<!--{area type='text' value=$volist.province}--> <!--{area type='text' value=$volist.city}--><br />
		<!--{/if}-->
		<!--{/foreach}-->
		<!--{if false === $i}-->
		不限
		<!--{/if}-->
		</span></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

  <div class="home-wrap">
    <h2>基本资料</h2>
	<div class="home-itemlist">
	  <ul>
		<li>交友ID：<span><!--{$home.userid}--></span></li>
		<li>婚姻：<span><!--{hook mod='var' item='marrystatus' type='text' value=$home.marrystatus}--> </span></li>
		<li>星座：<span><!--{$home.astro}--></span></li>
		<li>生肖：<span><!--{$home.lunar}--></span></li>
		<li>血型：<span><!--{if $home.blood=="0"}-->未填写<!--{else}--><!--{hook mod='var' type='text' item='blood' value=$home.blood}--><!--{/if}--></span></li>
		<li>学历：<span><!--{if $home.education == '0'}-->未填写<!--{else}--><!--{hook mod='var' item='education' type='text' value=$home.education}--><!--{/if}--></span></li>
		<li>民族：<span><!--{if $home.national == '0'}-->未填写<!--{else}--><!--{hook mod='var' type='text' item='national' value=$home.national}--><!--{/if}--></span></li>
		<li>出生地：<span><!--{if $home.nationprovinceid == 0}-->未填写<!--{else}--><!--{hometown type='text' value=$home.nationprovinceid}--> <!--{hometown type='text' value=$home.nationcityid}--><!--{/if}--></span></li>
		<li>居住情况：<span><!--{if $home.housing==0}-->未填写<!--{else}--><!--{hook mod='var' item='housing' type='text' value=$home.housing}--><!--{/if}--></span></li>
		<li style="border-bottom:none;">购车情况：<span><!--{if $home.caring==0}-->未填写<!--{else}--><!--{hook mod='var' type='text' item='caring' value=$home.caring}--><!--{/if}--></span></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

  <div class="home-wrap">
    <h2>生活资料</h2>
	<div class="home-itemlist">
	  <ul>
		<li>家中排行：<span><!--{if $home.tophome==0}-->未填写<!--{else}--><!--{hook mod='var' item='tophome' type='text' value=$home.tophome}--><!--{/if}--></span></li>
		<li>最大消费：<span><!--{if $home.consume==0}-->未填写<!--{else}--><!--{hook mod='var' item='consume' type='text' value=$home.consume}--><!--{/if}--></span></li>
		<li>是否吸烟：<span><!--{if $home.smoking==0}-->未填写<!--{else}--><!--{hook mod='var' item='smoking' type='text' value=$home.smoking}--><!--{/if}--></span></li>
		<li>是否喝酒：<span><!--{if $home.drinking==0}-->未填写<!--{else}--><!--{hook mod='var' item='drinking' type='text' value=$home.drinking}--><!--{/if}--></span></li>
		<li>宗教信仰：<span><!--{if $home.faith==0}-->未填写<!--{else}--><!--{hook mod='var' item='faith' type='text' value=$home.faith}--><!--{/if}--></span></li>
		<li>锻炼习惯：<span><!--{if $home.workout==0}-->未填写<!--{else}--><!--{hook mod='var' item='workout' type='text' value=$home.workout}--><!--{/if}--></span></li>
		<li style="border-bottom:none;">作息习惯：<span><!--{if $home.rest==0}-->未填写<!--{else}--><!--{hook mod='var' item='rest' type='text' value=$home.rest}--><!--{/if}--></span></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

  <div class="home-wrap">
    <h2>性格外貌</h2>
	<div class="home-itemlist">
	  <ul>
		<li>个性描述：<span><!--{if $home.personality==0}-->未填写<!--{else}--><!--{hook mod='var' item='personality' type='text' value=$home.personality}--><!--{/if}--></span></li>
		<li>相貌自评：<span><!--{if $home.profile==0}-->未填写<!--{else}--><!--{hook mod='var' item='profile' type='text' value=$home.profile}--><!--{/if}--></span></li>
		<li>体&#12288;&#12288;重：<span><!--{if $home.weight==0}-->未填写<!--{else}--><!--{$home.weight}--> (KG)<!--{/if}--></span></li>
		<li>体&#12288;&#12288;型：<span><!--{if $home.bodystyle==0}-->未填写<!--{else}--><!--{hook mod='var' item='bodystyle' type='text' value=$home.bodystyle}--><!--{/if}--></span></li>
		<li>魅力部位：<span><!--{if $home.charmparts==0}-->未填写<!--{else}--><!--{hook mod='var' item='charmparts' type='text' value=$home.charmparts}--><!--{/if}--></span></li>
		<li>发&#12288;&#12288;型：<span><!--{if $home.hairstyle==0}-->未填写<!--{else}--><!--{hook mod='var' item='hairstyle' type='text' value=$home.hairstyle}--><!--{/if}--></span></li>
		<li>发&#12288;&#12288;色：<span><!--{if $home.haircolor==0}-->未填写<!--{else}--><!--{hook mod='var' item='haircolor' type='text' value=$home.haircolor}--><!--{/if}--></span></li>
		<li style="border-bottom:none;">脸&#12288;&#12288;型：<span><!--{if $home.facestyle==0}-->未填写<!--{else}--><!--{hook mod='var' item='facestyle' type='text' value=$home.facestyle}--><!--{/if}--></span></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

  <div class="home-wrap">
    <h2>学习工作</h2>
	<div class="home-itemlist">
	  <ul>
		<li>职&#12288;&#12288;业：<span><!--{if $home.jobs==0}-->未填写<!--{else}--><!--{hook mod='var' item='jobs' type='text' value=$home.jobs}--><!--{/if}--></span></li>
		<li>公司类型：<span><!--{if $home.companytype==0}-->未填写<!--{else}--><!--{hook mod='var' item='companytype' type='text' value=$home.companytype}--><!--{/if}--></span></li>
		<li>收入描述：<span><!--{if $home.income==0}-->未填写<!--{else}--><!--{hook mod='var' item='income' type='text' value=$home.income}--><!--{/if}--></span></li>
		<li>工作状况：<span><!--{if $home.workstatus==0}-->未填写<!--{else}--><!--{hook mod='var' item='workstatus' type='text' value=$home.workstatus}--><!--{/if}--></span></li>
		<li>所学专业：<span><!--{if $home.specialty==0}-->未填写<!--{else}--><!--{hook mod='var' item='specialty' type='text' value=$home.specialty}--><!--{/if}--></span></li>
		<li style="border-bottom:none;">语言能力：<span><!--{if $home.language==''}-->未填写<!--{else}--><!--{hook mod='var' item='language' type='multi' value=$home.language}--><!--{/if}--></span></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

  <div class="home-wrap">
    <h2>爱情规划</h2>
	<div class="home-itemlist">
	  <ul>
		<li>最大消费：<span><!--{if $home.consume=='0'}-->未填写<!--{else}--><!--{hook mod='var' item='consume' type='text' value=$home.consume}--><!--{/if}--></span></li>
		<li>制造浪漫：<span><!--{if $home.romantic=='0'}-->未填写<!--{else}--><!--{hook mod='var' item='romantic' type='text' value=$home.romantic}--><!--{/if}--></span></li>
		<li>是否要小孩：<span><!--{if $home.havechildren=='0'}-->未填写<!--{else}--><!--{hook mod='var' item='havechildren' type='text' value=$home.havechildren}--><!--{/if}--></span></li>
		<li style="border-bottom:none;">与对方父母同住：<span><!--{if $home.talive=='0'}-->未填写<!--{else}--><!--{hook mod='var' item='talive' type='text' value=$home.talive}--><!--{/if}--></span></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

  <div class="home-wrap">
    <h2>兴趣爱好</h2>
	<div class="home-itemlist">
	  <ul>
		<li>喜欢的运动：<!--{if $home.sports==''}-->未填写<!--{else}--><!--{hook mod='var' item='sports' type='multi' value=$home.sports}--><!--{/if}--></li>
		<li>喜欢的食物：<!--{if empty($home.food)}-->未填写<!--{else}--><!--{hook mod='var' item='food' type='multi' value=$home.food}--><!--{/if}--></li>
		<li>喜欢的书籍：<!--{if empty($home.book)}-->未填写<!--{else}--><!--{hook mod='var' item='book' type='multi' value=$home.book}--><!--{/if}--></li>
		<li>喜欢的电影：<!--{if empty($home.film)}-->未填写<!--{else}--><!--{hook mod='var' item='film' type='multi' value=$home.film}--><!--{/if}--></li>
		<li>业余爱好：<!--{if empty($home.interest)}-->未填写<!--{else}--><!--{hook mod='var' item='interest' type='multi' value=$home.interest}--><!--{/if}--></li>
		<li>喜欢的旅游去处：<!--{if empty($home.travel)}-->未填写<!--{else}--><!--{hook mod='var' item='travel' type='multi' value=$home.travel}--><!--{/if}--></li>
		<li>关注的节目：<!--{if empty($home.attention)}-->未填写<!--{else}--><!--{hook mod='var' item='attention' type='multi' value=$home.attention}--><!--{/if}--></li>
		<li style="border-bottom:none;">娱乐休闲：<!--{if empty($home.leisure)}-->未填写<!--{else}--><!--{hook mod='var' item='leisure' type='multi' value=$home.leisure}--><!--{/if}--></li>
	  </ul>
	  <div class="clear"></div>
	</div>
  </div>

</div>
<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
<div class="oe_id_bigbox" id="id_credit_details">

</div>
</body>
</html>