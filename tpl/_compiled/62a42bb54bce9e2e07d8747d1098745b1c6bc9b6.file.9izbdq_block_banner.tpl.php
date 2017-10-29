<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:48:41
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_block_banner.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2120759f088291c55c6-93759065%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '62a42bb54bce9e2e07d8747d1098745b1c6bc9b6' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_block_banner.tpl',
      1 => 1449561676,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2120759f088291c55c6-93759065',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'zone' => 0,
    'skinpath' => 0,
    'volist' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f088292386a3_68181960',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f088292386a3_68181960')) {function content_59f088292386a3_68181960($_smarty_tpl) {?><div class="fullSlide"> 
  
  <?php $_smarty_tpl->tpl_vars['zone'] = new Smarty_variable(get_zone('index_slide_banner'), null, 0);?> 
  <?php if (!empty($_smarty_tpl->tpl_vars['zone']->value['ads'])){?> 
  <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['skinpath']->value;?>
themes/js/jquery.jslides.js"></script>
  <div id="full-screen-slider">
    <ul id="slides">
      <?php  $_smarty_tpl->tpl_vars['volist'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['volist']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['zone']->value['ads']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['volist']->key => $_smarty_tpl->tpl_vars['volist']->value){
$_smarty_tpl->tpl_vars['volist']->_loop = true;
?>
      <li style="background:url('<?php echo $_smarty_tpl->tpl_vars['volist']->value['uploadfiles'];?>
') no-repeat center top"></li>
      <?php } ?>
    </ul>
  </div>
  <?php }?>
  
  
</div><?php }} ?>