<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/11
 * Time: 11:22
 */
include_once 'common.php';
$uid = $user['Id'];
$gks = $db->table('gangkou')->where('Uid=' . $uid)->select();
$sm->assign('gks', $gks);
$sm->display('gangkou.tpl');