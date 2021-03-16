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

                <h3>在此处添加船舶信息<span style="color:red;font-size:.6em;line-height:1em">船名和总吨位添加后不能修改</span></h3>
                <form id="formship" method="post">
                    <table>
                        <tr>
                            <td>公司名称:</td>
                            <td><input id="cname" style="width:250px" name="CompanyName" type="text"></td>
                            <td>船名:</td>
                            <td colspan="3"><input id="shipname" name="ShipName" type="text"></td>

                        </tr>
                        <tr>
                            <td>总吨位:</td>
                            <td><input class="number" name="ZongDun" type="text"></td>
                            <td>载重吨:</td>
                            <td><input class="number" name="ZaiZhongDun" type="text"></td>
                            <td>净吨:</td>
                            <td><input class="number" name="JingDun" type="text"></td>

                        </tr>
                        <tr>
                            <td>舱口数:</td>
                            <td><input class="number" name="CangkouShu" type="text"></td>
                            <td>总仓容:</td>
                            <td><input class="number" name="ZongCangRong" type="text"></td>
                            <td>满载吃水:</td>
                            <td><input class="number" name="ManzaiChishui" type="text"></td>
                        </tr>
                        <tr>
                            <td>船长:</td>
                            <td><input class="number" name="Length" type="text"></td>
                            <td>船宽:</td>
                            <td colspan="3"><input class="number" name="Width" type="text"></td>
                        </tr>
                        <tr>
                            <td>船期:</td>
                            <td colspan="5"><input class="number" name="ChuanQi" type="text"></td>
                        </tr>
                        <tr>
                            <td>联系人1:</td>
                            <td><input name="Contact1" type="text"></td>
                            <td>联系电话1:</td>
                            <td colspan="3"><input name="Tel1" type="text"></td>
                        </tr>

                        <tr>
                            <td>联系人2:</td>
                            <td><input name="Contact2" type="text"></td>
                            <td>联系电话2:</td>
                            <td colspan="3"><input name="Tel2" type="text"></td>
                        </tr>
                        <tr>
                            <td>联系人3:</td>
                            <td><input name="Contact3" type="text"></td>
                            <td>联系电话3:</td>
                            <td colspan="3"><input name="Tel3" type="text"></td>
                        </tr>

                        <tr>
                            <td>备注:</td>
                            <td colspan="5"><input style="width: 60%" type="text" name="Mark"></td>
                        </tr>

                        <tr>
                            <td colspan="6" style="text-align: center">
                                <input id="btn" class="btn btn-primary" style="width: auto" type="button"
                                       value="添加船舶信息"/></td>
                        </tr>
                    </table>
                </form>
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
                数据添加完成
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
    function resetFields() {
        $("input[type=text], input[type=password]").removeClass("required");
    }
    $("#formship input:not(input[name=Contact2],input[name=Contact3],input[name=Tel2],input[name=Tel3]),#Mark").keyup(function () {
        $(this).removeClass("required");
    }).change(function () {
        $(this).removeClass("required");
    })
    function checkExit() {
        $.ajax({
            url: 'shipNameExist.php',
            type: 'post',
            data: {
                name: $('#shipname').val()
            },
            success: function (data) {
                console.log(data);
                if (data == 'error') {
                    bol = false;
                    $('#shipname').after("<span style='margin-left:5px;color:red;font-size:12px'>船名已存在</span>")
                } else {
                    bol = true;
                    $('#shipname+span').remove();
                }
            }
        })
    }
    var bol = true;
    $('#shipname').blur(checkExit);
    $("#btn").click(function () {

        var kinput = $("#formship input:not(input[name=Contact2],input[name=Contact3],input[name=Tel2],input[name=Tel3]),#Mark");
        kinput.each(function () {
            var name = $(this).attr('name');
            if ($(this).val() == '') {
                bol = false;
                $(this).addClass("required");
                $('.modal-body').text('提交失败,信息不完整或信息格式不正确')
                $('#myModal').modal('show')
            }
        });
        checkExit();
        if (bol) {
            $.ajax({
                url: 'addShipAction.php',
                type: 'post',
                data: $('#formship').serialize(),
                success: function (data) {
                    if (data == 1) {
                        $('.modal-body').text('数据添加完成')
                        $('#myModal').modal('show');
                        $('#formship input:not(:button),textarea').val('');
                    }
                }
            })
        }
    })
</script>
{include file='bottom.tpl'}
    

