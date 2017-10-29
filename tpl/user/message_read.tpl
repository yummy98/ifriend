<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="message"}-->
<style type="text/css">
.box-main{padding:10px;}
.box-dialog-left{float:left;width:120px;}
.box-dialog-left .user-img{padding:5px; border:1px solid #dddddd;width:100px;height:120px;display:block}
.box-dialog-left .user-info {padding:5px;text-align:center;line-height:22px;}
.box-dialog-left p{line-height:25px;}
.box-dialog-left p img{vertical-align:center;}

.box-dialog-right {float:left;margin-left:10px;width:610px;}
.box-dialog-right .dialog-tips {margin-bottom:5px;border-bottom:1px solid #ddd;height:30px;line-height:30px;}
.box-dialog-right .dialog-tips-l {width:100px;height:20px;line-height:20px;float:left;}
.box-dialog-right .dialog-tips-r {margin-left:10px;height:20px;line-height:20px;float:left;}
.box-dialog-right. p {padding-left:10px;line-height:20px;}

.box-dialog-kdmsg {
	width:98%;margin-top:10px;
    background: url("<!--{$ucpath}-->images/line_cont.jpg") repeat scroll 0 0 transparent;
    border: 0 none;
    min-height: 150px;
    line-height:30px;
	font-size:100%;
	color:#666666;
	overflow:auto;
}
.box-dialog-button{float:right; margin-top:20px;margin-right:20px;}
</style>
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 收件箱</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->
  <div class="main_right">
    <!--TAB BEGIN-->
    <div class="tab_list">
	  <div class="tab_nv">
	    <ul>
		  <li class="tab_item current"><a href="<!--{$ucfile}-->?c=message">会员来信</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=outmsg">已发信件</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=hi">收到问候</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=hi&a=to">已发问候</a></li>
		  <li class="tab_item"><a href="<!--{$ucfile}-->?c=sysmsg">系统信件</a></li>
	    </ul>
	  </div>
    </div>
	<!--TAB END-->
	<div class="div_smallnav_content_hover">
	  
	  <!--{if $a eq 'read'}-->
	  <div class="nav-tips">
	    <div class="span"><a href="<!--{$ucfile}-->?c=message&<!--{$comeurl}-->">返回信件列表</a></div>
	    筛选排序：
	    <img src="<!--{$ucpath}-->images/tips-msg01.gif" /><a href="<!--{$ucfile}-->?c=message&type=unread">未读信件</a> &nbsp;&nbsp;&nbsp;
	    <img src="<!--{$ucpath}-->images/tips-msg02.gif" /><a href="<!--{$ucfile}-->?c=message&type=read">已读信件</a>&nbsp;&nbsp;&nbsp;
	  </div>

		<div class="box-main">
		  <div class="box-dialog-left fl">
			<div class="user-img">
			  <a href="<!--{$message.frominfo.homeurl}-->" target="_blank"><img width="100" height="120" border="0" src="<!--{$message.frominfo.avatarurl}-->" /></a>
			</div>
			<div class="user-info">
			<!--{if $message.frominfo.gender=='1'}-->男<!--{else}-->女<!--{/if}--> 
			  <!--{hook mod='var' item='marrystatus' type='text' value=$message.frominfo.marrystatus}--> 
			  <!--{$message.frominfo.age}--> 岁<br />
			  <!--{area type='text' value=$message.frominfo.provinceid}--> <!--{area type='text' value=$message.frominfo.cityid}--><br />
			  <!--{hook mod='var' item='education' type='text' value=$message.frominfo.education}--> <!--{$message.frominfo.height}-->CM
			</div>
			<p>
			</p>
		  </div>
		  <div class="box-dialog-right fl">
		    <div class="dialog-tips" style="border:none;">
			  <span style="float:right;" id="tips_listen_<!--{$message.fromuserid}-->"><script>obj_listen_status('<!--{$message.fromuserid}-->', 'tips_listen_<!--{$message.fromuserid}-->');</script></span>
			  <span style="float:right;"></span>
			</div>
			<div class="dialog-tips">
			  <span style="float:right;color:#999999;">来信时间：<!--{$message.sendtime|date_format:"%Y-%m-%d %H:%M"}--></span>
			  阅读“<b><!--{$message.frominfo.username}--></b>”的来信
			</div>

			<div class="box-dialog-kdmsg">
			  <!--{$message.content|nl2br}-->
			</div>
				
			<div class="box-dialog-button">
			  <a href='###' onclick="artbox_writemsg('<!--{$message.fromuserid}-->');" class="letter-button7"></a>
			</div>
			<div class="clear"></div>
			<p>
			</p>

		  </div>
		  <div class="clear"></div>
		</div>



	  <!--{/if}-->

	</div>
	<div class="clear"></div>
	<!--//div_smallnav_content_hover End-->
  </div>
  <div class="clear"></div>
  <!--//main_right End-->
  
  <div class="right_kj" id="kj_box">
    <ul>
      <li><a href="<!--{$ucfile}-->?c=message">会员来信</a></li>
      <li><a href="<!--{$ucfile}-->?c=outmsg">已发信件</a></li>
	  <li><a href="<!--{$ucfile}-->?c=hi">收到问候</a></li>
	  <li><a href="<!--{$ucfile}-->?c=hi&a=to">已发问候</a></li>
	  <li><a href="<!--{$ucfile}-->?c=sysmsg">系统信件</a></li>
    </ul>
  </div>
  <div style="margin: 30px;"></div>
  <!--//right_kj End-->
  
</div>
<!--//user_main End-->

<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}-->
</body>
</html>