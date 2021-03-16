<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>控制台页面</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.default.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    {*<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>*}

    <style>
        body {
            min-width: 1280px;
        }
        input[type=text] {
            border: 1px solid #444;
            height: 20px;
        }
        .headermenu li a {
            padding: 3px;
        }

        input[type=number] {
            width: auto;
            max-width: 8rem;
        }

        input {
            border: 1px solid #aaa;
        }

        #btn {
            width: 8rem;
        }

        .header {
            min-height: 0;
        }

        .vernav, .vernav2 {
            width: 150px;
        }

        .vernav2 {
            width: 150px;
            position: absolute;
            left: 0;
        }

        .centercontent {
            margin-left: 151px;
        }
    </style>
</head>

<body class="withvernav" style="padding-bottom: 80px">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">SHIP.<span>船舶管理</span></h1>
            <span class="slogan">船舶管理系统</span>
            <br clear="all"/>

        </div><!--left-->

        <div class="right">
            <div class="userinfo">
                <img src="images/thumbs/avatar.png" alt=""/>
                <span>{$smarty.session.user.LoginId}</span>
            </div><!--userinfo-->
        </div><!--right-->
    </div><!--topheader-->
    <div class="header">
    </div>
    <div class="vernav2 iconmenu">
        <ul>
            {foreach $paths as $path}
                <li><a href="{$path.Path}" class="elements">{$path.Name}</a></li>
            {/foreach}
            <li><a href="userEditor.php" class="elements">修改用户信息</a></li>
            <li><a href="changePwd.php" class="elements">修改密码</a></li>
            <li><a href="exit.php" class="elements">退出系统</a></li>
        </ul>

    </div><!--leftmenu-->