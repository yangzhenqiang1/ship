<?php
/* Smarty version 3.1.30, created on 2017-06-23 09:52:35
  from "C:\PHP\htdocs\Ship\templates\dashboard.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594c7463108092_89553850',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1e24d0d1ad8848bc6de9bcaecca58de5133b999e' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\dashboard.tpl',
      1 => 1497759637,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_594c7463108092_89553850 (Smarty_Internal_Template $_smarty_tpl) {
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
                <h3>依据条件搜索船舶资料<span style="color:#ccc;font-size:.6em;line-height:1em">(如果不输入任何条件默认显示所有数据)</span></h3>
                <form method="get" action="dashboard.php">
                    <p></p>
                    <table class="sea">
                        <tr>
                            <td>船名:</td>
                            <td><input id="shipname" value="<?php echo (($tmp = @$_GET['ShipName'])===null||$tmp==='' ? '' : $tmp);?>
"
                                       name="ShipName" type="text"></td>
                            <td>吨位:</td>
                            <td><input type="text" value="<?php echo (($tmp = @$_GET['xiao'])===null||$tmp==='' ? '' : $tmp);?>
" name="xiao" id="xiao"/>
                                -
                                <input min="0" type="text" value="<?php echo (($tmp = @$_GET['da'])===null||$tmp==='' ? '' : $tmp);?>
" name="da" id="da"/>
                            </td>
                            <td>公司名称:</td>
                            <td><input id="cname" value="<?php echo (($tmp = @$_GET['CompanyName'])===null||$tmp==='' ? '' : $tmp);?>
"
                                       name="CompanyName" type="text"></td>
                            <td>联系人:</td>
                            <td>
                                <input id="Contact" name="Contact" value="<?php echo (($tmp = @$_GET['Contact'])===null||$tmp==='' ? '' : $tmp);?>
"
                                       type="text">
                            </td>
                            <td><input id="btn" type="submit" value="搜索"/></td>
                        </tr>
                    </table>

                </form>
            </div><!-- notification announcement -->
            <?php if ((($tmp = @$_smarty_tpl->tpl_vars['ships']->value)===null||$tmp==='' ? null : $tmp) != null) {?>
                <div class="two_third ">
                    <div class="contenttitle2 nomargintop">
                        <h3>搜寻结果</h3>
                    </div><!--contenttitle-->
                    <br clear="all"/>
                    <?php echo '<script'; ?>
 src="js/My97DatePicker/WdatePicker.js"><?php echo '</script'; ?>
>
                    <table cellpadding="0" cellspacing="0" border="0" class="stdtable stdtablecb overviewtable2">
                        <thead>
                        <tr>
                            <th class="center">编号</th>
                            <th class="center">船名</th>
                            <th class="center">吨位</th>
                            <th class="center">船期</th>
                            <th class="center">公司名称</th>
                            <th class="center">联系人</th>
                            <th class="center">备注</th>
                            <th class="center"></th>
                        </tr>

                        <tbody>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ships']->value, 'ship');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ship']->value) {
?>
                            <tr value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Id'];?>
">
                                <td class="center"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Id'];?>
</td>
                                <td class="center"><?php echo $_smarty_tpl->tpl_vars['ship']->value['ShipName'];?>
</td>
                                <td class="center"><?php echo $_smarty_tpl->tpl_vars['ship']->value['ZaiZhongDun'];?>
</td>
                                <td class="center">
                                    <input value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['ChuanQi'];?>
" class="Wdate" type="text" name="time"/>
                                </td>
                                <td class="center"><?php echo $_smarty_tpl->tpl_vars['ship']->value['CompanyName'];?>
</td>
                                <td class="center"><?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact1'];?>
(<?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel1'];?>
)</td>
                                <td class="center"><input type="text" style="width: 100%;color:black"
                                                          value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Mark'];?>
" class="Mark"></td>
                                <td class="center"><a href="shipDetails.php?id=<?php echo $_smarty_tpl->tpl_vars['ship']->value['Id'];?>
">详情</a>
                                    <?php if ($_SESSION['user']['RoleId'] == 1) {?>
                                        <a class="del" style="color: red;cursor: default" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Id'];?>
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
                    <a class="btn btn-info" id="export">导出Excel文件</a>
                </div>
                <!--two_third dashboard_left -->
            <?php }?>
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

    $('#export').click(function () {
        history.go(0);
        setTimeout('download()', 10);
    })
    function download() {
        location.href = "createDownExcel.php";
    }
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
            url: 'delShip.php',
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
    $('#clearall').click(function () {
        $('form input:not(#clearall,#btn)').val('');
    })
    //备注
    $('.Mark').blur(function () {
        var id = $(this).closest('tr').attr('value');
        var bz = $(this).val();

        $.ajax({
            url: 'changeship.php',
            type: 'post',
            data: {
                id: id,
                bz: bz
            },
            success: function (data) {

                location.replace();

            }
        })
    })
    //船期
    $('.Wdate').blur(function () {
        var id = $(this).closest('tr').attr('value');
        var date = $(this).val();
        $.ajax({
            url: 'changeship.php',
            type: 'post',
            data: {
                id: id,
                cq: date
            },
            success: function (data) {
                console.log(data);
            }
        })
    })
<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender("file:bottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    

<?php }
}
