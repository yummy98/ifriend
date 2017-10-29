<!--{assign var='menuid' value='online'}--> 
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headinc.tpl"}-->
<body>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_menu.tpl"}-->
<div id="page-index" class="page">
  <div class="ce member"> 
    <!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_search_online.tpl"}-->
    <div class="search_sort">
      <div class="search_tips">在线会员 共<span><!--{$total}--></span>人符合您的搜索条件 </div>
      <div id="rank" class="search_sort_sle"> <strong>显示方式：</strong> 

		<a class="btnc btn_c3" href="<!--{$appfile}-->?c=online&a=list<!--{if $page>1}-->&page=<!--{$page}--><!--{/if}--><!--{if !empty($urlitem)}-->&<!--{$urlitem}--><!--{/if}-->"> <span><b>头像模式</b></span> </a>&nbsp;
		<a class="btnc3 btn_c3" href="<!--{$appfile}-->?c=online&a=list<!--{if $page>1}-->&page=<!--{$page}--><!--{/if}-->&type=more<!--{if !empty($urlitem)}-->&<!--{$urlitem}--><!--{/if}-->"> <span class='h'><b>独白模式</b></span> </a> 

	  </div>
    </div>
    <div class="left men">
      <div class="content">

	    <div class="oe_user_more_list">
		  <!--{if empty($online)}-->
	      <h6>没有符合条件的信息</h6>
		  <!--{else}-->
		  <!--{foreach $online as $volist}-->
		  <dl>
		    <dt>
			  <a target="_blank" href="<!--{$volist.homeurl}-->"><img src="<!--{$volist.avatarurl}-->" /></a>
			  <p><a href="<!--{$volist.homeurl}-->" target="_blank">共有<!--{count mod='user' type='album' value=$volist.userid}-->张相片</a></p>
			<dt>
			<dd>
			  <h2>
			    <!--{if $volist.groupid > 1 && $volist.vipenddate>$time}-->
				<!--{$volist.levelimg}-->
				<!--{/if}-->
				<a target="_blank" href="<!--{$volist.homeurl}-->" class='title'><!--{$volist.username}--></a>
				<span>
				  <img src="<!--{$skinpath}-->themes/images/n/cid<!--{if $volist.idnumberrz=='0'}-->_h<!--{/if}-->.png" title="<!--{if $volist.idnumberrz=='0'}-->实名未认证<!--{else}-->已实名认证<!--{/if}-->" />
				  <img src="<!--{$skinpath}-->themes/images/n/email<!--{if $volist.emailrz=='0'}-->_h<!--{/if}-->.png" title="<!--{if $volist.emailrz==0}-->邮箱未认证<!--{else}-->已邮箱认证<!--{/if}-->" />
				  <img src="<!--{$skinpath}-->themes/images/n/video<!--{if $volist.videorz=='0'}-->_h<!--{/if}-->.png" title="<!--{if $volist.videorz=='0'}-->视频未认证<!--{else}-->已视频认证<!--{/if}-->" />
				</span>
			  </h2>
			  <p>
			    <!--{if $volist.gender=='1'}-->男<!--{else}-->女<!--{/if}-->，<!--{$volist.age}-->岁，<!--{$volist.height}-->CM，<!--{area type='text' value=$volist.provinceid}--><!--{area type='text' value=$volist.cityid}--><br><!--{$volist.monolog|filterhtml:85}-->.. 
			  </p>
			  <h3> 
			    <i class="_btn3"><a href="<!--{$volist.homeurl}-->" target="_blank">查看资料</a></i>
			    <!--{if $login.status == '0'}-->
			    <i class="_btn2" onclick="artbox_loginbox();">打招呼</i>
				<i class="_btn1" onclick="artbox_loginbox();">发信件</i>
				<!--{else}-->
			    <i class="_btn2" onclick="artbox_hi('<!--{$volist.userid}-->');">打招呼</i>
				<i class="_btn1" onclick="artbox_writemsg('<!--{$volist.userid}-->');">发信件</i>
				<!--{/if}-->
			  </h3>
			</dd>
			<div class="clear"></div>
		  </dl>
		  <!--{/foreach}-->
		  <div class="clear"></div>
		  <!--{/if}-->
		</div>

	  
	  </div>

	  <!--{if !empty($showpage)}-->
      <div class="page1">
        <div class="pagecode"><!--{$showpage}--></div>
        <div style="clear:both;"></div>
      </div>
	  <!--{/if}-->

    </div>
    <div class="right yue1">
      <h2 style="margin-top:10px;">猜你喜欢</h2>
	  <!--{include file="<!--{$tplpath}--><!--{$tplpre}-->user_80x96.tpl"}-->
      <div style="clear:both;"></div>
      <h2>热门日记</h2>
      <ul class="list_blog">
	    <!--{assign var='hotdiary' value=vo_list("mod={diary} orderby={v.hits DESC} num={15}")}-->
		<!--{foreach $hotdiary as $volist}-->
        <li><i <!--{if $volist.i<=3}--> class="current" <!--{/if}-->><!--{$volist.i}--></i><a target="_blank" href="<!--{$volist.url}-->" title="<!--{$volist.title}-->"><!--{$volist.title|filterhtml:20}--></a> </li>
		<!--{/foreach}-->
      </ul>
    </div>
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_footer.tpl"}-->
</body>
</html>