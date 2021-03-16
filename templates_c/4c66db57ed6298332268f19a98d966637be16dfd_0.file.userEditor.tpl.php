<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:53:53
  from "C:\PHP\htdocs\Ship\templates\userEditor.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c74b1426268_50201907',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4c66db57ed6298332268f19a98d966637be16dfd' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\userEditor.tpl',
      1 => 1497498117,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_594c74b1426268_50201907 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="centercontent">

    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>用户编辑</h3>
                <form>
                    <ul>
                        <li>
                            <p>
                                <span class="iin">用户名: </span><?php echo $_smarty_tpl->tpl_vars['user']->value['LoginId'];?>

                            </p>
                        </li>
                        <li>
                            <p>
                                <span>姓名:</span><input value="<?php echo $_smarty_tpl->tpl_vars['user']->value['Name'];?>
" id="Name" name="Name" type="text">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>电话:</span><input type="text" id="Tel" value="<?php echo $_smarty_tpl->tpl_vars['user']->value['Tel'];?>
">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span class="iin">职务:</span><?php echo $_smarty_tpl->tpl_vars['user']->value['RoleName'];?>

                            </p>
                        </li>
                        <li>
                            <p>
                                <input id="btn" type="submit" value="修改"/>
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
        jQuery.ajax({
            url: 'userEditAction.php',
            type: 'post',
            data: {
                Name: jQuery('#Name').val(),
                Tel: jQuery('#Tel').val()
            },
            success: function (data) {
                console.log(data);
                if (data == 1) {
                    alert('信息修改完成，请重新登陆');
                    location.href = 'index.php';
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
