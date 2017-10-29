<?php
/**
 * Copyright (C) OElove All rights reserved.
 * <E-Mail：phpcoo@qq.com>
 * Url http://www.phpcoo.com
 *     http://www.oelove.com
 * Update 2016.06.21
 */
require_once("source/core/run.php");

$upgrade_title = "OEloveV3.7.R51224 To OEloveV3.9.R60622";
$upgrade_version = "OEloveV3.9.R60622";
echo("<html>\n");
echo("<head>\n");
echo("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=".OESOFT_CHARSET."\" />\n");
echo("<title>".$upgrade_title."升级程序</title>\n");
echo("<style>body { font:normal 12px/1.5 Arial, Helvetica, sans-serif; color:#222;}</style>");
echo("</head>\n");
echo("<body>\n");
$action = XRequest::getArgs('action');
if($action == ''){
	echo("
	    <div align='center' style='line-height:25px;font-size:15px;'>
		<br ><br />
		<p>本程序用于升级 ".$upgrade_title."</p>
		<p><a href='upgrade.php?action=upgrade'>请点执行升级</a></p>
		</center>
	");
}
elseif ($action == 'upgrade'){
	echo("
	    <div align='center' style='line-height:25px;font-size:15px;'>
		<br ><br />
		<p>本程序用于升级 ".$upgrade_title."</p>
		<p><font color='red'>数据表升级中，请稍等......</font></p>
	");
    #执行升级
	update_complaints();
	update_index();

	//升级完成
	echo("<p><font color='green'>恭喜你，数据表升级成功！<br /><a href='upgrade.php'>返回升级页面</a>  <a href='upgrade.php?action=del'>删除升级文件</a></p>");
}
elseif ($action == 'del') {
    X::loadUtil('file');
    XFile::delFile('upgrade.php');
	echo("<font color=red>升级文件删除成功</font>");
}

/*------------------------------- 升级函数 End --------------------------*/

//举报表
function update_complaints() {
	$table = "complaints";
    if (true === check_exist_table($table)) {
		$array = array(
			'dealreason'=>"ADD `dealreason` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `dealtimeline`", //举报理由
			'yunstatus'=>"ADD `yunstatus` smallint(2) unsigned DEFAULT '0' AFTER `dealreason`", //云服务状态
		);
		foreach ($array as $key=>$value) {
			$field = $key;
			$sql = $value;
			run_altertable($table, $field, $sql);
		}		unset($array);
    }
    echo "<font color='blue'>[".$table."]表更新成功</ font><br />";
}

//添加索引
function update_index() {
	//举报
    $table = "complaints";
    if (true === check_exist_table($table)) {
		$array = array(
			'cpuid'=>"ADD INDEX `cpuid` (`cpuid`)",
			'fromuid'=>"ADD INDEX `fromuid` (`fromuid`)",
			'flag'=>"ADD INDEX `flag` (`flag`)",
		);
		foreach ($array as $key=>$value) {
			$field = $key;
			$sql = $value;
			run_altertable($table, $field, $sql);
		}
		unset($array);
    }

	echo "<font color='blue'>更新索引成功</font><br />";
}
/*------------------------------- 升级函数 End ----------------------------*/



/*-------------------------------- 数据表操作函数 Start ---------------------------------*/
/**
 * 更新数据表字段
 * @param:: string $table 表名 不带前缀
 * @param:: string $field 字段名
 * @param:: string $sql SQL语句
 * @return:: null
*/
function run_altertable($table, $field, $sql){
    if (!empty($field) && !empty($sql)) {
        $alter_action = 0;
		if (strtoupper(substr($sql, 0, 9)) == 'ADD INDEX') {
			$alter_action = 4;
		} 
		elseif (strtoupper(substr($sql, 0, 3)) == 'ADD') {
			$alter_action = 1;
		}
        elseif (strtoupper(substr($sql, 0, 6)) == 'CHANGE') {
            $alter_action = 2;
		} 
        elseif (strtoupper(substr($sql, 0, 4)) == 'DROP') {
            $alter_action = 3;
		}
        
        //创建字段
		if ($alter_action == 1) {
			//不存在字段才创建
            if (false === check_exist_field($table, $field)) {
                X::$obj->alter_table(DB_PREFIX.$table, $sql);
			}
		} 
        //修改字段
        elseif ($alter_action == 2) {
			//存在字段才修改
            if (true === check_exist_field($table, $field)) {
                X::$obj->alter_table(DB_PREFIX.$table, $sql);
			}
		} 
        //删除字段
        elseif ($alter_action == 3) {
			//存在字段才删除
            if (true === check_exist_field($table, $field)) {
                X::$obj->alter_table(DB_PREFIX.$table, $sql);
            }
		}
		//创建索引
		elseif ($alter_action  == 4) {
			//存在字段才执行建索引
            if (true === check_exist_field($table, $field)) {
                X::$obj->alter_table(DB_PREFIX.$table, $sql);
			}
		}
	}
}

/**
 * 判断数据表是否含有某个字段
 * @param:: string $table 表名 不带前缀
 * @param:: string $field 字段名
 * @return:: bool true/false
*/
function check_exist_field($table, $field){
	$array_column = array();
	$columns = get_table_columns($table);
	$i = 0;
	if (!empty($columns)) {
        foreach($columns as $key=>$value){
            if (empty($array_column)) {
                $array_column = array(
                    $i=>$key
                );
            }
            else {
                $array_column = array_merge($array_column, array($i=>$key));
            }
			$i++;
		}
        if (in_array($field, $array_column)) {
            return true;
        }
        else {
            return false;
        }
	}
    else {
		//die($table."Not exists!");
	}
}

/**
 * 获取某个数据表所有字段名
 * @param:: string $table 数据表名 不带前缀
 * @return:: array
*/
function get_table_columns($table) {
    $tablecolumns = array();
	if (X::$obj->version() > '4.1') {
		$query = X::$obj->query("SHOW FULL COLUMNS FROM ".DB_PREFIX."{$table}", 'SILENT');
	} 
    else {
		$query = X::$obj->query("SHOW COLUMNS FROM ".DB_PREFIX."{$table}", 'SILENT');
	}
	while ($field = @X::$obj->fetch_array($query)) {
		$tablecolumns[$field['Field']] = $field;
	}
	return $tablecolumns;
}

/**
 * 检测是否含有数据表
 * @param:: string $table 表名 不带前缀
 * @return:: bool true/false
*/
function check_exist_table($table) {
	$status = false;
    $status = X::$obj->table_exist($table);
	return $status;
}
/*-------------------------------- 数据表操作函数 End ---------------------------------*/
echo("</body>\n");
echo("</html>");
?>