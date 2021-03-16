{include file='head.tpl'}
<style>
    table {
        margin-left: 55px;
    }

    td {
        padding: 10px;
    }

</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>在此处添加港口信息<span style="color:red;font-size:.6em;line-height:1em"></span></h3>
                <form id="formship" action="addGangkouAction.php" method="post">
                    <table>
                        <tr>
                            <td>区域:</td>
                            <td style="width: 80px"><select name="Area" id="" style="width: 60px">
                                    <option value="北方">北方</option>
                                    <option value="黄海">黄海</option>
                                    <option value="长江">长江</option>
                                    <option value="南方">南方</option>
                                </select></td>
                            <td style="width: 80px">港口名称:</td>
                            <td><input id="cname" name="Name" type="text"></td>


                        </tr>
                        <tr>
                            <td style="vertical-align: top">港口资料:</td>
                            <td colspan="3">
                                <textarea name="ZiLiao" id="ziliao" cols="30" rows="10"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: center">
                                <input id="btn" class="btn btn-primary" style="width: auto" type="submit"
                                       value="添加港口信息"/></td>
                        </tr>
                    </table>
                </form>
            </div><!-- notification announcement -->
        </div>
    </div><!-- centercontent -->
</div>
<script src="js/kindeditor/kindeditor.js"></script>
<script src="js/kindeditor/lang/zh_CN.js"></script>
<script>
    var editor;
    KindEditor.ready(function (K) {
        editor = K.create('textarea', {
            allowFileManager: false, resizeType: 1, //resizeType 2或1或0，2时可以拖动改变宽度和高度，1时只能改变高度，0时不能拖动。默认值: 2
            items: [
                'undo', 'redo', '|', 'cut', 'copy', 'paste',
                'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                'superscript', 'clearhtml', 'quickformat', 'selectall',
                'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', 'table', 'hr', 'pagebreak']
        });
    });
    $('#cname').blur(function () {
        $.ajax({
            url: 'gangkouNameExist.php',
            type: 'post',
            data: {
                name: $('#cname').val()
            },
            success: function (data) {

                if (data == 'error') {
                    bol = false;
                    $('#cname').after("<span style='margin-left:5px;color:red;font-size:12px'>港口已存在</span>")
                } else {
                    bol = true;
                    $('#cname+span').remove();
                }
            }
        })
    })
</script>
{include file='bottom.tpl'}
    

