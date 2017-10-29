<?php /* Smarty version Smarty-3.1.14, created on 2017-10-29 16:46:42
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_passport_setavatar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:121059f59572660f36-17879697%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fc2bc23d6f605630829250d19f58ecf0736e8a32' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_passport_setavatar.tpl',
      1 => 1371631258,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '121059f59572660f36-17879697',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'appfile' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f595728e2889_65535979',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f595728e2889_65535979')) {function content_59f595728e2889_65535979($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_headinc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="page-index" class="page">
  <div class="ce reg">
    <div class="left">
      <div class="reg_left_title">
        <h1>第四步 设置形象照</h1>
      </div>
        <div class="form_box" style="margin-left:65px;">

          <div class="form_li s">
		    <div class="youb">
			  <div class="yout">
			    <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value)."imgcropper.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value)."imgcropper.regavatar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

			  </div>
			  <div class="c"></div>
			</div>
          </div>

        </div>
    </div>
    <div class="right"> 
	  <a class="login" href="<?php echo $_smarty_tpl->tpl_vars['appfile']->value;?>
?c=passport&a=login">已有帐号？ 点此登录&gt;&gt;</a>
      <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."passport_tips.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

    </div>
    <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
</div>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

</body>
</html><?php }} ?>