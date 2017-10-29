<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:48:39
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1012259f088279b67f5-23881568%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1acc892d1cc657879577524f0a4b8b0e906fdb10' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_index.tpl',
      1 => 1466064768,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1012259f088279b67f5-23881568',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'urlpath' => 0,
    'userlist' => 0,
    'volist' => 0,
    's_dist1' => 0,
    'login' => 0,
    'ads' => 0,
    'weibolist' => 0,
    'skinpath' => 0,
    'diarylist' => 0,
    'friendlink' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f08828760976_71721880',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f08828760976_71721880')) {function content_59f08828760976_71721880($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_filterhtml')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.filterhtml.php';
if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_headinc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<?php $_smarty_tpl->tpl_vars['menuid'] = new Smarty_variable('index', null, 0);?> 
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_banner.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<div  class="oe_page" style="background:#fafafa">
  <div class="oe_newuser">
    <h2>最新会员 <a  href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=user">更多>></a></h2>
    <?php $_smarty_tpl->tpl_vars['userlist'] = new Smarty_variable(vo_list("mod={user} where={v.avatar='1'} num={8}"), null, 0);?>
	<div class="oe_newusercn">
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['userlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	  <dl>
	    <dt><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></a></dt>
		<dd>
		  <span><?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 </span>
		  <label><?php if ($_smarty_tpl->tpl_vars['volist']->value['height']>0){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['height'];?>
CM<?php }?></label>
		</dd>
		<div class="clear"></div>
	  </dl>
	  <?php } ?>
	  <div class="clear"></div>
	</div>
  </div>
  <div class="oe_index_widget">
	  <div class="oe_index_tag">
		<h2><i></i>VIP会员</h2>
		<form action="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=user&a=list" method="post" id="index_serform">
		<div class="oe_index_search">
		  我要找：<select name="s_sex"><option value="2">女会员</option><option value="1">男会员</option></select>&nbsp;
		  年龄：<?php echo cmd_hook(array('mod'=>'age','name'=>'s_sage','text'=>'不限'),$_smarty_tpl);?>
 ~ <?php echo cmd_hook(array('mod'=>'age','name'=>'s_eage','text'=>'不限'),$_smarty_tpl);?>
 岁&nbsp;
		  地区：
		  <?php echo cmd_area(array('type'=>'dist1','name'=>'s_dist1','value'=>$_smarty_tpl->tpl_vars['s_dist1']->value,'ajax'=>'1','cname'=>'s_dist2','cajax'=>'1','dname'=>'s_dist3','text'=>'=请选择='),$_smarty_tpl);?>

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
    <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='1'){?>
	  <?php if ($_smarty_tpl->tpl_vars['login']->value['info']['gender']=='2'){?>
	  <?php $_smarty_tpl->tpl_vars["userlist"] = new Smarty_variable(vo_list("mod={listuser} type={vip} where={v.avatar='1' AND v.monolog='1' AND v.gender='1'} num={6}"), null, 0);?>
	  <?php }else{ ?>
	  <?php $_smarty_tpl->tpl_vars["userlist"] = new Smarty_variable(vo_list("mod={listuser} type={vip} where={v.avatar='1' AND v.monolog='1' AND v.gender='2'} num={6}"), null, 0);?>
	  <?php }?>
    <?php }else{ ?>
    <?php $_smarty_tpl->tpl_vars["userlist"] = new Smarty_variable(vo_list("mod={listuser} type={vip} where={v.avatar='1' AND v.monolog='1' AND v.gender='2'} num={6}"), null, 0);?>
    <?php }?>
	  <div class="oe_index_rzuser">
		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['userlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
      <dl f="show">
        <dt><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
"></a>
          <p></p>
        </dt>
        <dd>
        <h2> <?php echo $_smarty_tpl->tpl_vars['volist']->value['levelimg'];?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a> </h2>
        <h3><?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 <?php echo cmd_hook(array('mod'=>'var','type'=>'text','item'=>'education','value'=>$_smarty_tpl->tpl_vars['volist']->value['education']),$_smarty_tpl);?>
</h3>
        <p><?php echo smarty_modifier_filterhtml($_smarty_tpl->tpl_vars['volist']->value['monolog'],30);?>
</p>
        <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
        <span onclick="artbox_loginbox();">打招呼</span>
        <?php }else{ ?>
        <span onclick="artbox_hi('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');"">打招呼 </span>
        <?php }?>
        </dd>
        <div class="clear"></div>
      </dl>
		<?php } ?>
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

  <?php $_smarty_tpl->tpl_vars['ads'] = new Smarty_variable(get_ads('index_banner_1'), null, 0);?>
  <?php if (!empty($_smarty_tpl->tpl_vars['ads']->value)){?>
  <div class="inad1"><a <?php if (!empty($_smarty_tpl->tpl_vars['ads']->value['url'])&&$_smarty_tpl->tpl_vars['ads']->value['url']!='#'){?>href="<?php echo $_smarty_tpl->tpl_vars['ads']->value['url'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['ads']->value['target'];?>
"<?php }?>><img src="<?php echo $_smarty_tpl->tpl_vars['ads']->value['uploadfiles'];?>
" width='<?php echo $_smarty_tpl->tpl_vars['ads']->value['width'];?>
' height='<?php echo $_smarty_tpl->tpl_vars['ads']->value['height'];?>
' border='0' title="<?php echo $_smarty_tpl->tpl_vars['ads']->value['title'];?>
" /></a></div>
  <?php }?>
  
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
	  
	  <?php $_smarty_tpl->tpl_vars['userlist'] = new Smarty_variable(vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='2'} num={6}"), null, 0);?> 
	  <div class="oe_index_eliteuser" id="trap_0">
		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['userlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	    <dl>
		  <dt><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></a></dt>
		  <dd>
		    <h2><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></h2>
		    <p style="color:#333;">
		    <?php if ($_smarty_tpl->tpl_vars['volist']->value['gender']=='1'){?>男<?php }else{ ?>女<?php }?> 
		    <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 
		    <?php if ($_smarty_tpl->tpl_vars['volist']->value['height']>0){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['height'];?>
CM<?php }?>
		    </p>
			<p>
			  <?php echo cmd_hook(array('mod'=>"var",'item'=>"marrystatus",'type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['marrystatus']),$_smarty_tpl);?>

			  <?php echo cmd_hook(array('mod'=>"var",'item'=>"education",'type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['education']),$_smarty_tpl);?>

			  <?php echo cmd_hook(array('mod'=>"var",'item'=>"salary",'type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['salary']),$_smarty_tpl);?>

			</p>
			<h5>
			  <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
			  <i class="_btn1" onclick="artbox_loginbox();">打招呼</i>
			  <i class="_btn2" onclick="artbox_loginbox();">写信件</i>
			  <?php }else{ ?>
			  <i class="_btn1" onclick="artbox_hi('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">打招呼</i>
			  <i class="_btn2" onclick="artbox_writemsg('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">写信件</i>
			  <?php }?>
			</h5>
		  </dd>
		  <div class="clear"></div>
	    </dl>
	    <?php } ?>
	    <div class="clear"></div>
	  </div>
	  <!--//oe_index_eliteuser End-->

	  <?php $_smarty_tpl->tpl_vars['userlist'] = new Smarty_variable(vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='1'} num={6}"), null, 0);?> 
	  <div class="oe_index_eliteuser" id="trap_1" style="display:none;">
		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['userlist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	    <dl>
		  <dt><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></a></dt>
		  <dd>
		    <h2><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a></h2>
		    <p style="color:#333;">
		    <?php if ($_smarty_tpl->tpl_vars['volist']->value['gender']=='1'){?>男<?php }else{ ?>女<?php }?> 
		    <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['cityid']),$_smarty_tpl);?>
 
		    <?php if ($_smarty_tpl->tpl_vars['volist']->value['height']>0){?><?php echo $_smarty_tpl->tpl_vars['volist']->value['height'];?>
CM<?php }?>
		    </p>
			<p>
			  <?php echo cmd_hook(array('mod'=>"var",'item'=>"marrystatus",'type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['marrystatus']),$_smarty_tpl);?>

			  <?php echo cmd_hook(array('mod'=>"var",'item'=>"education",'type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['education']),$_smarty_tpl);?>

			  <?php echo cmd_hook(array('mod'=>"var",'item'=>"salary",'type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['salary']),$_smarty_tpl);?>

			</p>
			<h5>
			  <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
			  <i class="_btn1" onclick="artbox_loginbox();">打招呼</i>
			  <i class="_btn2" onclick="artbox_loginbox();">写信件</i>
			  <?php }else{ ?>
			  <i class="_btn1" onclick="artbox_hi('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">打招呼</i>
			  <i class="_btn2" onclick="artbox_writemsg('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">写信件</i>
			  <?php }?>
			</h5>
		  </dd>
		  <div class="clear"></div>
	    </dl>
	    <?php } ?>
	    <div class="clear"></div>
	  </div>

	   
	  <!--//oe_index_eliteuser End-->
	</div>
	<!--//_widget_lt End-->

	<div class="_widget_rt">
	  <div class="oe_index_weibo">
	    <h2>
		  微心情
		  <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
		  <span><a href="###" onclick="artbox_loginbox();">更多++</a></span>
		  <?php }else{ ?>
		  <span><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php?c=weibo">更多++</a></span>
		  <?php }?>
		</h2>
		<?php $_smarty_tpl->tpl_vars['weibolist'] = new Smarty_variable(vo_list("mod={weibo}  where={u.avatarflag='1'}  num={6}"), null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['weibolist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
		<dl>
		  <dt><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['avatarurl'];?>
" /></a></dt>
		  <dd>
		    <h3><?php echo $_smarty_tpl->tpl_vars['volist']->value['content'];?>
</h3>
		    <p><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['addtime'],"%m-%d %H:%M:%S");?>
</p>
		  </dd>
		  <div class="clear"></div>
		</dl>
		<?php } ?>
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
        <img src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
themes/images/n/pic_diary.jpg" alt="" />
      </div>
      <?php $_smarty_tpl->tpl_vars['diarylist'] = new Smarty_variable(vo_list("mod={diary}  where={v.thumbfiles !=''} num={1}"), null, 0);?>
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['diarylist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
		  <dl>
      <dt><img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['thumbfiles'];?>
"/></dt>
      <dd><h3><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['title'];?>
</a></h3>
      <p><?php echo smarty_modifier_filterhtml($_smarty_tpl->tpl_vars['volist']->value['content'],80);?>
</p>
      </dd>
      <div class="clear"></div>
      </dl>
		  <?php } ?>
      <div class="oe_indiary_list">
        <ul>
        <?php $_smarty_tpl->tpl_vars['diarylist'] = new Smarty_variable(vo_list("mod={diary}   num={12}"), null, 0);?>
		    <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['diarylist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
        	<li><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['title'];?>
</a></li>
        <?php } ?>
        <div class="clear"></div>
        </ul>
        <div class="clear"></div>
      
      </div>
    </div>
    <div class="oe_indiary_right">
      <h2>最新公告  <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=info" target="_blank">更多>></a></h2>
      <ul>
        <?php $_smarty_tpl->tpl_vars['diarylist'] = new Smarty_variable(vo_list("mod={info}  num={10}"), null, 0);?>
		    <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['diarylist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
      	<li><i <?php if ($_smarty_tpl->tpl_vars['volist']->value['i']<=3){?>class="current" <?php }?>><?php echo $_smarty_tpl->tpl_vars['volist']->value['i'];?>
</i><a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['title'];?>
</a> </li>
        <?php } ?>
      </ul>
    
    </div>
    <div class="clear"></div>
  </div>


  <div class="linkss">
    <div class="linktitle">友情链接</div>
    <div class="linkcontent">
	<?php $_smarty_tpl->tpl_vars['friendlink'] = new Smarty_variable(vo_list("mod={friendlink}"), null, 0);?>
	<?php if (!empty($_smarty_tpl->tpl_vars['friendlink']->value)){?>
	<?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['friendlink']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
	<a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['volist']->value['name'];?>
</a>&nbsp;
	<?php } ?>
	<?php }else{ ?>
	<?php echo cmd_label(array('name'=>'friendlink'),$_smarty_tpl);?>

	<?php }?>
	</div>
  </div>
</div>	

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html><?php }} ?>