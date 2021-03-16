<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/20
 * Time: 22:16
 */
include_once 'common.php';
$id = $_POST['id'];
echo $db->table('gangkou')->where('Id=' . $id)->delete();