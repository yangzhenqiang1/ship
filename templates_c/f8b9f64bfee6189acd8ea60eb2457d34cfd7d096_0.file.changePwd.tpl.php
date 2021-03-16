<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:53:56
  from "C:\PHP\htdocs\Ship\templates\changePwd.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c74b4b57561_32512974',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f8b9f64bfee6189acd8ea60eb2457d34cfd7d096' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\changePwd.tpl',
      1 => 1497498159,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_594c74b4b57561_32512974 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<style>

    ul li p span {
        display: inline-block;
        width: 10rem;
        text-align: right;
    }



    .error {
        width: auto;
        color: red;
        padding-left: 5px;
    }

</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>修改密码</h3>
                <form>
                    <ul>
                        <li>
                            <p>
                                <span>请输入原始密码: </span><input type="password" id="old">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>请输入新密码:</span><input id="new" type="password">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>请再次输入新密码:</span><input id="chknew" type="password">
                            </p>
                        </li>
                        <li>
                            <p>
                                <input id="btn" type="button" value="修改"/>
                            </p>
                        </li>
                    </ul>
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
