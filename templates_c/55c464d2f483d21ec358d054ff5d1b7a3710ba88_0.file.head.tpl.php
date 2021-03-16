<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:52:35
  from "C:\PHP\htdocs\Ship\templates\head.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c74631c0864_83477977',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '55c464d2f483d21ec358d054ff5d1b7a3710ba88' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\head.tpl',
      1 => 1497085364,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_594c74631c0864_83477977 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>控制台页面</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.default.css" type="text/css"/>
    <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.min.js"><?php echo '</script'; ?>
>
    

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
                <span><?php echo $_SESSION['user']['LoginId'];?>
</span>
            </div><!--userinfo-->
        </div><!--right-->
    </div><!--topheader-->
    <div class="header">
    </div>
    <div class="vernav2 iconmenu">
        <ul>
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['paths']->value, 'path');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['path']->value) {
?>
                <li><a href="<?php echo $_smarty_tpl->tpl_vars['path']->value['Path'];?>
" class="elements"><?php echo $_smarty_tpl->tpl_vars['path']->value['Name'];?>
</a></li>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

            <li><a href="userEditor.php" class="elements">修改用户信息</a></li>
            <li><a href="changePwd.php" class="elements">修改密码</a></li>
            <li><a href="exit.php" class="elements">退出系统</a></li>
        </ul>

    </div><!--leftmenu--><?php }
}
