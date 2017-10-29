<?php
/**
 * Copyright (C) OElove All rights reserved.
 * <E-Mail：phpcoo@qq.com>
 * Url http://www.phpcoo.com
 *     http://www.oelove.com
 * Update 2016.06.21
 */
if (extension_loaded('zlib')) {
    @ob_start('ob_gzhandler');
}
//载入主文件
require_once('source/core/run.php');
require_once('source/core/util/function.iswap.php');
$c = XRequest::getGpc('c');
$a = XRequest::getGpc('a');
if (empty($c)) {
    if (true === _init_exteral_ca()) {
        $c = 'payment';
    } 
    else {
        $c = 'index';
    }
}
if (empty($a)) {
    if (true === _init_exteral_ca()) {
        $a = 'callback';
    } 
    else {
        $a = 'run';
    }
}
//Controller
if (!in_array($c, 
    array(
        'index', 'passport', 'ajax', 'about', 'user', 'diary', 
        'info', 'home', 'online', 'connect', 'payment', 'blackuser', 'interface', 'credit',
    ))) {
	XHandle::error('Index controller is forbiden!');
}
if (!in_array($c, array("ajax", "interface"))) { //整合OEmarry接口
    if (true == mobile_device_detect()) {
        XHandle::redirect(PATH_URL."wap.php");
    }
}
//Plugin
if ($a == 'loginpost' || $a == 'logout') {
    
}
else {
    X::importPlugin();
}
$control_base = BASE_ROOT."source/control/indexbase.php";
$hook_base = BASE_ROOT."source/control/apphook.php";
$control_path = BASE_ROOT."source/control/index/{$c}.php";
if (!file_exists($control_path)) {
	XHandle::error("Index controller file is not found!");
}
else {
	require_once($control_base);
    require_once($hook_base);
	require_once($control_path);
    $control = new control();
	$method = "control_".$a;
	if (method_exists($control, $method) && $a{0} != '_') {
		$control->$method();
	} 
	else {
		XHandle::error("Index controller action is not found!");
    }
    unset($control);
}
//outside c&a
function _init_exteral_ca() {
    if (isset($_GET['out_trade_no']) || isset($_POST['out_trade_no']) || isset($_GET['sp_billno']) || isset($_POST['sp_billno']) || isset($_GET['v_oid']) || isset($_POST['v_oid'])) {
        return true;
    }
    else {
        return false;
    }
}
if (extension_loaded('zlib')) {
    @ob_end_flush();
}
?>