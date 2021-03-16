<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/1
 * Time: 23:39
 */
include_once 'common.php';
$id = $_GET['id'];
$ship = $db->table('ships')->where('Id=' . $id)->find();
$sm->assign('ship', $ship);
$sm->display('shipDetails.tpl');
?>