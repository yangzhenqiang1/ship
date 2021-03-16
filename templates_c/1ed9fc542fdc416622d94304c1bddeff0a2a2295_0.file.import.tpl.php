<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:52:41
  from "C:\PHP\htdocs\Ship\templates\import.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c746927a342_17227001',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1ed9fc542fdc416622d94304c1bddeff0a2a2295' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\import.tpl',
      1 => 1497497683,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_594c746927a342_17227001 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<style>

    table {
        margin: 30px 55px;
    }
    #import input{
        margin: 0;
        padding: 0;
        vertical-align: top;
        font-weight: 100;
        display: inline-block;
    }
    #import input[type=submit]{
        padding: 2px 10px;
    }
</style>
<div class="centercontent">

    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>船舶资料导入</h3>
                <form method="post" action="insertExcel.php" enctype="multipart/form-data">
                    <table id="import">
                        <tr>
                            <td><input type="file" name="upfile"></td>
                            <td><input type="submit" class="btn " value="数据导入"></td>
                        </tr>
                    </table>
                </form>
            </div><!-- notification announcement -->
        </div><!-- centercontent -->
    </div>
</div>
<?php echo '<script'; ?>
>
    jQuery('#btn').click(function () {
        jQuery('span.error').remove();
        if (jQuery('#old').val() == "") {
            jQuery('#old').after('<span class="error">原始密码不能为空</span>');
            return;
        }
        if (jQuery('#new').val() == "") {
            jQuery('#new').after('<span class="error">新密码不能为空</span>');
            return;
        }
        if (jQuery('#new').val() != jQuery('#chknew').val()) {
            jQuery('#chknew').after('<span class="error">两次密码输入不一致</span>');
            return;
        }
        jQuery.ajax({
            url: 'changePwd.php',
            type: 'post',
            data: {
                oldpwd: jQuery('#old').val(),
                newpwd: jQuery('#new').val()
            },
            success: function (data) {
                console.log(data);
                if (data == 1) {
                    alert('密码修改完成，请重新登陆');
                    location.href = 'index.php';
                }
                if (data == 0) {
                    alert('新密码和原始密码相同');
                }
                if (data == 'error') {
                    jQuery('#old').after('<span class="error">原始密码输入错误</span>');
                }
            }
        })
    })
<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender("file:bottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    

<?php }
}
