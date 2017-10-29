<!--{assign var='menuid' value='user'}--> 
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headinc.tpl"}-->
<body>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_menu.tpl"}-->
<div id="page-index" class="page">
  <div class="search_max w960 online_page">
	<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_search.tpl"}-->
    
    <div class="online_list">
    <div class="search_sort">
      <div class="search_tips"> 共<span><!--{$total}--></span>人符合您的搜索条件 </div>
      <div class="search_sort_sle" id="rank"> 
	    <strong>显示方式：</strong> 		
	    <a class="btnc btn_c3" href="<!--{$appfile}-->?c=user&a=list<!--{if $page>1}-->&page=<!--{$page}--><!--{/if}--><!--{if !empty($urlitem)}-->&<!--{$urlitem}--><!--{/if}-->"> <span class='h'><b>头像模式</b></span> </a>&nbsp;
		<a class="btnc3 btn_c3" href="<!--{$appfile}-->?c=user&a=list<!--{if $page>1}-->&page=<!--{$page}--><!--{/if}-->&type=more<!--{if !empty($urlitem)}-->&<!--{$urlitem}--><!--{/if}-->"> <span><b>独白模式</b></span> </a> 
	  </div>
    </div>
	  <!--{if empty($user)}-->
      <h6>没有符合条件的信息</h6>
	  <!--{else}-->
      <ul class="search_pic_list clearfix">
	    <!--{foreach $user as $volist}-->
        <li>
          <div class="search_user_bg"> <a target="_blank" href="<!--{$volist.homeurl}-->"><!--{avatar width='112' height='135' css='img100' value=$volist.avatarurl}--></a> </div>
          <div class="search_user_inform">
            <p class="search_user_t1">
			  <!--{if $volist.groupid > 1 && $volist.vipenddate>$time}-->
			  <!--{$volist.levelimg}-->
			  <!--{/if}-->
			  <a target="_blank" href="<!--{$volist.homeurl}-->"><!--{$volist.username}--></a>
			</p>
            <p class="search_user_add"><!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--></p>
            <p class="search_vt"> 
			  <!--{if $login.status == '0'}-->
			  <a class="btn_bt1 chat sayHiBtn" href="###" onclick="artbox_loginbox();">打招呼</a> 
			  <a class="btn_bt2 mail sendEmailBtn" href="###" onclick="artbox_loginbox();">写信件</a>
			  <!--{else}-->
			  <a class="btn_bt1 chat sayHiBtn" href="###" onclick="artbox_hi(<!--{$volist.userid}-->);">打招呼</a> 
			  <a class="btn_bt2 mail sendEmailBtn" href="###" onclick="artbox_writemsg(<!--{$volist.userid}-->);">写信件</a>
			  <!--{/if}-->
			</p>
          </div>
        </li>
	    <!--{/foreach}-->
        <div style="clear:both;"></div>
      </ul>
	  <!--{/if}-->

	  <!--{if !empty($showpage)}-->
      <div class="page1">
        <div class="pagecode"><!--{$showpage}--></div>
        <div style="clear:both;"></div>
      </div>
	  <!--{/if}-->

    </div>
    <div class="onright"> 

      
      <div class="oe_like">
      <h2>猜你喜欢</h2>
	    <!--{assign var='likeuser' value=vo_list("mod={spuser} num={6}")}-->
      <!--{foreach $likeuser as $volist}-->
        <dl>
        <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{avatar width='70' height='86' value=$volist.avatarurl}--></a></dt>
        <dd>
          <h4><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h4>
          <p><!--{$volist.age}-->岁 <!--{$volist.height}--> cm</p>
          <p><!--{$volist.monolog|filterhtml:18}--></p>
        </dd>
        <div class="clear"></div>
		</dl>
		<!--{/foreach}-->
        <div style="clear:both;"></div>
      </div>

      <div class="divtitle" style="margin-top:5px;">最新日记</div>
      <ul class="list_so">
	    <!--{assign var='diary' value=vo_list("mod={diary} orderby={v.hits DESC} num={15}")}-->
		<!--{foreach $diary as $volist}-->
        <li><i <!--{if $volist.i<=3}--> class="current" <!--{/if}-->><!--{$volist.i}--></i><a target="_blank" href="<!--{$volist.url}-->" title="<!--{$volist.title}-->"><!--{$volist.title|filterhtml:20}--></a> </li>
		<!--{/foreach}-->
      </ul>

	  <!--{assign var='ads' value=get_ads('channel_smbanner_2')}-->
	  <!--{if !empty($ads)}-->
	  <div class="onrightad"><a <!--{if !empty($ads.url) && $ads.url!='#'}-->href="<!--{$ads.url}-->" target="<!--{$ads.target}-->"<!--{/if}-->><img src="<!--{$ads.uploadfiles}-->" width='<!--{$ads.width}-->' height='<!--{$ads.height}-->' border='0' title="<!--{$ads.title}-->" /></a></div>
	  <!--{/if}-->
	  
	  </div>
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_footer.tpl"}-->
</body>
</html>