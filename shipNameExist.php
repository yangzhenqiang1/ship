<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/20
 * Time: 21:37
 */
include_once 'common.php';
$name = $_POST['name'];
$count = $db->table('ships')->where("ShipName='$name'")->count();
if ($count > 0) {
    echo 'error';
} else {
    echo 'ok';
}
?>