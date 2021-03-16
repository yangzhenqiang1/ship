<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/1
 * Time: 19:44
 */
include_once 'common.php';
$id = $_POST['id'];
echo $db->table('users')->where('Id=' . $id)->delete();
?>