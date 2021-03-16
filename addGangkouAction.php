<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/11
 * Time: 11:09
 */
include_once 'common.php';
if ($_POST) {
    $arr=$_POST;
    $arr['Uid']=$user['Id'];
    $db->table('gangkou')->insert($arr);
}
header('location:addgangkou.php');