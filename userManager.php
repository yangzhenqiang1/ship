<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/1
 * Time: 16:38
 */
include_once 'common.php';
if ($_POST) {
    if(!empty($_POST['Id'])){
        $db->table('users')->where('Id='.$_POST['Id'])->update($_POST);
    }else {
        unset($_POST['Id']);
        $db->table('users')->insert($_POST);
    }
//    header("location:userManager.php");
}
$users = $db->table('users u,roles r')->where('u.RoleId=r.Id')
    ->select(['u.*,r.Name RoleName']);
$sm->assign('users', $users);
$sm->display('userManager.tpl');
?>