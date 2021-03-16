<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/5/31
 * Time: 22:15
 */
include_once 'common.php';
if ($_GET) {//如果有数据提交，则执行搜索动作
    $uid = $user['Id'];
    $ships = $db->table('ships')->where('1=1');
    if ($user['RoleId'] != 1) {
        $ships = $ships->andwhere('Uid=' . $uid);
    }
    if (!empty($_GET['ShipName']))//按船名
    {
        $sname = $_GET['ShipName'];
        $ships = $ships->andwhere("ShipName like '%$sname%'");
    }
    if (!empty($_GET['CompanyName']))//按公司名称
    {
        $CompanyName = $_GET['CompanyName'];
        $ships = $ships->andwhere("CompanyName like '%$CompanyName%'");
    }
    if (!empty($_GET['Contact']))//按联系人
    {
        $Contact = $_GET['Contact'];
        $ships = $ships->andwhere("(Contact1 = '$Contact' or Contact2 = '$Contact' or Contact3 = '$Contact')");
    }
    if (!empty($_GET['xiao']) && !empty($_GET['da']))//最小数和最大数都输入
    {
        $xiao = $_GET['xiao'];
        $da = $_GET['da'];
        $ships = $ships->andwhere("ZaiZhongDun >$xiao and ZaiZhongDun<$da");
    }
    if (!empty($_GET['xiao']) && empty($_GET['da']))//只输入最小数
    {
        $xiao = $_GET['xiao'];
        $ships = $ships->andwhere("ZaiZhongDun >$xiao");
    }
    if (!empty($_GET['xiao']) && !empty($_GET['da']))//最大数输入
    {
        $xiao = $_GET['xiao'];
        $da = $_GET['da'];
        $ships = $ships->andwhere("ZaiZhongDun<$da");
    }
    $ships = $ships->select();
    $sm->assign('ships', $ships);
    $_SESSION['ships'] = json_encode($ships);
}
$sm->display('dashboard.tpl');