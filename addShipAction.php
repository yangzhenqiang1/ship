<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/2
 * Time: 10:08
 */
include_once 'common.php';
$arr=$_POST;
$arr['Uid']=$user['Id'];
$res=$db->table('ships')->insert($arr);
echo $res['count'];
