<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/1
 * Time: 22:20
 */
include_once 'common.php';
$sm->assign('title', '船舶添加');
$sm->assign('content', '添加船舶信息');
$sm->display('addShip.tpl');

