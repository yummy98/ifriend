<!--{include file="<!--{$uctplpath}-->block_head.tpl"}--> 
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<div class="user_main">
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->

  <div class="user_main_middle">
    <!--发表心情-->

	  <div class="mood-post-box">
	    <div class="mood-post-content">
		  <textarea class="mood-textarea" id="mood_content" name="mood_content" onkeydown="textCounter('mood_content', 'counter', 500);" onkeyup="textCounter('mood_content', 'counter', 500);" onclick="obj_del_wbcontent('mood_content');" onblur="obj_attr_wbcontent('mood_content');">记录每一天的心情...</textarea>
	      <div class="mood-box-block">
			<div class="fl" style="position:relative;">
			  <a href="###" onclick="show_more_face('display-eif', 'mood_content');"><img src="<!--{$ucpath}-->images/eif.gif" style="padding-bottom:3px;">表情</a>
			  <div id="display-eif"></div>
			</div>
			<div class="fr">
			  <div id="post_limit" class="fl" style="padding-top:5px;">还能输入<span id="counter">500</span>字</div>
			  <div class="mood-post-button" onclick="obj_public_mood('mood_content');"><img src="<!--{$ucpath}-->images/button-mood.gif"></div>
			  <div class="mood-post-cancel"><a href="###" onclick="obj_cancel_wbcontent('mood_content');">取消</a></div>
			</div>
			<div class="clear"></div>
		  </div>
	    </div>
	  </div>
      <!--//mood-post-form End-->

	<!--{assign var='matchlist' value=vo_list("mod={mymatch} value={<!--{$u.userid}-->} num={5}")}-->
	<div class="user-md-box" style="padding-bottom:15px;">
	  <div class="user-md-title"><span><a href="<!--{$ucfile}-->?c=match">更多速配&gt;&gt;</a></span>今日速配</div>
	  <div class="user-md-ulist">
	    <!--{if empty($matchlist)}-->
	    <h6>没有匹配的会员，您可以通过<a href="<!--{$ucfile}-->?c=cond">修改择友条件</a>寻找您心仪的会员！</h6>
		<!--{else}-->
	    <ul>
		  <!--{foreach $matchlist as $volist}-->
		  <li>
		    <h4><a href="<!--{$volist.homeurl}-->" target="_blank"><img src="<!--{$volist.avatarurl}-->" width="75" height="90" /></a></h4>
		    <h5><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h5>
		    <p><!--{$volist.age}-->岁，<!--{area type="text" value=$volist.provinceid}--></p>
		  </li>
		  <!--{/foreach}-->
		</ul>
		<div class="clear"></div>
		<!--{/if}-->
	  </div>
	</div>

	<!--{if $u.gender == '1'}-->
	<!--{assign var='visitlist' value=vo_list("mod={myvisitme} num={4} where={u.gender='2'} value={<!--{$u.userid}-->}")}--> 
	<!--{else}-->
	<!--{assign var='visitlist' value=vo_list("mod={myvisitme} num={4} where={u.gender='1'} value={<!--{$u.userid}-->}")}--> 
	<!--{/if}-->
    <div class="oe_index_tui">
      <h3>
		谁看过我
		<!--{if $g.view.viewvisitor == '1'}-->
		<a href="<!--{$ucfile}-->?c=visitme">更多&gt;&gt;</a>
		<!--{else}-->
		<a href="###" onclick="ToastShow('升级VIP会员可见');">更多&gt;&gt;</a>
		<!--{/if}-->
	  </h3>
      <div class="oe_tui_con"> 
        <!--{foreach $visitlist as $volist}-->
        <dl>
          <dt>
		    <!--{if $g.view.viewvisitor == '1'}-->
			<a href="<!--{$volist.homeurl}-->" target="_blank"><img width="110px" height="135px" src="<!--{$volist.avatarurl}-->" /></a>
			<!--{else}-->
			<a href="###" onclick="ToastShow('升级VIP会员可见');"><img width="110px" height="135px" src="<!--{$volist.avatarurl}-->" /></a>
			<!--{/if}-->
		  </dt>
          <dd>
		    <!--{if $g.view.viewvisitor == '1'}-->
			<a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a>
			<!--{else}-->
			<a href="###" onclick="ToastShow('升级VIP会员可见');"><!--{$volist.username}--></a>
			<!--{/if}-->
            <!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> 
			<br />
			<!--{if $g.view.viewvisitor == '1'}-->
			时间：<!--{$volist.viewtime|date_format:"%Y-%m-%d"}-->
			<!--{else}-->
			<a href="<!--{$ucfile}-->?c=vip">时间：VIP会员可见</a>
			<!--{/if}-->
		  </dd>
        </dl>
        <!--{/foreach}-->
        <div class="clear"></div>
      </div>
    </div>
    
    <div class="oe_uindex_supei"> 
	  <script type="text/javascript">
	  //显示隐藏
	  function tab_label(tabid) {
		var taglength = $("a[id='tab_label_tag']").length;
		for (i=0; i<taglength; i++){
			if (tabid == i) {
				$("a[id='tab_label_tag']").eq(i).addClass('current');
				$('#tab_label_'+i).show();
			} else {
				$("a[id='tab_label_tag']").eq(i).removeClass('current');
				$('#tab_label_'+i).hide();
			}
		}
	  }
	  </script>
      <h3>
	    我的缘分
        <ul>
          <li><a href="javascript:;" class="current" id="tab_label_tag" onMouseOver="tab_label('0');">猜你喜欢</a></li>
          <li><a href="javascript:;"  id="tab_label_tag" onMouseOver="tab_label('1');">同城异性</a></li>
          <li><a href="javascript:;"  id="tab_label_tag" onMouseOver="tab_label('2');">最新会员</a></li>
        </ul>
      </h3>
      <!--{if $u.gender == '1'}-->
	  <!--{assign var='likeuser' value=vo_list("mod={listuser} where={v.gender='2'} num={10}")}--> 
	  <!--{else}-->
	  <!--{assign var='likeuser' value=vo_list("mod={listuser} where={v.gender='1'} num={10}")}--> 
	  <!--{/if}-->
      <div class="oe_supei_con" id="tab_label_0" style="display:block;"> 
        <!--{foreach $likeuser as $volist}-->
        <dl>
          <dt>
			<a href="<!--{$volist.homeurl}-->" target="_blank">
			  <img width="90px" height="110px" src="<!--{$volist.avatarurl}-->" />
			</a>
		  </dt>
          <dd> 
		    <h4><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h4>
            <p><!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--></p>
		  </dd>
        </dl>
        <!--{/foreach}-->
        <div class="clear"></div>
      </div>
	  <!--//oe_supei_con End-->

	  <!--{if $login.info.gender == '1'}-->
	  <!--{assign var='cityuser' value=vo_list("mod={cityuser} where={v.gender='2' AND v.avatar='1'} num={10}")}--> 
	  <!--{else}-->
	  <!--{assign var='cityuser' value=vo_list("mod={cityuser} where={v.gender='1' AND v.avatar='1'} num={10}")}--> 
	  <!--{/if}-->
	  
      <div class="oe_supei_con" id="tab_label_1" style="display:none;"> 
		<!--{if empty($cityuser)}-->
	    <h6>没有匹配的会员，您可以通过<a href="<!--{$ucfile}-->?c=profile">修改所在城市</a>寻找您心仪的会员！</h6>
		<!--{else}-->
        <!--{foreach $cityuser as $volist}-->
        <dl>
          <dt>
			<a href="<!--{$volist.homeurl}-->" target="_blank">
			  <img width="90px" height="110px" src="<!--{$volist.avatarurl}-->" />
			</a>
		  </dt>
          <dd> 
		    <h4><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h4>
            <p><!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--></p>
		  </dd>
        </dl>
        <!--{/foreach}-->
        <div class="clear"></div>
		<!--{/if}-->
      </div>
	  <!--//oe_supei_con End-->

	  <!--{if $login.info.gender == '1'}-->
	  <!--{assign var='newuser' value=vo_list("mod={user} where={v.gender='2' AND v.avatar='1'} num={10}")}--> 
	  <!--{else}-->
	  <!--{assign var='newuser' value=vo_list("mod={user} where={v.gender='1' AND v.avatar='1'} num={10}")}--> 
	  <!--{/if}-->
	  
      <div class="oe_supei_con" id="tab_label_2" style="display:none;"> 
		<!--{if empty($newuser)}-->
	    <h6>No data！</h6>
		<!--{else}-->
        <!--{foreach $newuser as $volist}-->
        <dl>
          <dt>
			<a href="<!--{$volist.homeurl}-->" target="_blank">
			  <img width="90px" height="110px" src="<!--{$volist.avatarurl}-->" />
			</a>
		  </dt>
          <dd> 
		    <h4><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h4>
            <p><!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--></p>
		  </dd>
        </dl>
        <!--{/foreach}-->
        <div class="clear"></div>
		<!--{/if}-->
      </div>
	  <!--//oe_supei_con End-->

    </div>
  


  

  </div>
  <!--//user_main_middle End-->

  <!--右边 Begin-->
  <div class="user_main_right">
    <div class="user_iph_k">
	  <ul>
	    <li class="gdlh"><a href="<!--{$ucfile}-->?c=vip">升级VIP会员，享受更多服务</a></li>
		<li class="lwsc"><a href="<!--{$ucfile}-->?c=certify">诚信认证点亮图标提高人气</a></li>
      </ul>
	  <div class="clear"></div>
    </div>
	<!--//user_iph_k End-->
	
	<!--{assign var='gift' value=vo_list("mod={gift} where={v.touserid='<!--{$u.userid}-->'} num={9}")}-->
	<!--{if !empty($gift)}-->
	<div class="user-rt-box">
	  <div class="user-rt-title"><span><a href="<!--{$ucfile}-->?c=gift">更多礼物</a></span>收到的礼物</div>
	  <div class="user-index-gift">
		<ul>
		  <!--{foreach $gift as $volist}-->
		  <li><img src="<!--{$volist.imgurl}-->" width="60" height="60" alt="<!--{$volist.giftname}-->" title="<!--{$volist.giftname}-->" /></li>
		  <!--{/foreach}-->
		</ul>
	  </div>
	</div>
	<!--//user-rt-box End-->
	<!--{/if}-->
 

    <div class="oe_index_wei">
      <h3>微心情 <span><a href="<!--{$ucfile}-->?c=weibo">更多&gt;&gt;</a></span><i></i></h3>
      <div class="oe_index_weicon"> 
        <!--{assign var='weibo' value=vo_list("mod={weibo} num={8}")}--> 
        <!--{foreach $weibo as $volist}-->
        <dl>
          <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{avatar width='50' height='58' value=$volist.avatarurl}--></a></dt>
          <dd>
		    <span><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a> - <!--{$volist.addtime|date_format:"%H:%M"}--></span>
            <p><!--{$volist.content}--> </p>
          </dd>
          <div class="c"></div>
        </dl>
        <!--{/foreach}--> 
      </div>
    </div>
  

  </div>
  <div style="clear:both;"> </div>
  <!--//user_main_right End--> 
  
</div>
<!--//user_main End--> 

<!--{include file="<!--{$uctplpath}-->block_eif.tpl"}--> 
<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}--> 
</body>
</html>