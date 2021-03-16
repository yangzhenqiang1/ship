<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:54:56
  from "C:\PHP\htdocs\Ship\templates\gangkoudelete.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c74f08388c0_73714750',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '10805c3d000c7067146df20b33954d5275d83162' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\gangkoudelete.tpl',
      1 => 1497968233,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_594c74f08388c0_73714750 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<style>
    table.sea {
        margin: 15px 10px 15px 55px;
    }

    .sea td {
        padding: 0 5px;
    }

    .sea td #shipname {
        width: 100px;
    }

    #xiao, #da {
        width: 80px;
    }

    #cname {
        width: 200px;
    }

    #Contact {
        width: 100px;
    }

    #btn {
        padding: 0 5px;
        line-height: 20px;
    }

    .two_third {
        width: 100%;
    }

    .stdtable thead th.center, td.center {
        text-align: center;
    }

    a.btn {
        background-image: none;
        float: right;
    }

    .Wdate {
        width: 100px;
    }
</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <a class="close"></a>
                <h3>港口列表</h3>
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable stdtablecb overviewtable2">
                    <thead>
                    <tr>
                        <th class="center">编号</th>
                        <th class="center">区域</th>
                        <th class="center">港口</th>

                        <th class="center"></th>
                    </tr>

                    <tbody>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['gks']->value, 'gk');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['gk']->value) {
?>
                        <tr value="<?php echo $_smarty_tpl->tpl_vars['gk']->value['Id'];?>
">
                            <td class="center"><?php echo $_smarty_tpl->tpl_vars['gk']->value['Id'];?>
</td>
                            <td class="center"><?php echo $_smarty_tpl->tpl_vars['gk']->value['Area'];?>
</td>
                            <td class="center"><?php echo $_smarty_tpl->tpl_vars['gk']->value['Name'];?>
</td>
                            <td class="center">
                                <?php if ($_SESSION['user']['RoleId'] == 1) {?>
                                    <a class="del" style="color: red;cursor: default" value="<?php echo $_smarty_tpl->tpl_vars['gk']->value['Id'];?>
">删除</a>
                                <?php }?>
                            </td>
                        </tr>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                    </tbody>
                </table>
            </div><!-- notification announcement -->
        </div><!-- #updates -->

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
    //删除
    var id, tr;
    $(".del").click(function () {
        tr = $(this).closest('tr');
        id = $(this).attr('value');
        $('.modal-body').text('确定删除该数据吗');
        $('.modal-footer').html(' <button type="button" class="btn btn-default" data-dismiss="modal">' +
            '取消</button><button type="button" id="sub" class="btn btn-primary">确定</button>');
        $('#myModal').modal('show');
    })
    //确定删除
    $('.modal-footer').on('click', '#sub', function () {
        $.ajax({
            url: 'delgangkou.php',
            type: 'post',
            data: {
                id: id
            },
            success: function (data) {
                if (data == 1) {
                    tr.remove();
                    $('#myModal').modal('hide');
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
