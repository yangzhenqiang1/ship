<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/3
 * Time: 19:37
 */
include_once 'common.php';
$id = $_POST['id'];
echo $db->table('ships')->where('Id=' . $id)->delete();