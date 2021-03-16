<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/11
 * Time: 14:43
 */
include_once 'common.php';
$id = $_POST['gk'];
$zl = $db->table('gangkou')->where('Id=' . $id)->find(array('ZiLiao'));
echo json_encode($zl);
?>