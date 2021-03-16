{include file='head.tpl'}
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
                    <input type="hidden" name="Id" value="{$smarty.get.id}"/>
                    <table>
                        <tr>
                            <td>船名:</td>
                            <td>{$ship.ShipName}</td>
                            <td>公司名称:</td>
                            <td colspan="3"><input value="{$ship.CompanyName}" id="cname" style="width:250px"
                                                   name="CompanyName" type="text"></td>
                        </tr>
                        <tr>
                            <td>总吨位:</td>
                            <td>{$ship.ZongDun}</td>
                            <td>载重吨:</td>
                            <td><input class="number" value="{$ship.ZaiZhongDun}" name="ZaiZhongDun" type="text"></td>
                            <td>净吨:</td>
                            <td><input class="number" value="{$ship.JingDun}" name="JingDun" type="text"></td>

                        </tr>
                        <tr>
                            <td>舱口数:</td>
                            <td><input class="number" value="{$ship.CangkouShu}" name="CangkouShu" type="text"></td>
                            <td>总仓容:</td>
                            <td><input class="number" value="{$ship.ZongCangRong}" name="ZongCangRong" type="text"></td>
                            <td>满载吃水:</td>
                            <td><input class="number" value="{$ship.ManzaiChishui}" name="ManzaiChishui" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>船长:</td>
                            <td><input class="number" value="{$ship.Length}" name="Length" type="text"></td>
                            <td>船宽:</td>
                            <td colspan="3"><input class="number" value="{$ship.Width}" name="Width" type="text"></td>
                        </tr>
                        <tr>
                            <td>船期:</td>
                            <td colspan="5"><input class="number" name="ChuanQi" value="{$ship.ChuanQi}" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>联系人1:</td>
                            <td><input name="Contact1" value="{$ship.Contact1}" type="text"></td>
                            <td>联系电话1:</td>
                            <td colspan="3"><input name="Tel1" value="{$ship.Tel1}" type="text"></td>
                        </tr>

                        <tr>
                            <td>联系人2:</td>
                            <td><input name="Contact2" value="{$ship.Contact2}" type="text"></td>
                            <td>联系电话2:</td>
                            <td colspan="3"><input name="Tel2" value="{$ship.Tel2}" type="text"></td>
                        </tr>
                        <tr>
                            <td>联系人3:</td>
                            <td><input name="Contact3" value="{$ship.Contact3}" type="text"></td>
                            <td>联系电话3:</td>
                            <td colspan="3"><input name="Tel3" value="{$ship.Tel3}" type="text"></td>
                        </tr>

                        <tr>
                            <td>备注:</td>
                            <td colspan="5"><input style="width: 60%" type="text" value="{$ship.Mark}" name="Mark"></td>
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
{include file='bottom.tpl'}
    

