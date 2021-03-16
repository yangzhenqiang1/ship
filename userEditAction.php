<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/2
 * Time: 9:13
 */
include_once 'common.php';
$user = $_SESSION['user'];
$id = $user['Id'];
echo $db->table('users')->where('Id=' . $id)->update($_POST);

?>