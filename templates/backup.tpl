{include file='head.tpl'}
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
                    {foreach $files as $file}
                        <div class="col-sm-2"><a href="">{$file}</a></div>
                    {/foreach}
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
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>

    //        jQuery('.modal-body').text('确定删除该数据吗');
    //        jQuery('.modal-footer').html(' <button type="button" class="btn btn-default" data-dismiss="modal">' +
    //            '取消</button><button type="button" id="sub" class="btn btn-primary">确定</button>');
    //        jQuery('#myModal').modal('show');


</script>
{include file='bottom.tpl'}


