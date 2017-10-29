  <div class="user_main_left">
    <div class="oe_index_uL_top">
    <div class="oe_index_uL_head">
	  <dl>
	    <dt>
		  <!--{if !empty($u.avatar)}--> 
		  <a href="<!--{$ucfile}-->?c=avatar"><img src="<!--{$urlpath}--><!--{$u.avatar}-->" title="设置头像" /></a>
		  <!--{else}-->
		  <a href="<!--{$ucfile}-->?c=avatar"><img src="<!--{$u.avatarurl}-->" title="设置头像" /></a>
		  <!--{/if}-->
		</dt>

		<dd>
		  <h2><!--{$u.levelimg}--><!--{$u.username}--></h2>
		  <h3><a href="<!--{$u.homeurl}-->" target="_blank">查看我的主页</a></h3>
		</dd>
		<div class="clear"></div>
	  </dl>
	  <div class="clear"></div>

    </div>


    <div class="oe_uL_rz">
      <div class="oe_uL_rz_name">
	  征友状态：
	  <!--{if $u.lovestatus == '1'}-->
	  进行中
	  <!--{else}-->
	  已关闭
	  <!--{/if}-->
	  <a href="<!--{$ucfile}-->?c=account&a=setstatus">修改</a>
	  </div>
      <div class="oe_uL_rz_con">
	    <img src="<!--{$ucpath}-->images/a1<!--{if $u.idnumberrz==0}-->_h<!--{/if}-->.png" title="<!--{if $u.idnumberrz==0}-->身份证未认证<!--{else}-->已身份证认证<!--{/if}-->" />
		<img src="<!--{$ucpath}-->images/a2<!--{if $u.emailrz==0}-->_h<!--{/if}-->.png" title="<!--{if $u.emailrz==0}-->邮箱未认证<!--{else}-->已邮箱认证<!--{/if}-->" />
		<img src="<!--{$ucpath}-->images/a3<!--{if $u.videorz==0}-->_h<!--{/if}-->.png" title="<!--{if $u.videorz==0}-->视频未认证<!--{else}-->已视频认证<!--{/if}-->" />
	   <a href="<!--{$ucfile}-->?c=certify">诚信认证</a>
	  </div>
    </div>
    <div class="oe_index_uL_jb">
      <ul>
        <li><span><a href="<!--{$ucfile}-->?c=money"><!--{doubleval($u.money)}--></a></span>我的金币</li>
        <li><span><a href="<!--{$ucfile}-->?c=points"><!--{doubleval($u.points)}--></a></span>我的积分</li>
        <div class="clear"></div>
      </ul>
    </div>
    <div class="oe_uL_sj">
      <div class="oe_uL_sou"> <span><!--{count mod='user' type='newmessage' value=$u.userid}--></span> </div>
      <div class="oe_uL_whov"> <span><!--{count mod='user' type='gift' value=$u.userid}--></span> </div>
      <ul>
        <li><a href="<!--{$ucfile}-->?c=message">收件箱</a></li>
        <li><a href="<!--{$ucfile}-->?c=gift" style="border-left:1px solid #fafafa;">我的礼物</a></li>
        <div class="clear"></div>
      </ul>
    </div>
  </div>
  
  <div class="oe_hr"></div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的帐户</div>
	  <ul>
        <li<!--{if $cp_menuid=='account'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=account">交友帐号</a></li>
        <li<!--{if $cp_menuid=='payment'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=payment"><b><font color="red">在线充值</font></b></a></li>
        <li<!--{if $cp_menuid=='vip'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=vip">会员服务</a></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的互动</div>
	  <ul>
	    <li<!--{if $cp_menuid=='message'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=message"><b><font color="red">我的信件</font></b></a></li>
		<li<!--{if $cp_menuid=='hi'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=hi">我的问候</a></li>
		<li<!--{if $cp_menuid=='sysmsg'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=sysmsg">系统消息</a></li>
		<li<!--{if $cp_menuid=='gift'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=gift">我的礼物</a></li>
		<li<!--{if $cp_menuid=='listen'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=listen">我的关注</a></li>
		<li<!--{if $cp_menuid=='fans'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=fans">我的粉丝</a></li>
		<li<!--{if $cp_menuid=='visitme'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=visitme">谁看过我</a></li>
		<li<!--{if $cp_menuid=='visit'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=visit">我看过谁</a></li>
		<li<!--{if $cp_menuid=='match'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=match">缘分速配</a></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的设置</div>
	  <ul>
        <li<!--{if $cp_menuid=='avatar'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=avatar">我的头像</a></li>
        <li<!--{if $cp_menuid=='album'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=album">我的相册</a><span><a href="<!--{$ucfile}-->?c=album&a=upload">上传</a></span></li>
		<li<!--{if $cp_menuid=='profile'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=profile">编辑资料</a></li>
        <li<!--{if $cp_menuid=='certify'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=certify">诚信认证</a></li>
        <li<!--{if $cp_menuid=='cond'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=cond">择友条件</a></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的应用</div>
	  <ul>
        <li<!--{if $cp_menuid=='weibo'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=weibo">心情微播</a></span></li>
        <li<!--{if $cp_menuid=='diary'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=diary">我的日记</a><span><a href="<!--{$ucfile}-->?c=diary&a=add">发表</a></span></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item" style="border-bottom:1px solid #ebebeb;">
    <div class="oe_Ltitle"><i></i>我的工具</div>
	  <ul>
        <li<!--{if $cp_menuid=='extend' && $a=='connect'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=extend&a=connect">绑定登录</a></li>
        <li<!--{if $cp_menuid=='extend' && $a=='cpa'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=extend&a=cpa">推广注册</a></li>
        <li<!--{if $cp_menuid=='extend' && $a=='transfer'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=extend&a=transfer">积分转换</a></li>
        <li<!--{if $cp_menuid=='money'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=money">金币记录</a></li>
        <li<!--{if $cp_menuid=='points'}--> class="current"<!--{/if}-->><a href="<!--{$ucfile}-->?c=points">积分记录</a></li>
      </ul>
	  <div class="clear"></div>
	</div>
  </div>
  <!--//user_main_left End-->