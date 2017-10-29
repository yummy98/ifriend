<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:43:01
         compiled from "D:\wamp\www\upload\tpl\user\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:107359f586851e5b31-92521448%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b1fcb94c7b229566b9723acfb47d7bf39f9b3887' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\user\\index.tpl',
      1 => 1435369444,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '107359f586851e5b31-92521448',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'uctplpath' => 0,
    'ucpath' => 0,
    'u' => 0,
    'ucfile' => 0,
    'matchlist' => 0,
    'volist' => 0,
    'g' => 0,
    'visitlist' => 0,
    'likeuser' => 0,
    'login' => 0,
    'cityuser' => 0,
    'newuser' => 0,
    'gift' => 0,
    'weibo' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f5868624d591_02939786',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f5868624d591_02939786')) {function content_59f5868624d591_02939786($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="user_main">
  <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


  <div class="user_main_middle">
    <!--发表心情-->

	  <div class="mood-post-box">
	    <div class="mood-post-content">
		  <textarea class="mood-textarea" id="mood_content" name="mood_content" onkeydown="textCounter('mood_content', 'counter', 500);" onkeyup="textCounter('mood_content', 'counter', 500);" onclick="obj_del_wbcontent('mood_content');" onblur="obj_attr_wbcontent('mood_content');">记录每一天的心情...</textarea>
	      <div class="mood-box-block">
			<div class="fl" style="position:relative;">
			  <a href="###" onclick="show_more_face('display-eif', 'mood_content');"><img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/eif.gif" style="padding-bottom:3px;">表情</a>
			  <div id="display-eif"></div>
			</div>
			<div class="fr">
			  <div id="post_limit" class="fl" style="padding-top:5px;">还能输入<span id="counter">500</span>字</div>
			  <div class="mood-post-button" onclick="obj_public_mood('mood_content');"><img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/button-mood.gif"></div>
			  <div class="mood-post-cancel"><a href="###" onclick="obj_cancel_wbcontent('mood_content');">取消</a></div>
			</div>
			<div class="clear"></div>
		  </div>
	    </div>
	  </div>
      <!--//mood-post-form End-->

	<?php $_smarty_tpl->tpl_vars['matchlist'] = new Smarty_variable(vo_list("mod={mymatch} value={".((string)$_smarty_tpl->tpl_vars['u']->value['userid'])."} num={5}"), null, 0);?>
	<div class="user-md-box" style="padding-bottom:15px;">
	  <div class="user-md-title"><span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=match">更多速配&gt;&gt;</a></span>今日速配</div>
	  <div class="user-md-ulist">
	    <?php if (empty($_smarty_tpl->tpl_vars['matchlist']->value)){?>
	    <h6>没有匹配的会员，您可以通过<a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=cond">修改择友条件</a>寻找您心仪的会员！</h6>
		<?php }else{ ?>
	    <ul>
		  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['matchlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
		  <li>
		    <h4><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" width="75" height="90" /></a></h4>
		    <h5><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></h5>
		    <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁，<?php echo cmd_area(array('type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
</p>
		  </li>
		  <?php } ?>
		</ul>
		<div class="clear"></div>
		<?php }?>
	  </div>
	</div>

	<?php if ($_smarty_tpl->tpl_vars['u']->value['gender']=='1'){?>
	<?php $_smarty_tpl->tpl_vars['visitlist'] = new Smarty_variable(vo_list("mod={myvisitme} num={4} where={u.gender='2'} value={".((string)$_smarty_tpl->tpl_vars['u']->value['userid'])."}"), null, 0);?> 
	<?php }else{ ?>
	<?php $_smarty_tpl->tpl_vars['visitlist'] = new Smarty_variable(vo_list("mod={myvisitme} num={4} where={u.gender='1'} value={".((string)$_smarty_tpl->tpl_vars['u']->value['userid'])."}"), null, 0);?> 
	<?php }?>
    <div class="oe_index_tui">
      <h3>
		谁看过我
		<?php if ($_smarty_tpl->tpl_vars['g']->value['view']['viewvisitor']=='1'){?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=visitme">更多&gt;&gt;</a>
		<?php }else{ ?>
		<a href="###" onclick="ToastShow('升级VIP会员可见');">更多&gt;&gt;</a>
		<?php }?>
	  </h3>
      <div class="oe_tui_con"> 
        <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['visitlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <dl>
          <dt>
		    <?php if ($_smarty_tpl->tpl_vars['g']->value['view']['viewvisitor']=='1'){?>
			<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img width="110px" height="135px" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></a>
			<?php }else{ ?>
			<a href="###" onclick="ToastShow('升级VIP会员可见');"><img width="110px" height="135px" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></a>
			<?php }?>
		  </dt>
          <dd>
		    <?php if ($_smarty_tpl->tpl_vars['g']->value['view']['viewvisitor']=='1'){?>
			<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a>
			<?php }else{ ?>
			<a href="###" onclick="ToastShow('升级VIP会员可见');"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a>
			<?php }?>
            <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 
			<br />
			<?php if ($_smarty_tpl->tpl_vars['g']->value['view']['viewvisitor']=='1'){?>
			时间：<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['viewtime'],"%Y-%m-%d");?>

			<?php }else{ ?>
			<a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=vip">时间：VIP会员可见</a>
			<?php }?>
		  </dd>
        </dl>
        <?php } ?>
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
      <?php if ($_smarty_tpl->tpl_vars['u']->value['gender']=='1'){?>
	  <?php $_smarty_tpl->tpl_vars['likeuser'] = new Smarty_variable(vo_list("mod={listuser} where={v.gender='2'} num={10}"), null, 0);?> 
	  <?php }else{ ?>
	  <?php $_smarty_tpl->tpl_vars['likeuser'] = new Smarty_variable(vo_list("mod={listuser} where={v.gender='1'} num={10}"), null, 0);?> 
	  <?php }?>
      <div class="oe_supei_con" id="tab_label_0" style="display:block;"> 
        <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['likeuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <dl>
          <dt>
			<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank">
			  <img width="90px" height="110px" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
			</a>
		  </dt>
          <dd> 
		    <h4><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></h4>
            <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
</p>
		  </dd>
        </dl>
        <?php } ?>
        <div class="clear"></div>
      </div>
	  <!--//oe_supei_con End-->

	  <?php if ($_smarty_tpl->tpl_vars['login']->value['info']['gender']=='1'){?>
	  <?php $_smarty_tpl->tpl_vars['cityuser'] = new Smarty_variable(vo_list("mod={cityuser} where={v.gender='2' AND v.avatar='1'} num={10}"), null, 0);?> 
	  <?php }else{ ?>
	  <?php $_smarty_tpl->tpl_vars['cityuser'] = new Smarty_variable(vo_list("mod={cityuser} where={v.gender='1' AND v.avatar='1'} num={10}"), null, 0);?> 
	  <?php }?>
	  
      <div class="oe_supei_con" id="tab_label_1" style="display:none;"> 
		<?php if (empty($_smarty_tpl->tpl_vars['cityuser']->value)){?>
	    <h6>没有匹配的会员，您可以通过<a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=profile">修改所在城市</a>寻找您心仪的会员！</h6>
		<?php }else{ ?>
        <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cityuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <dl>
          <dt>
			<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank">
			  <img width="90px" height="110px" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
			</a>
		  </dt>
          <dd> 
		    <h4><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></h4>
            <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
</p>
		  </dd>
        </dl>
        <?php } ?>
        <div class="clear"></div>
		<?php }?>
      </div>
	  <!--//oe_supei_con End-->

	  <?php if ($_smarty_tpl->tpl_vars['login']->value['info']['gender']=='1'){?>
	  <?php $_smarty_tpl->tpl_vars['newuser'] = new Smarty_variable(vo_list("mod={user} where={v.gender='2' AND v.avatar='1'} num={10}"), null, 0);?> 
	  <?php }else{ ?>
	  <?php $_smarty_tpl->tpl_vars['newuser'] = new Smarty_variable(vo_list("mod={user} where={v.gender='1' AND v.avatar='1'} num={10}"), null, 0);?> 
	  <?php }?>
	  
      <div class="oe_supei_con" id="tab_label_2" style="display:none;"> 
		<?php if (empty($_smarty_tpl->tpl_vars['newuser']->value)){?>
	    <h6>No data！</h6>
		<?php }else{ ?>
        <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['newuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <dl>
          <dt>
			<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank">
			  <img width="90px" height="110px" src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" />
			</a>
		  </dt>
          <dd> 
		    <h4><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></h4>
            <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
</p>
		  </dd>
        </dl>
        <?php } ?>
        <div class="clear"></div>
		<?php }?>
      </div>
	  <!--//oe_supei_con End-->

    </div>
  


  

  </div>
  <!--//user_main_middle End-->

  <!--右边 Begin-->
  <div class="user_main_right">
    <div class="user_iph_k">
	  <ul>
	    <li class="gdlh"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=vip">升级VIP会员，享受更多服务</a></li>
		<li class="lwsc"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=certify">诚信认证点亮图标提高人气</a></li>
      </ul>
	  <div class="clear"></div>
    </div>
	<!--//user_iph_k End-->
	
	<?php $_smarty_tpl->tpl_vars['gift'] = new Smarty_variable(vo_list("mod={gift} where={v.touserid='".((string)$_smarty_tpl->tpl_vars['u']->value['userid'])."'} num={9}"), null, 0);?>
	<?php if (!empty($_smarty_tpl->tpl_vars['gift']->value)){?>
	<div class="user-rt-box">
	  <div class="user-rt-title"><span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=gift">更多礼物</a></span>收到的礼物</div>
	  <div class="user-index-gift">
		<ul>
		  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['gift']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
		  <li><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['imgurl'];?>
" width="60" height="60" alt="<?php echo $_smarty_tpl->tpl_vars['volist']->value['giftname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['volist']->value['giftname'];?>
" /></li>
		  <?php } ?>
		</ul>
	  </div>
	</div>
	<!--//user-rt-box End-->
	<?php }?>
 

    <div class="oe_index_wei">
      <h3>微心情 <span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo">更多&gt;&gt;</a></span><i></i></h3>
      <div class="oe_index_weicon"> 
        <?php $_smarty_tpl->tpl_vars['weibo'] = new Smarty_variable(vo_list("mod={weibo} num={8}"), null, 0);?> 
        <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['weibo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        <dl>
          <dt><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo cmd_avatar(array('width'=>'50','height'=>'58','value'=>$_smarty_tpl->tpl_vars['volist']->value['avatarurl']),$_smarty_tpl);?>
</a></dt>
          <dd>
		    <span><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a> - <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['addtime'],"%H:%M");?>
</span>
            <p><?php echo $_smarty_tpl->tpl_vars['volist']->value['content'];?>
 </p>
          </dd>
          <div class="c"></div>
        </dl>
        <?php } ?> 
      </div>
    </div>
  

  </div>
  <div style="clear:both;"> </div>
  <!--//user_main_right End--> 
  
</div>
<!--//user_main End--> 

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_eif.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 
</body>
</html><?php }} ?>