<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:45:26
         compiled from "D:\wamp\www\upload\tpl\user\weibo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2479459f58716b84029-60162706%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3a6545d0676703d7f8d96f68948f708cd61b7325' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\user\\weibo.tpl',
      1 => 1434592542,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2479459f58716b84029-60162706',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'uctplpath' => 0,
    'ucpath' => 0,
    'ucfile' => 0,
    'type' => 0,
    'uid' => 0,
    'weibo' => 0,
    'volist' => 0,
    'u' => 0,
    'showpage' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f5871765eac4_57294662',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f5871765eac4_57294662')) {function content_59f5871765eac4_57294662($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.date_format.php';
if (!is_callable('smarty_modifier_nl2br')) include 'D:\\wamp\\www\\upload\\source\\core\\smarty\\plugins\\modifier.nl2br.php';
?><?php $_smarty_tpl->tpl_vars["cp_menuid"] = new Smarty_variable("weibo", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

 <style>
 .hr-dashed{margin:10px 0px; border-bottom:1px dashed #e1e1e1; clear:both; width:100%;display:inline-block;}
.weibo-item{margin-top:10px;}
.weibo-left{
	float:left; width:120px;
}
.weibo-left .weibo-time{
    padding:3px 5px; background:#f0f0f0;
	border-radius:10px; 
	line-height:20px;
	border-width: 1px;box-shadow: 1px 1px 1px 1px #F0F0F0; 
	color:Gray;
	width:115px;
	text-align:center;
}
.weibo-left .weibo-button{padding:5px;line-height:20px;}

.weibo-right{
	border-left:2px solid #fafafa; float:left; padding:3px 10px 10px 20px; 
	width:600px; margin-left:20px;
}

.weibo-box-left{
	width:55px;float:left;
}
.weibo-box-left img{
	padding:1px;border:1px solid #ddd;width:50px;height:60px;
}

.weibo-box-right {
	float:left;width:520px;margin-left:10px;line-height:20px;
}
.weibo-box-right .user-info {
	height:25px;line-height:25px;
}
.weibo-box-right .wb-content{
	background-color: #fcfcfc;
    /*border: 1px solid #f8f8f8;
    border-radius: 3px 3px 3px 3px;
	*/
	padding: 5px 8px;
}
.weibo-box-right .wb-content p{
	color:#666666;line-height: 20px;word-wrap: break-word;
}
.icon-clock {
	background-image: url("<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/friends_recent_visitors_v4.png");
	background-position: -109px -34px;display: block;
	height: 13px;position: absolute;width: 13px; margin-left:-92px; margin-top:4px;
}

/*reply*/
.wb-reply{
    background-color: #FFFFFF;
    border: 1px solid #DCDCDC;
    margin-bottom: 10px;
    margin-left: 5px;
    margin-top: 8px;
    width: 98%;
	display:none;
}
.wb-reply-form{
    padding: 10px;
    text-align: center;
}
.wb-reply-form-textarea{
    background-color: #FFFFFF;
    border: 1px solid #CECECE;
    color: #717171;
    height: 30px;
    padding: 5px;
    width: 95%;
	overflow:auto;
}
.wb-reply-btn{
    height: 22px;
    padding: 5px 0 5px 5px;
    text-align: right;
}
.wb-reply-btn .reply-eif {
	position:relative;float:left;
}
.wb-reply-btn .reply-eif img {vertical-align: middle;padding-bottom:3px;}
.wb-cmlist {
	margin-top:10px;padding:10px;width:95%;
}
.wb-cmlist li {
	float:left;width:100%;
	border-bottom:1px dashed #E8E8E8;
	color:#666666;
	padding-top:5px;
	padding-bottom:5px;

}
.wb-cmlist .who-img{
	float:left;width:30px;margin-right:10px;
}
.wb-cmlist .who-img img{width:30px;height:37px;}
.wb-cmlist .who-comm {
	float:left;line-height:20px;color:#666666;width:430px;
}

</style>
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
">会员中心</a> &gt;&gt; 微心情</div>
  <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


  <div class="main_right">

	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item<?php if (empty($_smarty_tpl->tpl_vars['type']->value)){?> current<?php }?>"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo&uid=<?php echo $_smarty_tpl->tpl_vars['uid']->value;?>
">随便看看</a></li>
		  <li class="tab_item<?php if ($_smarty_tpl->tpl_vars['type']->value=='my'){?> current<?php }?>"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo&type=my">我的心情</a></li>
		  <li class="tab_item<?php if ($_smarty_tpl->tpl_vars['type']->value=='listen'){?> current<?php }?>"><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo&type=listen">好友心情</a></li>
		</ul>
	  </div>

    <div class="div_smallnav_content_hover">

	  <div class="mood-post-form" style="padding-bottom:50px;">
	    <div class="mood-title"><img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/mood.gif"></div>
	    <div class="mood-post-content">
		  <textarea class="mood-textarea" id="mood_content" name="mood_content" onkeydown="textCounter('mood_content', 'counter', 500);" onkeyup="textCounter('mood_content', 'counter', 500);" onclick="obj_del_wbcontent('mood_content');" onblur="obj_attr_wbcontent('mood_content');">记录每一天的心情...</textarea>
	      <div class="mood-btn-block">
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

	  <?php if (empty($_smarty_tpl->tpl_vars['weibo']->value)){?>
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh25">
	    <tr>
		  <td align="center">对不起，没有你要看的心情。</td>
		</tr>
	  </table>
	  <?php }else{ ?>
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['weibo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
      <div class="weibo-item">
        <div class="weibo-left">
		  <div class="weibo-time"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['volist']->value['addtime'],"%Y/%m/%d %H:%M");?>
</div>
		  <div class="weibo-button">
		    <?php if ($_smarty_tpl->tpl_vars['volist']->value['userid']!=$_smarty_tpl->tpl_vars['u']->value['userid']){?>
		    <p>
			<a href="###" onclick="artbox_hi('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">打招呼</a>&nbsp;&nbsp;<a href="###" onclick="artbox_writemsg('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
');">写信件</a><br />
			<span id="tips_listen_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
"><script>obj_listen_status('<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
', 'tips_listen_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
');</script></span>
		    </p>
			<?php }?>
		  </div>
		</div>
		<!--//weibo-left End-->

        <div class="weibo-right">
		  <div class="weibo-box-left">
		  <?php if ($_smarty_tpl->tpl_vars['volist']->value['userid']==$_smarty_tpl->tpl_vars['u']->value['userid']){?>
		  <img src="<?php echo $_smarty_tpl->tpl_vars['u']->value['avatarurl'];?>
" />
		  <?php }else{ ?>
		  <img src="<?php echo $_smarty_tpl->tpl_vars['volist']->value['user']['avatarurl'];?>
" />
		  <?php }?>
		  </div>
		  <div class="weibo-box-right">
			<i class="icon-clock"></i>
			<div class="user-info">
			  <span style="float:right;line-height:20px;cursor:pointer;" onclick="comm_showhide('<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
');">评论(<?php echo $_smarty_tpl->tpl_vars['volist']->value['commentcount'];?>
)</span>
			  <?php if ($_smarty_tpl->tpl_vars['volist']->value['userid']==$_smarty_tpl->tpl_vars['u']->value['userid']){?>
			  <?php echo $_smarty_tpl->tpl_vars['u']->value['username'];?>
 &nbsp;&nbsp;&nbsp;
			  <font color="#999999">
			  <?php echo $_smarty_tpl->tpl_vars['u']->value['age'];?>
岁 <?php echo $_smarty_tpl->tpl_vars['u']->value['height'];?>
CM <?php echo cmd_area(array('type'=>"text",'value'=>$_smarty_tpl->tpl_vars['u']->value['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>"text",'value'=>$_smarty_tpl->tpl_vars['u']->value['cityid']),$_smarty_tpl);?>
 
			  </font>
			  <?php }else{ ?>
			  <a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo&uid=<?php echo $_smarty_tpl->tpl_vars['volist']->value['userid'];?>
"><?php echo $_smarty_tpl->tpl_vars['volist']->value['user']['username'];?>
</a>&nbsp;&nbsp;&nbsp;
			  <font color="#999999">
			  <?php echo $_smarty_tpl->tpl_vars['volist']->value['user']['age'];?>
岁 <?php echo $_smarty_tpl->tpl_vars['volist']->value['user']['height'];?>
CM <?php echo cmd_area(array('type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['user']['provinceid']),$_smarty_tpl);?>
 <?php echo cmd_area(array('type'=>"text",'value'=>$_smarty_tpl->tpl_vars['volist']->value['user']['cityid']),$_smarty_tpl);?>
 
			  </font>
			  <?php }?>
			  
			</div>
			<div class="wb-content"><p><?php echo smarty_modifier_nl2br($_smarty_tpl->tpl_vars['volist']->value['content']);?>
</p></div>

			<!--评论区-->
			<div class="wb-reply" id="comment-<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
">
			  <div class="wb-reply-form">
			    <textarea id="content_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
" name="content_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
" class="wb-reply-form-textarea" onclick="del_comm_content('<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
');" onblur="attr_comm_content('<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
');">添加评论...</textarea>
				<div class="wb-reply-btn">
				  <div class="reply-eif">
				  <a href="###" onclick="show_more_face('display_eif_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
', 'content_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
');"><img src="<?php echo $_smarty_tpl->tpl_vars['ucpath']->value;?>
images/eif.gif">表情</a>
				  </div>
				  <div id="display_eif_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
"></div>
				  <input type="button" value="发表评论" class="button-coff" onclick="do_comment('<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
');" />&nbsp;&nbsp;&nbsp;<a href="###" onclick="javascript:$('#content_<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
').val('');">取消</a>
				</div>
			  </div>
			  <div class="wb-cmlist">
			    <ul id="comlist-<?php echo $_smarty_tpl->tpl_vars['volist']->value['wbid'];?>
">
				</ul>
				<div class="clear"></div>
			  </div>
			</div>

		  </div>
		  <div class="clear"></div>
		  <!--//weibo-box-right-->
		  <div class="hr-dashed"></div>
        </div>
		
		<!--//weibo-right End-->

      </div>
	  <?php } ?>
	  <?php }?>


      <div class="clear"> </div>
	  <?php if ($_smarty_tpl->tpl_vars['showpage']->value!=''){?>
	  <div class="page_digg" style="margin-top:15px"><?php echo $_smarty_tpl->tpl_vars['showpage']->value;?>
</div>
	  <div class="clear"></div>
	  <?php }?>

    </div>
	<!--//div_smallnav_content_hover End-->



  </div>
  <div class="clear"> </div>
  <!--//main_right End-->

  <div class="right_kj">
    <ul>
      <li><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo">随便看看</a></li>
      <li><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo&type=my">我的心情</a></li>
	  <li><a href="<?php echo $_smarty_tpl->tpl_vars['ucfile']->value;?>
?c=weibo&type=listen">好友心情</a></li>
    </ul>
  </div>
  <div class="clear"> </div>
  <div style="margin: 30px;"> </div>
</div>
<!--//user_main End-->
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_eif.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['uctplpath']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html>
<script type="text/javascript">
//评论显示隐藏
function comm_showhide(id) {
	if ($("#comment-"+id).css("display") == 'none') {
		//显示
		$("#comment-"+id).show();
		get_comment_list(id);
	}
	else {
		//隐藏
		$("#comment-"+id).hide();
	}	
}
//提交评论
function do_comment(id) {
	if (id < 1) {
		$.dialog.tips("心情ID丢失", 3);
		return false;
	}	
	var content = $("#content_"+id).val();
	if (content == '' || content == '添加评论...') {
		$.dialog.tips("请填写评论内容", 3);
		$("#content_"+id).focus();
		return false;
	}
	if (strQuantity(content) > 500) {
	    $.dialog.tips("评论内容不能大于500个字！", 3);
		$("#content_"+id).focus();
		return false;
	}

	//提交评论
	$.ajax({
		type: "POST",
		url: _ROOT_PATH + "usercp.php?c=weibo&a=savecomment",
		cache: false,
		data: {wbid:id, content:content, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var msg = json.msg;
			if (response == '1') {
				if (msg != "" || msg.length>0) {
					$.dialog.tips(msg, 3);
				}
				else {
					$.dialog.tips("评论成功", 3);
					//重载评论
					get_comment_list(id);
				}
				//清除评论
				$("#content_"+id).val("添加评论...");
			}
			else {
				if (msg != "" || msg.length>0) {
					$.dialog.tips(msg, 3);
				}
				else {
					$.dialog.tips("评论失败", 3);
				}
			}
		},
		error: function() {

		}
	});

}
//评论内容
function del_comm_content(id) {
	var content = $("#content_"+id).val();
	if (content == '添加评论...') {
		$("#content_"+id).val("");
	}
}
function attr_comm_content(id) {
	var content = $("#content_"+id).val();
	if (content == '') {
		$("#content_"+id).val("添加评论...");
	}
}
//回复
function addon_reply(id, username) {
	$("#content_"+id).val("@"+username+"：");
}

//载入评论
function get_comment_list(id) {
	if (id > 0) {
		$("#comlist-"+id).html('loading');
		$.ajax({
			type: "POST",
			url: _ROOT_PATH + "usercp.php?c=weibo&a=getcomdata",
			cache: false,
			data: {wbid:id, r:get_rndnum(8)},
			dataType: "json",
			success: function(data) {
				var json = eval(data);
				var result = json.result;
				$("#comlist-"+id).html(result);
			},
			error: function() {

			}
		});
	}
}
</script><?php }} ?>