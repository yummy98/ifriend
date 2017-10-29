<!--{assign var='menuid' value=''}-->
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_headinc.tpl"}-->
<body>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_menu.tpl"}--> 
<script type="text/javascript" src="<!--{$skinpath}-->js/oecredit.js"></script>
<div id="page-index" class="page">
  <div class="ce member"> 
    <!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_search.tpl"}-->
    <div class="left">
      <div class="paper-article">
        <div class="articlesec basicsec">
          <div class="pcontent">
            <div class="prwrap">
              <div class="_home_head">
                <h2> <img src="<!--{$home.avatarurl}-->" /> </h2>
                <h3> <img src="<!--{$skinpath}-->themes/images/n/cid<!--{if $home.idnumberrz=='0'}-->_h<!--{/if}-->.png" title="<!--{if $home.idnumberrz=='1'}-->已实名认证<!--{else}-->实名未认证<!--{/if}-->"> <img src="<!--{$skinpath}-->themes/images/n/email<!--{if $home.emailrz=='0'}-->_h<!--{/if}-->.png" title="<!--{if $home.emailrz=='1'}-->已邮箱认证<!--{else}-->邮箱未认证<!--{/if}-->"> <img src="<!--{$skinpath}-->themes/images/n/video<!--{if $home.videorz=='0'}-->_h<!--{/if}-->.png" title="<!--{if $home.videorz=='1'}-->已视频认证<!--{else}-->视频未认证<!--{/if}-->"> </h3>
                <h4> 
                  <!--{if true === $listenstatus}-->
                  <input type="hidden" name="listentype" id="listentype" value="newcancel" />
                  <i class="_btn1" id="btn_listen">取消关注</i> 
                  <!--{else}-->
                  <input type="hidden" name="listentype" id="listentype" value="newlisten" />
                  <i class="_btn1" id="btn_listen">加关注</i> 
                  <!--{/if}--> 
                  <i class="_btn2" id="btn_addblack">拉黑名单</i> </h4>
              </div>
              <!--//_home_head End--> 
            </div>
            <div class="infowrap">
              <div class="biwrap">
                <ul class="infolist">
                  <li>交 友 ID：<!--{$home.userid}--></li>
                  <li>用 户 名：<!--{$home.username}--> <!--{$home.levelimg}--></li>
                  <li>性&#12288;&#12288;别：<span class="certiconph"><!--{if $home.gender==1}-->男<!--{else}-->女<!--{/if}--></span></li>
                  <li>婚姻状态：<!--{hook mod='var' item='marrystatus' type='text' value=$home.marrystatus}--><span class="certiconph"></span></li>
                  <li>年&#12288;&#12288;龄：<!--{$home.age}--> 岁<span class="certiconph"></span></li>
                  <li>学&#12288;&#12288;历：<!--{hook mod='var' item='education' type='text' value=$home.education}--><span class="certiconph"></span></li>
                  <li>身&#12288;&#12288;高：<!--{$home.height}-->CM</li>
                  <li>月薪收入：<!--{if $home.salary == 0}--><font class="empty">未透露</font><!--{else}--><!--{hook mod='var' item='salary' type='text' value=$home.salary}--><!--{/if}--></li>
                  <li>星&#12288;&#12288;座：<!--{$home.astro}--></li>
                  <li>所在地区：<!--{area type='text' value=$home.provinceid}--> <!--{area type='text' value=$home.cityid}--></li>
                  </li>
                  <div style="clear:both;"></div>
                </ul>
              </div>
              <div style="clear:both;"></div>
              <div class="mbtnwrap">
                <div class="center_buttons"> 
                  <!--{if $login.status == '1'}--> 
                  <a href="###" class="oe_hico_1" onClick="artbox_hi('<!--{$home.userid}-->');">打招呼</a> <a href="###" class="oe_hico_2" onClick="artbox_writemsg('<!--{$home.userid}-->');">写信件</a> <a href="###" class="oe_hico_3" onClick="artbox_sendgift('<!--{$home.userid}-->');">送礼物</a> 
                  <!--{if $config.showhomecontact == '1' && $home.privacy != '4'}--> 
                  <a href="###" class="oe_hico_4" onClick="artbox_viewcontact('<!--{$home.userid}-->');">查看联系方式</a> 
                  <!--{else}--> 
                  <a href="###" class="oe_hico_2" onClick="artbox_writemsg('<!--{$home.userid}-->');">索要联系方式</a> 
                  <!--{/if}--> 
                  <!--{else}--> 
                  <a href="###" class="oe_hico_1" onClick="artbox_loginbox();">打招呼</a> <a href="###" class="oe_hico_2" onClick="artbox_loginbox();">写信件</a> <a href="###" class="oe_hico_3" onClick="artbox_loginbox();">送礼物</a> 
                  <!--{if $config.showhomecontact == '1' && $home.privacy != '4'}--> 
                  <a href="###" class="oe_hico_4" onClick="artbox_loginbox();">查看联系方式</a> 
                  <!--{else}--> 
                  <a href="###" class="oe_hico_4" onClick="artbox_loginbox();">索要联系方式</a> 
                  <!--{/if}--> 
                  <!--{/if}--> 
                  
                </div>
                <div class="oe_idsearch"> <span f="but_check_credit" data-uid="<!--{$home.userid}-->">诚信查询</span>
                  <div class="oe_id_box" id="id_credit_box">
                    <dl>
                      <dt>查询<!--{if $home.gender == '1'}-->他<!--{else}-->她<!--{/if}-->的诚信<em></em></dt>
                      <dd id="id_credit_contacts"> </dd>
                    </dl>
                  </div>
                </div>
              </div>
              <div style="clear:both;"></div>
              <!--//oe_idsearch End-->
              <div class="oe_home_time">
                <dl>
                  <dt> 注册时间： 
                    <!--{if $login.status==0}--> 
                    <a href="###" onClick="artbox_loginbox();">登录可见</a> 
                    <!--{else}--> 
                    <!--{if $login.userid == $home.userid}--> 
                    <!--{$home.regtime|date_format:"%Y-%m-%d"}--> 
                    <!--{else}--> 
                    <!--{if $login.group.view.viewlogintime == 1}--> 
                    <!--{$home.regtime|date_format:"%Y-%m-%d"}--> 
                    <!--{else}--> 
                    <a href="<!--{$urlpath}-->usercp.php?c=vip">VIP可见&gt;&gt;</a> 
                    <!--{/if}--> 
                    <!--{/if}--> 
                    <!--{/if}--> 
                  </dt>
                  <dd> 登录时间： 
                    <!--{if $login.status==0}--> 
                    <a href="###" onClick="artbox_loginbox();">登录可见</a> 
                    <!--{else}--> 
                    <!--{if $login.userid == $home.userid}--> 
                    <!--{$home.logintime|date_format:"%Y-%m-%d"}--> 
                    <!--{else}--> 
                    <!--{if $login.group.view.viewlogintime == 1}--> 
                    <!--{$home.logintime|date_format:"%Y-%m-%d"}--> 
                    <!--{else}--> 
                    <a href="<!--{$urlpath}-->usercp.php?c=vip">VIP可见&gt;&gt;</a> 
                    <!--{/if}--> 
                    <!--{/if}--> 
                    <!--{/if}--> 
                  </dd>
                </dl>
                <p> 若此会员有动机不纯、故意中伤、提供虚假资料、散步广告等恶劣行为，<a href="###" onClick="artbox_complaint('<!--{$home.userid}-->');">请向网站举报</a> </p>
              </div>
            </div>
          </div>
          <div style="clear:both;"></div>
        </div>
        <!--{if $home.molstatus == 1}-->
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">内心独白</h1>
          </div>
          <div class="pcontent">
            <ul class="content" style="font-size:12px;">
              <!--{$home.monolog|nl2br}-->
            </ul>
          </div>
        </div>
        <!--{/if}-->
        
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">择友要求</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width='100%'>
                <tr>
                  <td width='15%'>性&#12288;&#12288;别：</td>
                  <td width='35%'><!--{if $cond.gender=='1'}-->男<!--{else if $cond.gender=='2'}-->女<!--{else}--><font class='empty'>不限</font><!--{/if}--></td>
                  <td width='15%'>照片要求：</td>
                  <td width='35%'><!--{if $cond.avatar=='1'}-->有照片<!--{else}--><font class='empty'>不限</font><!--{/if}--></td>
                </tr>
                <tr>
                  <td>年龄范围：</td>
                  <td><!--{if $cond.startage=='0'}--><font class='empty'>不限</font><!--{else}--><!--{$cond.startage}-->~<!--{$cond.endage}-->岁<!--{/if}--></td>
                  <td>身高范围：</td>
                  <td><!--{if $cond.startheight=='0'}--><font class='empty'>不限</font><!--{else}--><!--{$cond.startheight}-->~<!--{$cond.endheight}-->CM<!--{/if}--></td>
                </tr>
                <tr>
                  <td>交友类型：</td>
                  <td><!--{if empty($cond.lovesort)}--><font class='empty'>不限</font><!--{else}--><!--{hook mod='lovesort' type='multi' value=$cond.lovesort}--><!--{/if}--></td>
                  <td>婚史状况：</td>
                  <td><!--{if empty($cond.marry)}--><font class='empty'>不限</font><!--{else}--><!--{hook mod='var' type='multi' item='marrystatus' value=$cond.marry}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>学历要求：</td>
                  <td><!--{if $cond.startedu == 0}--><font class='empty'>不限</font><!--{else}--><!--{hook mod='var' type='text' item='education' value=$cond.startedu}-->~<!--{hook mod='var' type='text' item='education' value=$cond.endedu}--><!--{/if}--></td>
                  <td>诚信星级：</td>
                  <td><!--{if $cond.star==0}--><font class='empty'>不限</font><!--{else}--><!--{if $cond.starup==1}-->以上<!--{elseif $cond.starup==2}-->以下<!--{/if}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>所在地区：</td>
                  <td colspan='3'><!--{assign var='i' value=false}--> 
                    <!--{foreach $cond.bulidarea as $volist}--> 
                    <!--{if $volist.city>0}--> 
                    <!--{assign var='i' value=true}--> 
                    <!--{area type='text' value=$volist.province}--> <!--{area type='text' value=$volist.city}--><br />
                    
                    <!--{/if}--> 
                    <!--{/foreach}--> 
                    <!--{if false === $i}--> 
                    <font class='empty'>不限</font> 
                    <!--{/if}--></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">详细资料</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width="100%">
                <tr>
                  <td width='15%'>年&#12288;&#12288;龄：</td>
                  <td width='35%'><!--{$home.age}--> 岁</td>
                  <td width='15%'>生&#12288;&#12288;肖：</td>
                  <td width='35%'><!--{$home.lunar}--></td>
                </tr>
                <tr>
                  <td>交友类型：</td>
                  <td><!--{if $home.lovesort==0}--><font class='empty'>未透露</font><!--{else}--><!--{$home.sortname}--><!--{/if}--></td>
                  <td>血&#12288;&#12288;型：</td>
                  <td><!--{if $home.blood==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' type='text' item='blood' value=$home.blood}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>民&#12288;&#12288;族：</td>
                  <td><!--{if $home.national==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' type='text' item='national' value=$home.national}--><!--{/if}--></td>
                  <td>有无子女：</td>
                  <td><!--{if $home.childrenstatus==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' type='text' item='childrenstatus' value=$home.childrenstatus}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>购车情况：</td>
                  <td><!--{if $home.caring==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' type='text' item='caring' value=$home.caring}--><!--{/if}--></td>
                  <td>住房情况：</td>
                  <td><!--{if $home.housing==0}--><font class="empty">未透露</font><!--{else}--><!--{hook mod='var' item='housing' type='text' value=$home.housing}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>所在地区：</td>
                  <td><!--{if $home.provinceid == 0}--><font class='empty'>未透露</font><!--{else}--><!--{area type='text' value=$home.provinceid}--> <!--{area type='text' value=$home.cityid}--> <!--{area type='text' value=$home.distid}--><!--{/if}--></td>
                  <td>户籍地区：</td>
                  <td><!--{if $home.nationprovinceid == 0}--><font class='empty'>未透露</font><!--{else}--><!--{hometown type='text' value=$home.nationprovinceid}--> <!--{hometown type='text' value=$home.nationcityid}--><!--{/if}--></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">性格相貌</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width="100%">
                <tr>
                  <td width='15%'>个性描述：</td>
                  <td width='35%'><!--{if $home.personality==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='personality' type='text' value=$home.personality}--><!--{/if}--></td>
                  <td width='15%'>相貌自评：</td>
                  <td width='35%'><!--{if $home.profile==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='profile' type='text' value=$home.profile}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>体&#12288;&#12288;重：</td>
                  <td><!--{if $home.weight==0}--><font class='empty'>未透露</font><!--{else}--><!--{$home.weight}--> (KG)<!--{/if}--></td>
                  <td>体&#12288;&#12288;型：</td>
                  <td><!--{if $home.bodystyle==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='bodystyle' type='text' value=$home.bodystyle}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>魅力部位：</td>
                  <td><!--{if $home.charmparts==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='charmparts' type='text' value=$home.charmparts}--><!--{/if}--></td>
                  <td>发&nbsp;&nbsp;&nbsp;&nbsp;型：</td>
                  <td><!--{if $home.hairstyle==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='hairstyle' type='text' value=$home.hairstyle}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>发&#12288;&#12288;色：</td>
                  <td><!--{if $home.haircolor==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='haircolor' type='text' value=$home.haircolor}--><!--{/if}--></td>
                  <td>脸&#12288;&#12288;型：</td>
                  <td><!--{if $home.facestyle==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='facestyle' type='text' value=$home.facestyle}--><!--{/if}--></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">工作与学习</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width="100%">
                <tr>
                  <td width='15%'>公司类型：</td>
                  <td width='35%'><!--{if $home.companytype==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='companytype' type='text' value=$home.companytype}--><!--{/if}--></td>
                  <td width='15%'>收入描述：</td>
                  <td width='35%'><!--{if $home.income==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='income' type='text' value=$home.income}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>工作状况：</td>
                  <td><!--{if $home.workstatus==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='workstatus' type='text' value=$home.workstatus}--><!--{/if}--></td>
                  <td>公司名称：</td>
                  <td><!--{if $home.companyname==''}--><font class='empty'>未透露</font><!--{else}--><!--{$home.companyname}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>教育程度：</td>
                  <td><!--{if $home.education==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='education' type='text' value=$home.education}--><!--{/if}--></td>
                  <td>所学专业：</td>
                  <td><!--{if $home.specialty==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='specialty' type='text' value=$home.specialty}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>职&#12288;&#12288;业：</td>
                  <td colspan="3"><!--{if $home.jobs=='0'}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='jobs' type='text' value=$home.jobs}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>语言能力：</td>
                  <td colspan="3"><!--{if $home.language==''}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='language' type='multi' value=$home.language}--><!--{/if}--></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">生活描述</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width="100%">
                <tr>
                  <td width='15%'>家中排行：</td>
                  <td width='35%'><!--{if $home.tophome==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='tophome' type='text' value=$home.tophome}--><!--{/if}--></td>
                  <td width='15%'>最大消费：</td>
                  <td width='35%'><!--{if $home.consume==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='consume' type='text' value=$home.consume}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>是否吸烟：</td>
                  <td><!--{if $home.smoking==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='smoking' type='text' value=$home.smoking}--><!--{/if}--></td>
                  <td>是否喝酒：</td>
                  <td><!--{if $home.drinking==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='drinking' type='text' value=$home.drinking}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>宗教信仰：</td>
                  <td><!--{if $home.faith==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='faith' type='text' value=$home.faith}--><!--{/if}--></td>
                  <td>锻炼习惯：</td>
                  <td><!--{if $home.workout==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='workout' type='text' value=$home.workout}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>作息习惯：</td>
                  <td><!--{if $home.rest==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='rest' type='text' value=$home.rest}--><!--{/if}--></td>
                  <td>是否要孩子 </td>
                  <td><!--{if $home.havechildren==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='havechildren' type='text' value=$home.havechildren}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td colspan='2'>愿意与对方父母同住： <!--{if $home.talive==0}--><font class='empty'>未透露</font><!--{else}--><!--{$home.talive_t}--><!--{/if}--></td>
                  <td colspan='2'>喜欢制造浪漫： <!--{if $home.romantic==0}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='romantic' type='text' value=$home.romantic}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td colspan="4">擅长生活技能： <!--{if $home.lifeskill==''}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='lifeskill' type='multi' value=$home.lifeskill}--><!--{/if}--></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">兴趣爱好</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width="100%">
                <tr>
                  <td width="20%">喜欢的运动：</td>
                  <td width='80%'><!--{if $home.sports==''}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='sports' type='multi' value=$home.sports}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>喜欢的食物：</td>
                  <td><!--{if empty($home.food)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='food' type='multi' value=$home.food}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>喜欢的书籍：</td>
                  <td><!--{if empty($home.book)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='book' type='multi' value=$home.book}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>喜欢的电影：</td>
                  <td><!--{if empty($home.film)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='film' type='multi' value=$home.film}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>业 余 爱 好：</td>
                  <td><!--{if empty($home.interest)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='interest' type='multi' value=$home.interest}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>喜欢的旅游去处：</td>
                  <td><!--{if empty($home.travel)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='travel' type='multi' value=$home.travel}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>关注的节目：</td>
                  <td><!--{if empty($home.attention)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='attention' type='multi' value=$home.attention}--><!--{/if}--></td>
                </tr>
                <tr>
                  <td>娱 乐 休 闲：</td>
                  <td><!--{if empty($home.leisure)}--><font class='empty'>未透露</font><!--{else}--><!--{hook mod='var' item='leisure' type='multi' value=$home.leisure}--><!--{/if}--></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <!--{include file="<!--{$tplpath}--><!--{$tplpre}-->home_block_album.tpl"}--> </div>
    </div>
    <!--//left End-->
    
    <div class="right">
      <div class="_oe_right_widget">
      <div class="oe_gift">
        <!--{assign var='giftlist' value=vo_list("mod={gift} where={v.touserid='<!--{$home.userid}-->'} num={40}")}--> 
        <div class="hd">
          <h4>收到礼物 <span>(<!--{count($giftlist)}-->)</span></h4>
          <!--{if count($giftlist) >2}-->
          <a class="next"></a> <a class="prev"></a>
          <!--{/if}-->
          </div>
        <div class="bd">
          <ul class="_gift_list">
            <li style="cursor:pointer;" onclick="artbox_sendgift('<!--{$home.userid}-->');"><img src="<!--{$skinpath}-->/themes/images/l39_gift.jpg" alt="" />
              <p style="color:#db7ca3;">赠送礼物</p>
            </li>
            <!--{if empty($giftlist)}-->
            <!--{if $login.userid = $home.userid}--> 
            <p style="padding-top:20px; padding-left:10px; color:#999;">TA还没收到礼物！成为第一个赠送TA礼物的人吧。</p>
            <!--{else}-->
            <p style="padding-top:20px; padding-left:10px; color:#999;">你还没收到礼物！</p>
            <!--{/if}-->
            <!--{/if}--> 
            <!--{foreach $giftlist as $volist}-->
            <li> <img src="<!--{$volist.imgurl}-->" />
              <p><!--{$volist.giftname}--></p>
            </li>
            <!--{/foreach}-->
          </ul>
          <div class="clear"></div>
        </div>
      <script type="text/javascript">
        jQuery(".oe_gift").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:3,autoPlay:false});
      </script> 
      
      
      
      </div>
      
        <div class="oe_kj_pay">
          <h3>快速充值<i></i><span></span></h3>
          <ul>
            <li>
              <input type="radio" name="m_type" id="m_type" value="10" onClick="_oeJkSel('10');" />
              10金币&nbsp;&nbsp;
              <input type="radio" name="m_type" id="m_type" value="50" onClick="_oeJkSel('50');" />
              50金币&nbsp;&nbsp;
              <input type="radio" name="m_type" id="m_type" value="100" onClick="_oeJkSel('100');" />
              100金币 </li>
            <li> 其他金额：
              <input type="text" name="m_other" id="m_other" class="input-80" />
              金币 </li>
            <li style="margin-top:8px;">充值金额：<span id="m_ks_num">0</span> 金币</li>
            <li><i id="btn_kspost">下一步</i></li>
            <div class="clear"></div>
          </ul>
          <input type="hidden" name="m_quantity" id="m_quantity" value="0" />
        </div>
        <script type="text/javascript">
		function _oeJkSel($type) {
			$("#m_other").val(0);
			$("#m_quantity").val($type);
			$("#m_ks_num").html($type);
		} 

		$(function(){
			$("#m_other").live("blur", function(){ //其他金额
				$("#m_quantity").val($(this).val());
				$("#m_ks_num").html($(this).val());
			});

			$("#btn_kspost").bind("click", function(){ //提交
				<!--{if $login.status == '0'}-->
				artbox_loginbox();
				return false;
				<!--{/if}-->
				$quantity = $("#m_quantity").val();
				//if ($quantity < 1) {
				if ($quantity <= 0) {
					ToastShow("充值金额错误");
					return false;
				}
				window.location.href = "<!--{$urlpath}-->usercp.php?c=payment&quantity="+$quantity;
			});
		});
		</script> 
        
        <!--{if $login.status == '0'}--> 
        <!--{assign var="likeuser" value=vo_list("mod={listuser} where={v.avatar='1' AND v.gender='<!--{$home.gender}-->'} num={9}")}--> 
        <!--{else}--> 
        <!--{assign var="likeuser" value=vo_list("mod={spuser} where={v.avatar='1'} num={9}")}--> 
        <!--{/if}--> 
        <!--{if !empty($likeuser)}-->
        <div class="oe_like">
          <h3>猜你喜欢<i></i><span><a href="<!--{$urlpath}-->usercp.php?c=match">查看更多+</a></span></h3>
          <ul>
            <!--{foreach $likeuser as $volist}-->
            <li> <a href="<!--{$volist.homeurl}-->" target="_blank"><!--{avatar width='90' height='110' value=$volist.avatarurl}--></a>
              <p><a href="<!--{$volist.homeurl}-->" target="_blank"><!--{$volist.username}--></a></p>
              <p><!--{$volist.age}-->岁 <!--{area type='text' value=$volist.cityid}--></p>
            </li>
            <!--{/foreach}-->
            <div class="clear"></div>
          </ul>
        </div>
        <!--{/if}--> 
      </div>
    </div>
    <!--//right End-->
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_footer.tpl"}--> 
<script type='text/javascript'>
$(function(){
	update_hits('<!--{$home.userid}-->', 'home', 'json_hits');
	<!--{if $login.status == '1' && $login.userid != $home.userid}-->
	ajax_visithome('<!--{$home.userid}-->');
	<!--{/if}-->

	$("#btn_listen").bind("click", function(){ //加关注
		oeDoListen();
	});	

	$("#btn_addblack").bind("click", function(){ //拉黑
		oeAddBlack();
	});
});


function oeDoListen() {
	<!--{if $login.status == '0'}-->
	artbox_loginbox();
	return false;
	<!--{/if}-->
	$listentype = $("#listentype").val();
	$.ajax({
		type: "POST",
		url: "<!--{$urlpath}-->usercp.php?c=listen",
		cache: false,
		data: {a:$listentype, fuid:"<!--{$home.userid}-->", halttype:"ajax", r:get_rndnum(8)},
		dataType: "json",
		success: function($data) {
			$json = eval($data);
			$response = $json.response;
			$result = $json.result;
			if ($response == '1') {
				if ($listentype == "newlisten") {
					ToastShow("加关注成功");
					$("#btn_listen").html("取消关注");
					$("#listentype").val("newcancel");
				}
				else {
					ToastShow("取消成功");
					$("#btn_listen").html("加关注");
					$("#listentype").val("newlisten");
				}
			}
			else {
				if ($result.length > 0) {
					ToastShow($result);
				}
				else {
					ToastShow("操作失败，请检查网络。");
				}
			}
		},
		error: function() {
			ToastShow("操作失败，请检查网络...");
		}
	});
}

function oeAddBlack() {
	<!--{if $login.status == '0'}-->
	artbox_loginbox();
	return false;
	<!--{/if}-->
	$.ajax({
		type: "POST",
		url: "<!--{$urlpath}-->usercp.php?c=listen",
		cache: false,
		data: {a:"newblack", fuid:"<!--{$home.userid}-->", halttype:"ajax", r:get_rndnum(8)},
		dataType: "json",
		success: function($data) {
			$json = eval($data);
			$response = $json.response;
			$result = $json.result;
			if ($response == '1') {
				ToastShow("拉黑成功");
				$("#btn_listen").html("加关注");
				$("#listentype").val("newlisten");
			}
			else {
				if ($result.length > 0) {
					ToastShow($result);
				}
				else {
					ToastShow("操作失败，请检查网络。");
				}
			}
		},
		error: function() {
			ToastShow("操作失败，请检查网络...");
		}
	});
}
</script>
<div class="oe_id_bigbox" id="id_credit_details"> </div>
</body>
</html>