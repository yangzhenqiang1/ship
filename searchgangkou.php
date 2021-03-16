<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/11
 * Time: 14:28
 */
include_once 'common.php';
$area = $_POST['Area'];
$gks = $db->table('gangkou')->where("Area='$area'")->select(array('Id','Name'));
echo json_encode($gks);