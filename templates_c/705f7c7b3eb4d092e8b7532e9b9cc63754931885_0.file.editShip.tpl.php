<?php
/* Smarty version 3.1.30, created on 2017-06-27 14:35:56
  from "C:\PHP\htdocs\Ship\templates\editShip.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5951fccc019b27_97737050',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '705f7c7b3eb4d092e8b7532e9b9cc63754931885' => 
    array (
      0 => 'C:\\PHP\\htdocs\\Ship\\templates\\editShip.tpl',
      1 => 1497499564,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:head.tpl' => 1,
    'file:bottom.tpl' => 1,
  ),
),false)) {
function content_5951fccc019b27_97737050 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<style>
    table {
        margin-left: 55px;
    }

    td {

        padding: 10px;
    }

    .number {
        width: 80px;
    }
</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">

                <h3>在此处修改船舶信息</h3>
                <form id="formship" action="modifyShipAction.php" method="post">
                    <input type="hidden" name="Id" value="<?php echo $_GET['id'];?>
"/>
                    <table>
                        <tr>
                            <td>船名:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ShipName'];?>
</td>
                            <td>公司名称:</td>
                            <td colspan="3"><input value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['CompanyName'];?>
" id="cname" style="width:250px"
                                                   name="CompanyName" type="text"></td>
                        </tr>
                        <tr>
                            <td>总吨位:</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['ship']->value['ZongDun'];?>
</td>
                            <td>载重吨:</td>
                            <td><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['ZaiZhongDun'];?>
" name="ZaiZhongDun" type="text"></td>
                            <td>净吨:</td>
                            <td><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['JingDun'];?>
" name="JingDun" type="text"></td>

                        </tr>
                        <tr>
                            <td>舱口数:</td>
                            <td><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['CangkouShu'];?>
" name="CangkouShu" type="text"></td>
                            <td>总仓容:</td>
                            <td><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['ZongCangRong'];?>
" name="ZongCangRong" type="text"></td>
                            <td>满载吃水:</td>
                            <td><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['ManzaiChishui'];?>
" name="ManzaiChishui" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>船长:</td>
                            <td><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Length'];?>
" name="Length" type="text"></td>
                            <td>船宽:</td>
                            <td colspan="3"><input class="number" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Width'];?>
" name="Width" type="text"></td>
                        </tr>
                        <tr>
                            <td>船期:</td>
                            <td colspan="5"><input class="number" name="ChuanQi" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['ChuanQi'];?>
" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>联系人1:</td>
                            <td><input name="Contact1" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact1'];?>
" type="text"></td>
                            <td>联系电话1:</td>
                            <td colspan="3"><input name="Tel1" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel1'];?>
" type="text"></td>
                        </tr>

                        <tr>
                            <td>联系人2:</td>
                            <td><input name="Contact2" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact2'];?>
" type="text"></td>
                            <td>联系电话2:</td>
                            <td colspan="3"><input name="Tel2" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel2'];?>
" type="text"></td>
                        </tr>
                        <tr>
                            <td>联系人3:</td>
                            <td><input name="Contact3" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Contact3'];?>
" type="text"></td>
                            <td>联系电话3:</td>
                            <td colspan="3"><input name="Tel3" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Tel3'];?>
" type="text"></td>
                        </tr>

                        <tr>
                            <td>备注:</td>
                            <td colspan="5"><input style="width: 60%" type="text" value="<?php echo $_smarty_tpl->tpl_vars['ship']->value['Mark'];?>
" name="Mark"></td>
                        </tr>

                        <tr>
                            <td colspan="6" style="text-align: center">
                                <input id="btn" class="btn btn-primary" style="width: auto" type="submit"
                                       value="修改"/></td>
                        </tr>
                    </table>
                </form>
            </div><!-- notification announcement -->
        </div>
    </div><!-- centercontent -->
</div>
<?php $_smarty_tpl->_subTemplateRender("file:bottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    

<?php }
}
