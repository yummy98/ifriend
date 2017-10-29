<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 15:26:48
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_user_80x96.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3211459f582b8e737d5-77157402%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3fd35d4717e21a02b6f09e3bba2626fbc4063faf' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_user_80x96.tpl',
      1 => 1434438268,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3211459f582b8e737d5-77157402',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'likeuser' => 0,
    'volist' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f582b92082c0_58902096',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f582b92082c0_58902096')) {function content_59f582b92082c0_58902096($_smarty_tpl) {?>	  <?php $_smarty_tpl->tpl_vars['likeuser'] = new Smarty_variable(vo_list("mod={spuser} num={9}"), null, 0);?>
	  <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['likeuser']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
      <div class="img_list">
	    <a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
"><?php echo cmd_avatar(array('width'=>'80','height'=>'96','css'=>'h3h','value'=>$_smarty_tpl->tpl_vars['volist']->value['avatarurl']),$_smarty_tpl);?>
</a><br />
        <a href="<?php echo $_smarty_tpl->tpl_vars['volist']->value['homeurl'];?>
"><?php echo $_smarty_tpl->tpl_vars['volist']->value['username'];?>
</a><br>
        <?php echo $_smarty_tpl->tpl_vars['volist']->value['age'];?>
岁  <?php echo cmd_area(array('type'=>'text','value'=>$_smarty_tpl->tpl_vars['volist']->value['provinceid']),$_smarty_tpl);?>

	  </div>
	  <?php } ?><?php }} ?>