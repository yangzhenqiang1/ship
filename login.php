<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/1
 * Time: 10:39
 */
session_start();
include_once 'Db.class.php';
$db = new Db();
$name = $_POST['username'];
$pwd = $_POST['password'];
$user = $db->table('users u, roles r')->where("LoginId='$name'")->andwhere("LoginPwd='$pwd'")
    ->andwhere('u.RoleId=r.Id')->find(['u.*,r.Name as RoleName']);
if ($user) {
    $_SESSION['user'] = $user;
    header('location:dashboard.php');
//    echo 'true';
} else {
    echo '用户名或密码错误';
}
?>