<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/2
 * Time: 8:22
 */
include_once 'common.php';
$user = $_SESSION['user'];
$sm->assign('user', $user);
$sm->assign('title','用户信息');
$sm->assign('content','此处可编辑当前用户的信息');
$sm->display('userEditor.tpl');
?>