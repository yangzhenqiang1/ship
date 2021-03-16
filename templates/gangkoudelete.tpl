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
                    {foreach $gks as $gk}
                        <tr value="{$gk.Id}">
                            <td class="center">{$gk.Id}</td>
                            <td class="center">{$gk.Area}</td>
                            <td class="center">{$gk.Name}</td>
                            <td class="center">
                                {if $smarty.session.user.RoleId==1}
                                    <a class="del" style="color: red;cursor: default" value="{$gk.Id}">删除</a>
                                {/if}
                            </td>
                        </tr>
                    {/foreach}
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
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>
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

</script>
{include file='bottom.tpl'}
    

