<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:43:02
         compiled from "D:\wamp\www\upload\tpl\user\block_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1290959f586869028c7-64441477%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '22f20b4fb220a09f5eac451a0b88ae28ffba5b72' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\user\\block_menu.tpl',
      1 => 1450400892,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1290959f586869028c7-64441477',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'u' => 0,
    'ucfile' => 0,
    'urlpath' => 0,
    'ucpath' => 0,
    'cp_menuid' => 0,
    'a' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f5868703af73_86145105',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f5868703af73_86145105')) {function content_59f5868703af73_86145105($_smarty_tpl) {?>  <div class="user_main_left">
    <div class="oe_index_uL_top">
    <div class="oe_index_uL_head">
	  <dl>
	    <dt>
		  <?php if (!empty($_smarty_tpl->tpl_vars['u']->value['avatar'])){?> 
		  <a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=avatar"><img src="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
<?php echo $_smarty_tpl->tpl_vars['u']->value['avatar'];?>
" title="设置头像" /></a>
		  <?php }else{ ?>
		  <a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=avatar"><img src="<?php echo $_smarty_tpl->tpl_vars['u']->value['avatarurl'];?>
" title="设置头像" /></a>
		  <?php }?>
		</dt>

		<dd>
		  <h2><?php echo $_smarty_tpl->tpl_vars['u']->value['levelimg'];?>
<?php echo $_smarty_tpl->tpl_vars['u']->value['username'];?>
</h2>
		  <h3><a href="<?php echo $_smarty_tpl->tpl_vars['u']->value['homeurl'];?>
" target="_blank">查看我的主页</a></h3>
		</dd>
		<div class="clear"></div>
	  </dl>
	  <div class="clear"></div>

    </div>


    <div class="oe_uL_rz">
      <div class="oe_uL_rz_name">
	  征友状态：
	  <?php if ($_smarty_tpl->tpl_vars['u']->value['lovestatus']=='1'){?>
	  进行中
	  <?php }else{ ?>
	  已关闭
	  <?php }?>
	  <a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=account&a=setstatus">修改</a>
	  </div>
      <div class="oe_uL_rz_con">
	    <img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/a1<?php if ($_smarty_tpl->tpl_vars['u']->value['idnumberrz']==0){?>_h<?php }?>.png" title="<?php if ($_smarty_tpl->tpl_vars['u']->value['idnumberrz']==0){?>身份证未认证<?php }else{ ?>已身份证认证<?php }?>" />
		<img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/a2<?php if ($_smarty_tpl->tpl_vars['u']->value['emailrz']==0){?>_h<?php }?>.png" title="<?php if ($_smarty_tpl->tpl_vars['u']->value['emailrz']==0){?>邮箱未认证<?php }else{ ?>已邮箱认证<?php }?>" />
		<img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/a3<?php if ($_smarty_tpl->tpl_vars['u']->value['videorz']==0){?>_h<?php }?>.png" title="<?php if ($_smarty_tpl->tpl_vars['u']->value['videorz']==0){?>视频未认证<?php }else{ ?>已视频认证<?php }?>" />
	   <a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=certify">诚信认证</a>
	  </div>
    </div>
    <div class="oe_index_uL_jb">
      <ul>
        <li><span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=money"><?php echo doubleval($_smarty_tpl->tpl_vars['u']->value['money']);?>
</a></span>我的金币</li>
        <li><span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=points"><?php echo doubleval($_smarty_tpl->tpl_vars['u']->value['points']);?>
</a></span>我的积分</li>
        <div class="clear"></div>
      </ul>
    </div>
    <div class="oe_uL_sj">
      <div class="oe_uL_sou"> <span><?php echo cmd_count(array('mod'=>'user','type'=>'newmessage','value'=>$_smarty_tpl->tpl_vars['u']->value['userid']),$_smarty_tpl);?>
</span> </div>
      <div class="oe_uL_whov"> <span><?php echo cmd_count(array('mod'=>'user','type'=>'gift','value'=>$_smarty_tpl->tpl_vars['u']->value['userid']),$_smarty_tpl);?>
</span> </div>
      <ul>
        <li><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=message">收件箱</a></li>
        <li><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=gift" style="border-left:1px solid #fafafa;">我的礼物</a></li>
        <div class="clear"></div>
      </ul>
    </div>
  </div>
  
  <div class="oe_hr"></div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的帐户</div>
	  <ul>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='account'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=account">交友帐号</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='payment'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=payment"><b><font color="red">在线充值</font></b></a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='vip'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=vip">会员服务</a></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的互动</div>
	  <ul>
	    <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='message'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=message"><b><font color="red">我的信件</font></b></a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='hi'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=hi">我的问候</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='sysmsg'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=sysmsg">系统消息</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='gift'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=gift">我的礼物</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='listen'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=listen">我的关注</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='fans'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=fans">我的粉丝</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='visitme'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=visitme">谁看过我</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='visit'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=visit">我看过谁</a></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='match'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=match">缘分速配</a></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的设置</div>
	  <ul>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='avatar'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=avatar">我的头像</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='album'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=album">我的相册</a><span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=album&a=upload">上传</a></span></li>
		<li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='profile'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=profile">编辑资料</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='certify'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=certify">诚信认证</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='cond'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=cond">择友条件</a></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item">
    <div class="oe_Ltitle"><i></i>我的应用</div>
	  <ul>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='weibo'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo">心情微播</a></span></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='diary'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=diary">我的日记</a><span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=diary&a=add">发表</a></span></li>
      </ul>
	  <div class="clear"></div>
	</div>

    <div class="user_menu_item" style="border-bottom:1px solid #ebebeb;">
    <div class="oe_Ltitle"><i></i>我的工具</div>
	  <ul>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='extend'&&$_smarty_tpl->tpl_vars['a']->value=='connect'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=extend&a=connect">绑定登录</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='extend'&&$_smarty_tpl->tpl_vars['a']->value=='cpa'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=extend&a=cpa">推广注册</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='extend'&&$_smarty_tpl->tpl_vars['a']->value=='transfer'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=extend&a=transfer">积分转换</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='money'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=money">金币记录</a></li>
        <li<?php if ($_smarty_tpl->tpl_vars['cp_menuid']->value=='points'){?> class="current"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=points">积分记录</a></li>
      </ul>
	  <div class="clear"></div>
	</div>
  </div>
  <!--//user_main_left End--><?php }} ?>