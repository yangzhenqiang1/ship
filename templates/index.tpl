<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>登录页面</title>
    <link rel="stylesheet" href="css/style.default.css" type="text/css"/>
    <script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
    <!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
    <![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="js/plugins/css3-mediaqueries.js"></script>
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

            {*<div class="keep"><input type="checkbox" style="vertical-align: middle" /> 记住密码</div>*}
        </form>
    </div><!--loginboxinner-->
</div><!--loginbox-->

<script>
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
</script>

</body>
</html>
