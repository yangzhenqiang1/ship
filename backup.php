<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/9
 * Time: 22:46
 */
include_once 'common.php';
$sm->assign('title', '数据备份');
$sm->assign('content', '');
$dir = "backup/";
// Open a known directory, and proceed to read its contents
$files = array();
if (is_dir($dir)) {
    if ($dh = opendir($dir)) {
        while (($file = readdir($dh)) !== false) {
            $files[] = $file;
        }
        closedir($dh);
    }
}
unset($files[0],$files[1]);
$sm->assign('files',$files);
$sm->display('backup.tpl');
?>
