<?php /* Smarty version Smarty-3.1.14, created on 2017-10-25 20:48:40
         compiled from "D:\wamp\www\upload\tpl\templets\default\9izbdq_block_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2980959f08828a25641-18584309%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bca1280c4cd0026fa73ab2e96d9a6b902db238e3' => 
    array (
      0 => 'D:\\wamp\\www\\upload\\tpl\\templets\\default\\9izbdq_block_menu.tpl',
      1 => 1450090654,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2980959f08828a25641-18584309',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tplpath' => 0,
    'tplpre' => 0,
    'urlpath' => 0,
    'config' => 0,
    'menuid' => 0,
    'login' => 0,
    'yx_sex' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_59f08828c963e4_57723646',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59f08828c963e4_57723646')) {function content_59f08828c963e4_57723646($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplpath']->value).((string)$_smarty_tpl->tpl_vars['tplpre']->value)."block_top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="header">
  <div class="n_top">
    <div class="nn_top">
      <div class="n_logo"> <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php"><img src="<?php echo $_smarty_tpl->tpl_vars['config']->value['logo'];?>
"  alt="<?php echo $_smarty_tpl->tpl_vars['config']->value['sitename'];?>
" /></a> </div>
      <div class="oe_menu">
        <ul>
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='index'){?> class='current first'<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
">交友首页</a>
          </li>
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='user'){?> class='current'<?php }?>> 
          <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='1'){?> 
          <?php if ($_smarty_tpl->tpl_vars['login']->value['info']['gender']=='1'){?> 
          <?php $_smarty_tpl->tpl_vars['yx_sex'] = new Smarty_variable('2', null, 0);?> 
          <?php }elseif($_smarty_tpl->tpl_vars['login']->value['info']['gender']=='2'){?> 
          <?php $_smarty_tpl->tpl_vars['yx_sex'] = new Smarty_variable('1', null, 0);?> 
          <?php }else{ ?> 
          <?php $_smarty_tpl->tpl_vars['yx_sex'] = new Smarty_variable('0', null, 0);?> 
          <?php }?> 
          <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=user&s_sex=<?php echo $_smarty_tpl->tpl_vars['yx_sex']->value;?>
&s_dist1=<?php echo $_smarty_tpl->tpl_vars['login']->value['info']['provinceid'];?>
&s_dist2=<?php echo $_smarty_tpl->tpl_vars['login']->value['info']['cityid'];?>
">同城异性</a> 
          <?php }else{ ?> 
          <a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=user">同城异性</a> 
          <?php }?>
          </li>
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='online'){?> class='current'<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=online">在线会员</a>
          </li>
          
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='diary'){?> class='current'<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=diary">心情日记</a>
          </li>
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='advsearch'){?> class='current'<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=user&a=advsearch">高级搜索</a>
          </li>
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='blackuser'){?> class='current'<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
index.php?c=blackuser">黑名单</a>
          </li>
          <?php if ($_smarty_tpl->tpl_vars['login']->value['status']=='0'){?>
          <li><a href="javascript:;" onclick="artbox_loginbox();">举报/投诉</a></li>
          <?php }else{ ?>
          <li><a href="javascript:;" onclick="artbox_complaint('0');">举报/投诉</a></li>
          <?php }?>
          
          <li<?php if ($_smarty_tpl->tpl_vars['menuid']->value=='usercp'){?> class='current'<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['urlpath']->value;?>
usercp.php">会员中心</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div><?php }} ?>