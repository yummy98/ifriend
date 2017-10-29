<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 21:08:35
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_home_space.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1084959f08cd3a16644-36691887%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'be13ee66dc12003775d9f68c9a58c455a2d599c5' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_home_space.tpl',
      1 => 1465977084,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1084959f08cd3a16644-36691887',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'skinpath' => 0,
    'home' => 0,
    'listenstatus' => 0,
    'login' => 0,
    'config' => 0,
    'urlpath' => 0,
    'cond' => 0,
    'volist' => 0,
    'i' => 0,
    'giftlist' => 0,
    'likeuser' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f08cd55e8e37_81780370',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f08cd55e8e37_81780370')) {function content_59f08cd55e8e37_81780370($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
if (!is_callable('smarty_modifier_nl2br')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.nl2br.php';
?><?php $_smarty_tpl->tpl_vars['menuid'] = new Smarty_variable('', null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_headinc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 
<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
js/oecredit.js"></script>
<div id="page-index" class="page">
  <div class="ce member"> 
    <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_search.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

    <div class="left">
      <div class="paper-article">
        <div class="articlesec basicsec">
          <div class="pcontent">
            <div class="prwrap">
              <div class="_home_head">
                <h2> <img src="<?php echo $_smarty_tpl->tpl_vars['home']->value['avatarurl'];?>
" /> </h2>
                <h3> <img src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
themes/images/n/cid<?php if ($_smarty_tpl->tpl_vars['home']->value['idnumberrz']=='0'){?>_h<?php }?>.png" title="<?php if ($_smarty_tpl->tpl_vars['home']->value['idnumberrz']=='1'){?>已实名认证<?php }else{ ?>实名未认证<?php }?>"> <img src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
themes/images/n/email<?php if ($_smarty_tpl->tpl_vars['home']->value['emailrz']=='0'){?>_h<?php }?>.png" title="<?php if ($_smarty_tpl->tpl_vars['home']->value['emailrz']=='1'){?>已邮箱认证<?php }else{ ?>邮箱未认证<?php }?>"> <img src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
themes/images/n/video<?php if ($_smarty_tpl->tpl_vars['home']->value['videorz']=='0'){?>_h<?php }?>.png" title="<?php if ($_smarty_tpl->tpl_vars['home']->value['videorz']=='1'){?>已视频认证<?php }else{ ?>视频未认证<?php }?>"> </h3>
                <h4> 
                  <?php if (true===$_smarty_tpl->tpl_vars['listenstatus']->value){?>
                  <input type="hidden" name="listentype" id="listentype" value="newcancel" />
                  <i class="_btn1" id="btn_listen">取消关注</i> 
                  <?php }else{ ?>
                  <input type="hidden" name="listentype" id="listentype" value="newlisten" />
                  <i class="_btn1" id="btn_listen">加关注</i> 
                  <?php }?> 
                  <i class="_btn2" id="btn_addblack">拉黑名单</i> </h4>
              </div>
              <!--//_home_head End--> 
            </div>
            <div class="infowrap">
              <div class="biwrap">
                <ul class="infolist">
                  <li>交 友 ID：<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
</li>
                  <li>用 户 名：<?php echo $_smarty_tpl->tpl_vars['home']->value['username'];?>
 <?php echo $_smarty_tpl->tpl_vars['home']->value['levelimg'];?>
</li>
                  <li>性&#12288;&#12288;别：<span class="certiconph"><?php if ($_smarty_tpl->tpl_vars['home']->value['gender']==1){?>男<?php }else{ ?>女<?php }?></span></li>
                  <li>婚姻状态：<?php echo cmd_hook(array('mod'=>'var','item'=>'marrystatus','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['marrystatus']),$_smarty_tpl);?>
<span class="certiconph"></span></li>
                  <li>年&#12288;&#12288;龄：<?php echo $_smarty_tpl->tpl_vars['home']->value['age'];?>
 岁<span class="certiconph"></span></li>
                  <li>学&#12288;&#12288;历：<?php echo cmd_hook(array('mod'=>'var','item'=>'education','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['education']),$_smarty_tpl);?>
<span class="certiconph"></span></li>
                  <li>身&#12288;&#12288;高：<?php echo $_smarty_tpl->tpl_vars['home']->value['height'];?>
CM</li>
                  <li>月薪收入：<?php if ($_smarty_tpl->tpl_vars['home']->value['salary']==0){?><font class="empty">未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'salary','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['salary']),$_smarty_tpl);?>
<?php }?></li>
                  <li>星&#12288;&#12288;座：<?php echo $_smarty_tpl->tpl_vars['home']->value['astro'];?>
</li>
                  <li>所在地区：<?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['cityid']),$_smarty_tpl);?>
</li>
                  </li>
                  <div style="clear:both;"></div>
                </ul>
              </div>
              <div style="clear:both;"></div>
              <div class="mbtnwrap">
                <div class="center_buttons"> 
                  <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='1'){?> 
                  <a href="###" class="oe_hico_1" onClick="artbox_hi('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');">打招呼</a> <a href="###" class="oe_hico_2" onClick="artbox_writemsg('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');">写信件</a> <a href="###" class="oe_hico_3" onClick="artbox_sendgift('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');">送礼物</a> 
                  <?php if ($_smarty_tpl->tpl_vars['config']->value['showhomecontact']=='1'&&$_smarty_tpl->tpl_vars['home']->value['privacy']!='4'){?> 
                  <a href="###" class="oe_hico_4" onClick="artbox_viewcontact('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');">查看联系方式</a> 
                  <?php }else{ ?> 
                  <a href="###" class="oe_hico_2" onClick="artbox_writemsg('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');">索要联系方式</a> 
                  <?php }?> 
                  <?php }else{ ?> 
                  <a href="###" class="oe_hico_1" onClick="artbox_loginbox();">打招呼</a> <a href="###" class="oe_hico_2" onClick="artbox_loginbox();">写信件</a> <a href="###" class="oe_hico_3" onClick="artbox_loginbox();">送礼物</a> 
                  <?php if ($_smarty_tpl->tpl_vars['config']->value['showhomecontact']=='1'&&$_smarty_tpl->tpl_vars['home']->value['privacy']!='4'){?> 
                  <a href="###" class="oe_hico_4" onClick="artbox_loginbox();">查看联系方式</a> 
                  <?php }else{ ?> 
                  <a href="###" class="oe_hico_4" onClick="artbox_loginbox();">索要联系方式</a> 
                  <?php }?> 
                  <?php }?> 
                  
                </div>
                <div class="oe_idsearch"> <span f="but_check_credit" data-uid="<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
">诚信查询</span>
                  <div class="oe_id_box" id="id_credit_box">
                    <dl>
                      <dt>查询<?php if ($_smarty_tpl->tpl_vars['home']->value['gender']=='1'){?>他<?php }else{ ?>她<?php }?>的诚信<em></em></dt>
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
                    <?php if ($_smarty_tpl->tpl_vars['login']->value['status']==0){?> 
                    <a href="###" onClick="artbox_loginbox();">登录可见</a> 
                    <?php }else{ ?> 
                    <?php if ($_smarty_tpl->tpl_vars['login']->value['userid']==$_smarty_tpl->tpl_vars['home']->value['userid']){?> 
                    <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['home']->value['regtime'],"%Y-%m-%d");?>
 
                    <?php }else{ ?> 
                    <?php if ($_smarty_tpl->tpl_vars['login']->value['group']['view']['viewlogintime']==1){?> 
                    <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['home']->value['regtime'],"%Y-%m-%d");?>
 
                    <?php }else{ ?> 
                    <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=vip">VIP可见&gt;&gt;</a> 
                    <?php }?> 
                    <?php }?> 
                    <?php }?> 
                  </dt>
                  <dd> 登录时间： 
                    <?php if ($_smarty_tpl->tpl_vars['login']->value['status']==0){?> 
                    <a href="###" onClick="artbox_loginbox();">登录可见</a> 
                    <?php }else{ ?> 
                    <?php if ($_smarty_tpl->tpl_vars['login']->value['userid']==$_smarty_tpl->tpl_vars['home']->value['userid']){?> 
                    <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['home']->value['logintime'],"%Y-%m-%d");?>
 
                    <?php }else{ ?> 
                    <?php if ($_smarty_tpl->tpl_vars['login']->value['group']['view']['viewlogintime']==1){?> 
                    <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['home']->value['logintime'],"%Y-%m-%d");?>
 
                    <?php }else{ ?> 
                    <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=vip">VIP可见&gt;&gt;</a> 
                    <?php }?> 
                    <?php }?> 
                    <?php }?> 
                  </dd>
                </dl>
                <p> 若此会员有动机不纯、故意中伤、提供虚假资料、散步广告等恶劣行为，<a href="###" onClick="artbox_complaint('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');">请向网站举报</a> </p>
              </div>
            </div>
          </div>
          <div style="clear:both;"></div>
        </div>
        <?php if ($_smarty_tpl->tpl_vars['home']->value['molstatus']==1){?>
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">内心独白</h1>
          </div>
          <div class="pcontent">
            <ul class="content" style="font-size:12px;">
              <?php echo smarty_modifier_nl2br($_smarty_tpl->tpl_vars['home']->value['monolog']);?>

            </ul>
          </div>
        </div>
        <?php }?>
        
        <div class="articlesec detailsec">
          <div class="titlebar">
            <h1 class="title">择友要求</h1>
          </div>
          <div class="pcontent">
            <ul class="infolist">
              <table border="0" cellspacing="0" cellpadding="0" class="tb-home" width='100%'>
                <tr>
                  <td width='15%'>性&#12288;&#12288;别：</td>
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['cond']->value['gender']=='1'){?>男<?php }elseif($_smarty_tpl->tpl_vars['cond']->value['gender']=='2'){?>女<?php }else{ ?><font class='empty'>不限</font><?php }?></td>
                  <td width='15%'>照片要求：</td>
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['cond']->value['avatar']=='1'){?>有照片<?php }else{ ?><font class='empty'>不限</font><?php }?></td>
                </tr>
                <tr>
                  <td>年龄范围：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['cond']->value['startage']=='0'){?><font class='empty'>不限</font><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['cond']->value['startage'];?>
~<?php echo $_smarty_tpl->tpl_vars['cond']->value['endage'];?>
岁<?php }?></td>
                  <td>身高范围：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['cond']->value['startheight']=='0'){?><font class='empty'>不限</font><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['cond']->value['startheight'];?>
~<?php echo $_smarty_tpl->tpl_vars['cond']->value['endheight'];?>
CM<?php }?></td>
                </tr>
                <tr>
                  <td>交友类型：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['cond']->value['lovesort'])){?><font class='empty'>不限</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'lovesort','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['cond']->value['lovesort']),$_smarty_tpl);?>
<?php }?></td>
                  <td>婚史状况：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['cond']->value['marry'])){?><font class='empty'>不限</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','type'=>'multi','item'=>'marrystatus','value'=>$_smarty_tpl->tpl_vars['cond']->value['marry']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>学历要求：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['cond']->value['startedu']==0){?><font class='empty'>不限</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'education','value'=>$_smarty_tpl->tpl_vars['cond']->value['startedu']),$_smarty_tpl);?>
~<?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'education','value'=>$_smarty_tpl->tpl_vars['cond']->value['endedu']),$_smarty_tpl);?>
<?php }?></td>
                  <td>诚信星级：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['cond']->value['star']==0){?><font class='empty'>不限</font><?php }else{ ?><?php if ($_smarty_tpl->tpl_vars['cond']->value['starup']==1){?>以上<?php }elseif($_smarty_tpl->tpl_vars['cond']->value['starup']==2){?>以下<?php }?><?php }?></td>
                </tr>
                <tr>
                  <td>所在地区：</td>
                  <td colspan='3'><?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(false, null, 0);?> 
                    <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cond']->value['bulidarea']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?> 
                    <?php if ($_smarty_tpl->tpl_vars['volist']->value['city']>0){?> 
                    <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(true, null, 0);?> 
                    <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['province']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['city']),$_smarty_tpl);?>
<br />
                    
                    <?php }?> 
                    <?php } ?> 
                    <?php if (false===$_smarty_tpl->tpl_vars['i']->value){?> 
                    <font class='empty'>不限</font> 
                    <?php }?></td>
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
                  <td width='35%'><?php echo $_smarty_tpl->tpl_vars['home']->value['age'];?>
 岁</td>
                  <td width='15%'>生&#12288;&#12288;肖：</td>
                  <td width='35%'><?php echo $_smarty_tpl->tpl_vars['home']->value['lunar'];?>
</td>
                </tr>
                <tr>
                  <td>交友类型：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['lovesort']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['home']->value['sortname'];?>
<?php }?></td>
                  <td>血&#12288;&#12288;型：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['blood']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'blood','value'=>$_smarty_tpl->tpl_vars['home']->value['blood']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>民&#12288;&#12288;族：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['national']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'national','value'=>$_smarty_tpl->tpl_vars['home']->value['national']),$_smarty_tpl);?>
<?php }?></td>
                  <td>有无子女：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['childrenstatus']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'childrenstatus','value'=>$_smarty_tpl->tpl_vars['home']->value['childrenstatus']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>购车情况：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['caring']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'caring','value'=>$_smarty_tpl->tpl_vars['home']->value['caring']),$_smarty_tpl);?>
<?php }?></td>
                  <td>住房情况：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['housing']==0){?><font class="empty">未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'housing','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['housing']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>所在地区：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['provinceid']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['cityid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['distid']),$_smarty_tpl);?>
<?php }?></td>
                  <td>户籍地区：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['nationprovinceid']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hometown(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['nationprovinceid']),$_smarty_tpl);?>
 <?php echo cmd_hometown(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['nationcityid']),$_smarty_tpl);?>
<?php }?></td>
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
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['home']->value['personality']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'personality','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['personality']),$_smarty_tpl);?>
<?php }?></td>
                  <td width='15%'>相貌自评：</td>
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['home']->value['profile']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'profile','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['profile']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>体&#12288;&#12288;重：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['weight']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['home']->value['weight'];?>
 (KG)<?php }?></td>
                  <td>体&#12288;&#12288;型：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['bodystyle']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'bodystyle','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['bodystyle']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>魅力部位：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['charmparts']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'charmparts','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['charmparts']),$_smarty_tpl);?>
<?php }?></td>
                  <td>发&nbsp;&nbsp;&nbsp;&nbsp;型：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['hairstyle']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'hairstyle','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['hairstyle']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>发&#12288;&#12288;色：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['haircolor']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'haircolor','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['haircolor']),$_smarty_tpl);?>
<?php }?></td>
                  <td>脸&#12288;&#12288;型：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['facestyle']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'facestyle','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['facestyle']),$_smarty_tpl);?>
<?php }?></td>
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
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['home']->value['companytype']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'companytype','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['companytype']),$_smarty_tpl);?>
<?php }?></td>
                  <td width='15%'>收入描述：</td>
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['home']->value['income']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'income','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['income']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>工作状况：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['workstatus']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'workstatus','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['workstatus']),$_smarty_tpl);?>
<?php }?></td>
                  <td>公司名称：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['companyname']==''){?><font class='empty'>未透露</font><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['home']->value['companyname'];?>
<?php }?></td>
                </tr>
                <tr>
                  <td>教育程度：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['education']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'education','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['education']),$_smarty_tpl);?>
<?php }?></td>
                  <td>所学专业：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['specialty']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'specialty','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['specialty']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>职&#12288;&#12288;业：</td>
                  <td colspan="3"><?php if ($_smarty_tpl->tpl_vars['home']->value['jobs']=='0'){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'jobs','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['jobs']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>语言能力：</td>
                  <td colspan="3"><?php if ($_smarty_tpl->tpl_vars['home']->value['language']==''){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'language','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['language']),$_smarty_tpl);?>
<?php }?></td>
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
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['home']->value['tophome']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'tophome','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['tophome']),$_smarty_tpl);?>
<?php }?></td>
                  <td width='15%'>最大消费：</td>
                  <td width='35%'><?php if ($_smarty_tpl->tpl_vars['home']->value['consume']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'consume','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['consume']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>是否吸烟：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['smoking']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'smoking','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['smoking']),$_smarty_tpl);?>
<?php }?></td>
                  <td>是否喝酒：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['drinking']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'drinking','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['drinking']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>宗教信仰：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['faith']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'faith','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['faith']),$_smarty_tpl);?>
<?php }?></td>
                  <td>锻炼习惯：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['workout']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'workout','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['workout']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>作息习惯：</td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['rest']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'rest','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['rest']),$_smarty_tpl);?>
<?php }?></td>
                  <td>是否要孩子 </td>
                  <td><?php if ($_smarty_tpl->tpl_vars['home']->value['havechildren']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'havechildren','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['havechildren']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td colspan='2'>愿意与对方父母同住： <?php if ($_smarty_tpl->tpl_vars['home']->value['talive']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['home']->value['talive_t'];?>
<?php }?></td>
                  <td colspan='2'>喜欢制造浪漫： <?php if ($_smarty_tpl->tpl_vars['home']->value['romantic']==0){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'romantic','type'=>'text','value'=>$_smarty_tpl->tpl_vars['home']->value['romantic']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td colspan="4">擅长生活技能： <?php if ($_smarty_tpl->tpl_vars['home']->value['lifeskill']==''){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'lifeskill','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['lifeskill']),$_smarty_tpl);?>
<?php }?></td>
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
                  <td width='80%'><?php if ($_smarty_tpl->tpl_vars['home']->value['sports']==''){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'sports','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['sports']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>喜欢的食物：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['food'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'food','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['food']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>喜欢的书籍：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['book'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'book','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['book']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>喜欢的电影：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['film'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'film','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['film']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>业 余 爱 好：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['interest'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'interest','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['interest']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>喜欢的旅游去处：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['travel'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'travel','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['travel']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>关注的节目：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['attention'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'attention','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['attention']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
                <tr>
                  <td>娱 乐 休 闲：</td>
                  <td><?php if (empty($_smarty_tpl->tpl_vars['home']->value['leisure'])){?><font class='empty'>未透露</font><?php }else{ ?><?php echo cmd_hook(array('mod'=>'var','item'=>'leisure','type'=>'multi','value'=>$_smarty_tpl->tpl_vars['home']->value['leisure']),$_smarty_tpl);?>
<?php }?></td>
                </tr>
              </table>
              <div style="clear:both;"></div>
            </ul>
          </div>
        </div>
        <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."home_block_album.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 </div>
    </div>
    <!--//left End-->
    
    <div class="right">
      <div class="_oe_right_widget">
      <div class="oe_gift">
        <?php $_smarty_tpl->tpl_vars['giftlist'] = new Smarty_variable(vo_list("mod={gift} where={v.touserid='".((string)$_smarty_tpl->tpl_vars['home']->value['userid'])."'} num={40}"), null, 0);?> 
        <div class="hd">
          <h4>收到礼物 <span>(<?php echo count($_smarty_tpl->tpl_vars['giftlist']->value);?>
)</span></h4>
          <?php if (count($_smarty_tpl->tpl_vars['giftlist']->value)>2){?>
          <a class="next"></a> <a class="prev"></a>
          <?php }?>
          </div>
        <div class="bd">
          <ul class="_gift_list">
            <li style="cursor:pointer;" onclick="artbox_sendgift('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');"><img src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
/themes/images/l39_gift.jpg" alt="" />
              <p style="color:#db7ca3;">赠送礼物</p>
            </li>
            <?php if (empty($_smarty_tpl->tpl_vars['giftlist']->value)){?>
            <?php if (!isset($_smarty_tpl->tpl_vars['login']) || !is_array($_smarty_tpl->tpl_vars['login']->value)) $_smarty_tpl->createLocalArrayVariable('login');
if ($_smarty_tpl->tpl_vars['login']->value['userid'] = $_smarty_tpl->tpl_vars['home']->value['userid']){?> 
            <p style="padding-top:20px; padding-left:10px; color:#999;">TA还没收到礼物！成为第一个赠送TA礼物的人吧。</p>
            <?php }else{ ?>
            <p style="padding-top:20px; padding-left:10px; color:#999;">你还没收到礼物！</p>
            <?php }?>
            <?php }?> 
            <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['giftlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
            <li> <img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['imgurl'];?>
" />
              <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['giftname'];?>
</p>
            </li>
            <?php } ?>
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
				<?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
				artbox_loginbox();
				return false;
				<?php }?>
				$quantity = $("#m_quantity").val();
				//if ($quantity < 1) {
				if ($quantity <= 0) {
					ToastShow("充值金额错误");
					return false;
				}
				window.location.href = "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=payment&quantity="+$quantity;
			});
		});
		</script> 
        
        <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?> 
        <?php $_smarty_tpl->tpl_vars["likeuser"] = new Smarty_variable(vo_list("mod={listuser} where={v.avatar='1' AND v.gender='".((string)$_smarty_tpl->tpl_vars['home']->value['gender'])."'} num={9}"), null, 0);?> 
        <?php }else{ ?> 
        <?php $_smarty_tpl->tpl_vars["likeuser"] = new Smarty_variable(vo_list("mod={spuser} where={v.avatar='1'} num={9}"), null, 0);?> 
        <?php }?> 
        <?php if (!empty($_smarty_tpl->tpl_vars['likeuser']->value)){?>
        <div class="oe_like">
          <h3>猜你喜欢<i></i><span><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=match">查看更多+</a></span></h3>
          <ul>
            <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['likeuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
            <li> <a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo cmd_avatar(array('width'=>'90','height'=>'110','value'=>$_smarty_tpl->tpl_vars['volist']->value['avatarurl']),$_smarty_tpl);?>
</a>
              <p><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></p>
              <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
</p>
            </li>
            <?php } ?>
            <div class="clear"></div>
          </ul>
        </div>
        <?php }?> 
      </div>
    </div>
    <!--//right End-->
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 
<script type='text/javascript'>
$(function(){
	update_hits('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
', 'home', 'json_hits');
	<?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='1'&&$_smarty_tpl->tpl_vars['login']->value['userid']!=$_smarty_tpl->tpl_vars['home']->value['userid']){?>
	ajax_visithome('<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
');
	<?php }?>

	$("#btn_listen").bind("click", function(){ //加关注
		oeDoListen();
	});	

	$("#btn_addblack").bind("click", function(){ //拉黑
		oeAddBlack();
	});
});


function oeDoListen() {
	<?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
	artbox_loginbox();
	return false;
	<?php }?>
	$listentype = $("#listentype").val();
	$.ajax({
		type: "POST",
		url: "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=listen",
		cache: false,
		data: {a:$listentype, fuid:"<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
", halttype:"ajax", r:get_rndnum(8)},
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
	<?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
	artbox_loginbox();
	return false;
	<?php }?>
	$.ajax({
		type: "POST",
		url: "<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=listen",
		cache: false,
		data: {a:"newblack", fuid:"<?php echo $_smarty_tpl->tpl_vars['home']->value['userid'];?>
", halttype:"ajax", r:get_rndnum(8)},
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
</html><?php }} ?>