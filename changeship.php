<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/10
 * Time: 17:24
 */
include_once 'common.php';
$id = $_POST['id'];
if (isset($_POST['cq'])) {
    $arr['ChuanQi'] = $_POST['cq'];
}
if (isset($_POST['bz'])) {
    $arr['Mark'] = $_POST['bz'];
}
echo $db->table('ships')->where('id=' . $id)->update($arr);