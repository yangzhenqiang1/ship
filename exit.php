<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/2
 * Time: 9:51
 */
include_once 'common.php';
session_unset();
session_destroy();
header('location:index.php');
?>