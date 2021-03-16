<?php
/* Smarty version 3.1.30, created on 2017-06-23 01:53:48
  from "C:\PHP\htdocs\Ship\templates\index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c74ac097805_87453867',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4644c013f09fe200402b99a8c031426b24eb831b' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\index.tpl',
      1 => 1497081619,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_594c74ac097805_87453867 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>登录页面</title>
    <link rel="stylesheet" href="css/style.default.css" type="text/css"/>
    <?php echo '<script'; ?>
 type="text/javascript" src="js/plugins/jquery-1.7.min.js"><?php echo '</script'; ?>
>
    <!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
    <![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
    <![endif]-->
    <!--[if lt IE 9]>
    <?php echo '<script'; ?>
 src="js/plugins/css3-mediaqueries.js"><?php echo '</script'; ?>
>
    <![endif]-->
    <style>
        #btn {
            width: 100%;
        }
    </style>
</head>

<body class="loginpage">
<div class="loginbox">
    <div class="loginboxinner">

        <div class="logo">
            <h1 class="logo">SHIP.<span>用户登陆</span></h1>
            <span class="slogan">船舶管理系统</span>
        </div><!--logo-->

        <br clear="all"/><br/>

        <div class="nousername">
            <div class="loginmsg">用户名不为空.</div>
        </div><!--nousername-->

        <div class="nopassword">
            <div class="loginmsg">密码不为空.</div>
        </div><!--nopassword-->
        <div class="loginerror">
            <div class="loginmsg">用户名或密码错误.</div>
        </div><!--nopassword-->
        <form action="login.php" method="post">

            <div class="username">
                <div class="usernameinner">
                    <input type="text" name="username" placeholder="请输入用户名" id="username"/>
                </div>
            </div>

            <div class="password">
                <div class="passwordinner">
                    <input type="password" name="password" placeholder="请输入密码" id="password"/>
                </div>
            </div>

            <input type="submit" id="btn" value="登录"/>

            
        </form>
    </div><!--loginboxinner-->
</div><!--loginbox-->

<?php echo '<script'; ?>
>
    //        jQuery(".nousername").show();
    jQuery('#btn').click(function () {
        jQuery(".nopassword,.nousername,.loginerror").hide();
        if (jQuery("#username").val() == '') {
            jQuery(".nousername").fadeIn();
            return false;
        }
        if (jQuery("#password").val() == '') {
            jQuery(".nopassword").fadeIn();
            return false;
        }
        jQuery.ajax({
            url: 'login.php',
            type: 'post',
            data: {
                username: jQuery("#username").val(),
                password: jQuery("#password").val()
            },
            success: function (data) {
                if (data == 'true') {
                    location.href = 'dashboard.php';
                } else {
                    jQuery(".loginerror").fadeIn();
                }
            }
        })
    })
<?php echo '</script'; ?>
>

</body>
</html>
<?php }
}
