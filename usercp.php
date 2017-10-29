<?php
/**
 * Copyright (C) OElove All rights reserved.
 * <E-Mail：phpcoo@qq.com>
 * Url http://www.phpcoo.com
 *     http://www.oelove.com
 * Update 2016.06.21
 */
//载入主文件
require_once('source/core/run.php');
//c&a参数
$c = XRequest::getGpc('c');
$a = XRequest::getGpc('a');
$c = empty($c) ? 'index' : $c;
$a = empty($a) ? 'run' : $a;
//Controller
if (!in_array($c, 
    array(
        'index', 'account', 'profile', 'extend', 'avatar', 'album', 'cond', 'match',
        'certify', 'money', 'points', 'vip', 'diary', 'message', 'outmsg', 
        'readmsg', 'sysmsg', 'hi', 'listen', 'fans', 'visit', 'visitme', 'gift', 
        'complaint', 'payment', 'camera', 'home', 'weibo', 'black', 'popwin', 'upload', 
    ))) {
	XHandle::error('Usercp controller is forbiden!');
}
//Plugin
X::importPlugin();
$control_base = BASE_ROOT."source/control/userbase.php";
$hoook_base = BASE_ROOT."source/control/apphook.php";
$control_path = BASE_ROOT."source/control/user/{$c}.php";
if (!file_exists($control_path)) {
	XHandle::error('Usercp controller file is not found!');
}
else {
	require_once($control_base);
    require_once($hoook_base);
	require_once($control_path);
	$control = new control();
	$method = 'control_'.$a;
	if (method_exists($control, $method) && $a{0} != '_') {
		$control->$method();
	} 
	else {
		XHandle::error('Usercp controller action is not found!');
    }
    unset($control);
}
?>