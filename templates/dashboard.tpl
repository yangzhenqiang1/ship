{include file='head.tpl'}
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
                            <td><input id="shipname" value="{$smarty.get.ShipName|default:''}"
                                       name="ShipName" type="text"></td>
                            <td>吨位:</td>
                            <td><input type="text" value="{$smarty.get.xiao|default:''}" name="xiao" id="xiao"/>
                                -
                                <input min="0" type="text" value="{$smarty.get.da|default:''}" name="da" id="da"/>
                            </td>
                            <td>公司名称:</td>
                            <td><input id="cname" value="{$smarty.get.CompanyName|default:''}"
                                       name="CompanyName" type="text"></td>
                            <td>联系人:</td>
                            <td>
                                <input id="Contact" name="Contact" value="{$smarty.get.Contact|default:''}"
                                       type="text">
                            </td>
                            <td><input id="btn" type="submit" value="搜索"/></td>
                        </tr>
                    </table>

                </form>
            </div><!-- notification announcement -->
            {if $ships|default:null!=null}
                <div class="two_third ">
                    <div class="contenttitle2 nomargintop">
                        <h3>搜寻结果</h3>
                    </div><!--contenttitle-->
                    <br clear="all"/>
                    <script src="js/My97DatePicker/WdatePicker.js"></script>
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
                        {foreach $ships as $ship}
                            <tr value="{$ship.Id}">
                                <td class="center">{$ship.Id}</td>
                                <td class="center">{$ship.ShipName}</td>
                                <td class="center">{$ship.ZaiZhongDun}</td>
                                <td class="center">
                                    <input value="{$ship.ChuanQi}" class="Wdate" type="text" name="time"/>
                                </td>
                                <td class="center">{$ship.CompanyName}</td>
                                <td class="center">{$ship.Contact1}({$ship.Tel1})</td>
                                <td class="center"><input type="text" style="width: 100%;color:black"
                                                          value="{$ship.Mark}" class="Mark"></td>
                                <td class="center"><a href="shipDetails.php?id={$ship.Id}">详情</a>
                                    {if $smarty.session.user.RoleId==1}
                                        <a class="del" style="color: red;cursor: default" value="{$ship.Id}">删除</a>
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                    <a class="btn btn-info" id="export">导出Excel文件</a>
                </div>
                <!--two_third dashboard_left -->
            {/if}
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
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>

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
</script>
{include file='bottom.tpl'}
    

