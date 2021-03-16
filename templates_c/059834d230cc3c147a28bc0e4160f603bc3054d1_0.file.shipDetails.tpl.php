<?php
/* Smarty version 3.1.30, created on 2017-06-27 14:34:33
  from "C:\PHP\htdocs\Ship\templates\shipDetails.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5951fc79ef7e11_03091785',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '059834d230cc3c147a28bc0e4160f603bc3054d1' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\shipDetails.tpl',
      1 => 1497964348,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_5951fc79ef7e11_03091785 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<style>
    table {
        margin-left: 55px;
    }

    td {
        font-size: 1.3em;
        padding: 10px;
    }

    a#btn, a#top {
        font-weight: 100;
        background: none;
    }

    a#top {
        color: red;
    }
</style>
<div class="centercontent">

    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">

            <div class="notibar announcement">
                <?php if ((($tmp = @$_smarty_tpl->tpl_vars['ship']->value)===null||$tmp==='' ? null : $tmp) != null) {?>
                    <h3>船舶详细信息</h3>
                    <table>
                        <tr>
                            <td>船名:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ShipName'];?>
</td>
                            <td>公司名称:</td>
                            <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['ship']->value['CompanyName'];?>
</td>
                        </tr>
                        <tr>
                            <td>总吨位:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ZongDun'];?>
</td>
                            <td>载重吨:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ZaiZhongDun'];?>
</td>
                            <td>净吨:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['JingDun'];?>
</td>
                        </tr>
                        <tr>
                            <td>舱口数:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['CangkouShu'];?>
</td>
                            <td>总仓容:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ZongCangRong'];?>
</td>
                            <td>满载吃水:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ManzaiChishui'];?>

                            </td>
                        </tr>
                        <tr>
                            <td>船长:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['Length'];?>
</td>
                            <td>船宽:</td>
                            <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Width'];?>
</td>
                        </tr>
                        <tr>
                            <td>船期:</td>
                            <td colspan="5"><?php echo $_smarty_tpl->tpl_vars['ship']->value['ChuanQi'];?>

                            </td>
                        </tr>
                        <tr>
                            <td>联系人1:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact1'];?>
</td>
                            <td>联系电话:</td>
                            <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel1'];?>
</td>
                        </tr>
                        <tr>
                            <td>联系人2:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact2'];?>
</td>
                            <td>联系电话:</td>
                            <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel2'];?>
</td>
                        </tr>
                        <tr>
                            <td>联系人3:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact3'];?>
</td>
                            <td>联系电话:</td>
                            <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel3'];?>
</td>
                        </tr>
                        <tr>
                            <td>备注:</td>
                            <td colspan="5"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Mark'];?>
</td>
                        </tr>
                        <tr>
                            <td colspan="6" style="text-align: center">
                                <a id="btn" href="editShip.php?id=<?php echo $_GET['id'];?>
" class="btn btn-primary">修改</a>
                                <?php if ($_SESSION['user']['RoleId'] == 1) {?>
                                    <a id="top" value="<?php echo $_GET['id'];?>
" class="btn btn-primary">删除</a>
                                <?php }?>
                                <a style="background: none;font-weight: 100" onclick="history.go(-1)" class="btn btn-primary">返回</a>
                            </td>
                        </tr>
                    </table>
                <?php } else { ?>
                    <h3>数据已删除</h3>
                <?php }?>
            </div><!-- notification announcement -->

        </div>
    </div><!-- centercontent -->
</div>
<?php echo '<script'; ?>
 type="text/javascript" src="js/bootstrap.min.js"><?php echo '</script'; ?>
>
<!-- 模态框（Modal） -->
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
                <button type="button" onclick="javascript:history.go(-1);" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<?php echo '<script'; ?>
>

    //删除
    var id;
    jQuery("#top").click(function () {
        id = jQuery(this).attr('value');
        jQuery('.modal-body').text('确定删除该数据吗');
        jQuery('.modal-footer').html(' <button type="button" class="btn btn-default" data-dismiss="modal">' +
            '取消</button><button type="button" id="sub" class="btn btn-primary">确定</button>');
        jQuery('#myModal').modal('show');

    })
    //确定删除
    jQuery('.modal-footer').on('click', '#sub', function () {
        jQuery.ajax({
            url: 'delShip.php',
            type: 'post',
            data: {
                id: id
            },
            success: function (data) {
                if (data == 1) {
                    history.go(-1);
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
