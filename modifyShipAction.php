<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/2
 * Time: 10:08
 */
include_once 'common.php';

$res=$db->table('ships')->where('Id='.$_POST['Id'])->update($_POST);
header('location:shipDetails.php?id='.$_POST['Id']);
