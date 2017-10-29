<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headinc.tpl"}-->
<body>
<!--{assign var='menuid' value='index'}--> 
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_menu.tpl"}-->
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_banner.tpl"}-->

<div  class="oe_page" style="background:#fafafa">
  <div class="oe_newuser">
    <h2>最新会员 <a  href="<!--{$urlpath}-->index.php?c=user">更多>></a></h2>
    <!--{assign var='userlist' value=vo_list("mod={user} where={v.avatar='1'} num={8}")}-->
	<div class="oe_newusercn">
	  <!--{foreach $userlist as $volist}-->
	  <dl>
	    <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><img src="<!--{$volist.avatarurl}-->" /></a></dt>
		<dd>
		  <span><!--{area type='text' value=$volist.cityid}--> </span>
		  <label><!--{if $volist.height > 0}--><!--{$volist.height}-->CM<!--{/if}--></label>
		</dd>
		<div class="clear"></div>
	  </dl>
	  <!--{/foreach}-->
	  <div class="clear"></div>
	</div>
  </div>
  <div class="oe_index_widget">
	  <div class="oe_index_tag">
		<h2><i></i>VIP会员</h2>
		<form action="<!--{$urlpath}-->index.php?c=user&a=list" method="post" id="index_serform">
		<div class="oe_index_search">
		  我要找：<select name="s_sex"><option value="2">女会员</option><option value="1">男会员</option></select>&nbsp;
		  年龄：<!--{hook mod='age' name='s_sage' text='不限'}--> ~ <!--{hook mod='age' name='s_eage' text='不限'}--> 岁&nbsp;
		  地区：
		  <!--{area type='dist1' name='s_dist1' value=$s_dist1 ajax='1' cname='s_dist2' cajax='1' dname='s_dist3' text='=请选择='}-->
		  <span id="json_s_dist2"><select name="s_dist2" id="s_dist2"><option value="0">=请选择=</option></select></span>
		  <span id="json_s_dist3"><select name="s_dist3" id="s_dist3"><option value="0">=请选择=</option></select></span>
		  &nbsp;头像：<select name="s_avatar"><option value="0">不限</option><option value="1">有头像</option></select>&nbsp;
		  <i id="index_searchbtn">搜索</i>
		</div>
		</form>
		<script type="text/javascript">
		$(function(){
			$("#index_searchbtn").bind("click", function(){
				$("#index_serform").submit();
			});
		});
		</script>
	  </div>
    <!--{if $login.status=='1'}-->
	  <!--{if $login.info.gender == '2'}-->
	  <!--{assign var="userlist" value=vo_list("mod={listuser} type={vip} where={v.avatar='1' AND v.monolog='1' AND v.gender='1'} num={6}")}-->
	  <!--{else}-->
	  <!--{assign var="userlist" value=vo_list("mod={listuser} type={vip} where={v.avatar='1' AND v.monolog='1' AND v.gender='2'} num={6}")}-->
	  <!--{/if}-->
    <!--{else}-->
    <!--{assign var="userlist" value=vo_list("mod={listuser} type={vip} where={v.avatar='1' AND v.monolog='1' AND v.gender='2'} num={6}")}-->
    <!--{/if}-->
	  <div class="oe_index_rzuser">
		<!--{foreach $userlist as $volist}-->
      <dl f="show">
        <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><img src="<!--{$volist.avatarurl}-->"></a>
          <p></p>
        </dt>
        <dd>
        <h2> <!--{$volist.levelimg}--> <a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a> </h2>
        <h3><!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> <!--{hook mod='var' type='text' item='education' value=$volist.education}--></h3>
        <p><!--{$volist.monolog|filterhtml:30}--></p>
        <!--{if $login.status == '0'}-->
        <span onclick="artbox_loginbox();">打招呼</span>
        <!--{else}-->
        <span onclick="artbox_hi('<!--{$volist.userid}-->');"">打招呼 </span>
        <!--{/if}-->
        </dd>
        <div class="clear"></div>
      </dl>
		<!--{/foreach}-->
		<div class="clear"></div>
	  </div>
  </div>
  <script type="text/javascript">
  $(function(){
    $("[f='show']").bind("mouseover", function(){ //鼠标经过
      $(this).addClass("current");
    });
    $("[f='show']").bind("mouseout", function(){ //鼠标离开
      $(this).removeClass("current");
    });
  });
</script>
  <!--//oe_index_widget End-->

  <!--{assign var='ads' value=get_ads('index_banner_1')}-->
  <!--{if !empty($ads)}-->
  <div class="inad1"><a <!--{if !empty($ads.url) && $ads.url!='#'}-->href="<!--{$ads.url}-->" target="<!--{$ads.target}-->"<!--{/if}-->><img src="<!--{$ads.uploadfiles}-->" width='<!--{$ads.width}-->' height='<!--{$ads.height}-->' border='0' title="<!--{$ads.title}-->" /></a></div>
  <!--{/if}-->
  
  <div class="oe_index_widget" style="margin-top:10px;">
    <div class="_widget_lt">
	  <div class="oe_index_usertag" id="trap_li">
	    <span></span>
	    <ul>
	      <li class="_current">推荐女会员</li>
		  <li>推荐男会员</li>
		  <div class="clear"></div>
		</ul>
	  </div>
	  <script type="text/javascript">
	  $(function(){
		$trap_li = $("#trap_li ul li");
		$trap_li.bind("click", function(){
			$(this).addClass("_current").siblings().removeClass("_current");
			$index = $trap_li.index(this);
			$(".oe_index_eliteuser").hide();
			$("#trap_"+$index).show();
		});

	  });
	  </script>
	  
	  <!--{assign var='userlist' value=vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='2'} num={6}")}--> 
	  <div class="oe_index_eliteuser" id="trap_0">
		<!--{foreach $userlist as $volist}-->
	    <dl>
		  <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><img src="<!--{$volist.avatarurl}-->" /></a></dt>
		  <dd>
		    <h2><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h2>
		    <p style="color:#333;">
		    <!--{if $volist.gender == '1'}-->男<!--{else}-->女<!--{/if}--> 
		    <!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> 
		    <!--{if $volist.height > 0}--><!--{$volist.height}-->CM<!--{/if}-->
		    </p>
			<p>
			  <!--{hook mod="var" item="marrystatus" type="text" value=$volist.marrystatus}-->
			  <!--{hook mod="var" item="education" type="text" value=$volist.education}-->
			  <!--{hook mod="var" item="salary" type="text" value=$volist.salary}-->
			</p>
			<h5>
			  <!--{if $login.status == '0'}-->
			  <i class="_btn1" onclick="artbox_loginbox();">打招呼</i>
			  <i class="_btn2" onclick="artbox_loginbox();">写信件</i>
			  <!--{else}-->
			  <i class="_btn1" onclick="artbox_hi('<!--{$volist.userid}-->');">打招呼</i>
			  <i class="_btn2" onclick="artbox_writemsg('<!--{$volist.userid}-->');">写信件</i>
			  <!--{/if}-->
			</h5>
		  </dd>
		  <div class="clear"></div>
	    </dl>
	    <!--{/foreach}-->
	    <div class="clear"></div>
	  </div>
	  <!--//oe_index_eliteuser End-->

	  <!--{assign var='userlist' value=vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='1'} num={6}")}--> 
	  <div class="oe_index_eliteuser" id="trap_1" style="display:none;">
		<!--{foreach $userlist as $volist}-->
	    <dl>
		  <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><img src="<!--{$volist.avatarurl}-->" /></a></dt>
		  <dd>
		    <h2><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></h2>
		    <p style="color:#333;">
		    <!--{if $volist.gender == '1'}-->男<!--{else}-->女<!--{/if}--> 
		    <!--{$volist.age}-->岁 <!--{area type='text' value=$volist.provinceid}--> <!--{area type='text' value=$volist.cityid}--> 
		    <!--{if $volist.height > 0}--><!--{$volist.height}-->CM<!--{/if}-->
		    </p>
			<p>
			  <!--{hook mod="var" item="marrystatus" type="text" value=$volist.marrystatus}-->
			  <!--{hook mod="var" item="education" type="text" value=$volist.education}-->
			  <!--{hook mod="var" item="salary" type="text" value=$volist.salary}-->
			</p>
			<h5>
			  <!--{if $login.status == '0'}-->
			  <i class="_btn1" onclick="artbox_loginbox();">打招呼</i>
			  <i class="_btn2" onclick="artbox_loginbox();">写信件</i>
			  <!--{else}-->
			  <i class="_btn1" onclick="artbox_hi('<!--{$volist.userid}-->');">打招呼</i>
			  <i class="_btn2" onclick="artbox_writemsg('<!--{$volist.userid}-->');">写信件</i>
			  <!--{/if}-->
			</h5>
		  </dd>
		  <div class="clear"></div>
	    </dl>
	    <!--{/foreach}-->
	    <div class="clear"></div>
	  </div>

	   
	  <!--//oe_index_eliteuser End-->
	</div>
	<!--//_widget_lt End-->

	<div class="_widget_rt">
	  <div class="oe_index_weibo">
	    <h2>
		  微心情
		  <!--{if $login.status == '0'}-->
		  <span><a href="###" onclick="artbox_loginbox();">更多++</a></span>
		  <!--{else}-->
		  <span><a href="<!--{$urlpath}-->usercp.php?c=weibo">更多++</a></span>
		  <!--{/if}-->
		</h2>
		<!--{assign var='weibolist' value=vo_list("mod={weibo}  where={u.avatarflag='1'}  num={6}")}-->
		<!--{foreach $weibolist as $volist}-->
		<dl>
		  <dt><a href="<!--{$volist.homeurl}-->" target="_blank"><img src="<!--{$volist.avatarurl}-->" /></a></dt>
		  <dd>
		    <h3><!--{$volist.content}--></h3>
		    <p><!--{$volist.addtime|date_format:"%m-%d %H:%M:%S"}--></p>
		  </dd>
		  <div class="clear"></div>
		</dl>
		<!--{/foreach}-->
		<div class="clear"></div>
	  </div>

	</div>
	<!--//_widget_rt End-->

	<div class="clear"></div>
  </div>
  <!--//oe_index_widget End-->
  
  
  <div class="oe_indiary">
    <div class="oe_indiary_left">
      <div class="oe_indiary_pic">
        <img src="<!--{$skinpath}-->themes/images/n/pic_diary.jpg" alt="" />
      </div>
      <!--{assign var='diarylist' value=vo_list("mod={diary}  where={v.thumbfiles !=''} num={1}")}-->
	  <!--{foreach $diarylist as $volist}-->
		  <dl>
      <dt><img src="<!--{$volist.thumbfiles}-->"/></dt>
      <dd><h3><a href="<!--{$volist.url}-->" target="_blank"><!--{$volist.title}--></a></h3>
      <p><!--{$volist.content|filterhtml:80}--></p>
      </dd>
      <div class="clear"></div>
      </dl>
		  <!--{/foreach}-->
      <div class="oe_indiary_list">
        <ul>
        <!--{assign var='diarylist' value=vo_list("mod={diary}   num={12}")}-->
		    <!--{foreach $diarylist as $volist}-->
        	<li><a href="<!--{$volist.url}-->" target="_blank"><!--{$volist.title}--></a></li>
        <!--{/foreach}-->
        <div class="clear"></div>
        </ul>
        <div class="clear"></div>
      
      </div>
    </div>
    <div class="oe_indiary_right">
      <h2>最新公告  <a href="<!--{$urlpath}-->index.php?c=info" target="_blank">更多>></a></h2>
      <ul>
        <!--{assign var='diarylist' value=vo_list("mod={info}  num={10}")}-->
		    <!--{foreach $diarylist as $volist}-->
      	<li><i <!--{if $volist.i<=3}-->class="current" <!--{/if}-->><!--{$volist.i}--></i><a href="<!--{$volist.url}-->" target="_blank"><!--{$volist.title}--></a> </li>
        <!--{/foreach}-->
      </ul>
    
    </div>
    <div class="clear"></div>
  </div>


  <div class="linkss">
    <div class="linktitle">友情链接</div>
    <div class="linkcontent">
	<!--{assign var='friendlink' value=vo_list("mod={friendlink}")}-->
	<!--{if !empty($friendlink)}-->
	<!--{foreach $friendlink as $volist}-->
	<a href="<!--{$volist.url}-->" target="_blank"><!--{$volist.name}--></a>&nbsp;
	<!--{/foreach}-->
	<!--{else}-->
	<!--{label name='friendlink'}-->
	<!--{/if}-->
	</div>
  </div>
</div>	

<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_footer.tpl"}-->
</body>
</html>