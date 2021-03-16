<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/20
 * Time: 22:01
 */
include_once 'common.php';
$gks =$db->table('gangkou')->where('1=1');
if ($user['RoleId'] != 1) {
    $gks = $gks->andwhere('Uid=' . $uid);
}
$gks=$gks->select();
$sm->assign('gks', $gks);
$sm->display('gangkoudelete.tpl');