<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/2
 * Time: 9:37
 */
include_once 'common.php';
if (isset($_POST['oldpwd'])) {
    $user = $_SESSION['user'];
    if ($user['LoginPwd'] != $_POST['oldpwd']) {
        echo 'error';
    } else {
        $arr['LoginPwd'] = $_POST['newpwd'];
        echo $db->table('users')->where('Id=' . $user['Id'])->update($arr);
    }
} else {
    $sm->assign('title', '修改密码');
    $sm->assign('content', '此处用于当前用户修改密码');
    $sm->display('changePwd.tpl');
}
?>