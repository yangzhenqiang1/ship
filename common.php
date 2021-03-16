<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/5/31
 * Time: 22:07
 */
session_start();
if(!isset($_SESSION['user'])){
    header('location:index.php');
    exit();
}
date_default_timezone_set('PRC');
include_once 'Db.class.php';
include_once 'smarty/Smarty.class.php';
$db = new Db();
$sm = new Smarty();
$user=$_SESSION['user'];
$rid=$user['RoleId'];
$menu = $db->table('roles')->where('Id='.$rid)->find(['Menus']);
$menus=explode(',',$menu['Menus']);
$paths =$db->table('paths')->in('Id',$menus)->select();
$sm->assign('paths',$paths);
$sm->assign('title','');
$sm->assign('content','');
$sm->assign('date',date('Y-m-d H:i:s'));
?>
