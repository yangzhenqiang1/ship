<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:53:41
  from "C:\PHP\htdocs\Ship\templates\backup.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c74a55f7379_18557473',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '33cf86dafec81c171df64eeaf1a400b7cc7e1510' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\backup.tpl',
      1 => 1497498383,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_594c74a55f7379_18557473 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<style>
    a.btn {
        background-image: none;
        float: right;
    }

    div.row {
        margin: 0 55px;
    }

    .col-sm-2 {
        box-sizing: border-box;
        padding: 10px 15px;
        font-size: 1.3em;
    }

</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>备份列表</h3>
                <div class="row">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['files']->value, 'file');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['file']->value) {
?>
                        <div class="col-sm-2"><a href=""><?php echo $_smarty_tpl->tpl_vars['file']->value;?>
</a></div>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                </div>

            </div><!-- notification announcement -->
        </div><!-- #updates -->
        <a href="backupAction.php" class="btn btn-primary btn-lg ">数据备份</a>
    </div><!--contentwrapper-->
    <br clear="all"/>
</div><!-- centercontent -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    提示信息
                </h4>
            </div>
            <div class="modal-body">
                数据修改完成
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<?php echo '<script'; ?>
 type="text/javascript" src="js/bootstrap.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>

    //        jQuery('.modal-body').text('确定删除该数据吗');
    //        jQuery('.modal-footer').html(' <button type="button" class="btn btn-default" data-dismiss="modal">' +
    //            '取消</button><button type="button" id="sub" class="btn btn-primary">确定</button>');
    //        jQuery('#myModal').modal('show');


<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender("file:bottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>



<?php }
}
