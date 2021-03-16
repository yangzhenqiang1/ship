{include file='head.tpl'}
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
                {if $ship|default:null!=null}
                    <h3>船舶详细信息</h3>
                    <table>
                        <tr>
                            <td>船名:</td>
                            <td>{$ship.ShipName}</td>
                            <td>公司名称:</td>
                            <td colspan="3">{$ship.CompanyName}</td>
                        </tr>
                        <tr>
                            <td>总吨位:</td>
                            <td>{$ship.ZongDun}</td>
                            <td>载重吨:</td>
                            <td>{$ship.ZaiZhongDun}</td>
                            <td>净吨:</td>
                            <td>{$ship.JingDun}</td>
                        </tr>
                        <tr>
                            <td>舱口数:</td>
                            <td>{$ship.CangkouShu}</td>
                            <td>总仓容:</td>
                            <td>{$ship.ZongCangRong}</td>
                            <td>满载吃水:</td>
                            <td>{$ship.ManzaiChishui}
                            </td>
                        </tr>
                        <tr>
                            <td>船长:</td>
                            <td>{$ship.Length}</td>
                            <td>船宽:</td>
                            <td colspan="3">{$ship.Width}</td>
                        </tr>
                        <tr>
                            <td>船期:</td>
                            <td colspan="5">{$ship.ChuanQi}
                            </td>
                        </tr>
                        <tr>
                            <td>联系人1:</td>
                            <td>{$ship.Contact1}</td>
                            <td>联系电话:</td>
                            <td colspan="3">{$ship.Tel1}</td>
                        </tr>
                        <tr>
                            <td>联系人2:</td>
                            <td>{$ship.Contact2}</td>
                            <td>联系电话:</td>
                            <td colspan="3">{$ship.Tel2}</td>
                        </tr>
                        <tr>
                            <td>联系人3:</td>
                            <td>{$ship.Contact3}</td>
                            <td>联系电话:</td>
                            <td colspan="3">{$ship.Tel3}</td>
                        </tr>
                        <tr>
                            <td>备注:</td>
                            <td colspan="5">{$ship.Mark}</td>
                        </tr>
                        <tr>
                            <td colspan="6" style="text-align: center">
                                <a id="btn" href="editShip.php?id={$smarty.get.id}" class="btn btn-primary">修改</a>
                                {if $smarty.session.user.RoleId==1}
                                    <a id="top" value="{$smarty.get.id}" class="btn btn-primary">删除</a>
                                {/if}
                                <a style="background: none;font-weight: 100" onclick="history.go(-1)" class="btn btn-primary">返回</a>
                            </td>
                        </tr>
                    </table>
                {else}
                    <h3>数据已删除</h3>
                {/if}
            </div><!-- notification announcement -->

        </div>
    </div><!-- centercontent -->
</div>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
<script>

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

</script>
{include file='bottom.tpl'}
    

