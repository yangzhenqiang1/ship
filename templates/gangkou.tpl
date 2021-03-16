{include file='head.tpl'}
<style>
    table {
        margin-left: 55px;
    }

    td {
        vertical-align: middle;
        padding: 10px;
    }

    #result {
        background: #fff;
        margin: 20px 50px;
        overflow: hidden;
    }

    #result p {
        margin: 20px 0;
    }

    #btn {
        padding: 0 10px;
    }
</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>搜索港口资料<span style="color:red;font-size:.6em;line-height:1em"></span></h3>
                <form id="formship" action="searchziliao.php" method="post">
                    <table>
                        <tr>
                            <td>区域:</td>
                            <td style="width: 80px"><select name="Area" id="area" style="width: 100px">
                                    <option value="0">请选择区域</option>
                                    <option value="北方">北方</option>
                                    <option value="黄海">黄海</option>
                                    <option value="长江">长江</option>
                                    <option value="南方">南方</option>
                                </select></td>
                            <td style="width: 80px">港口名称:</td>
                            <td><select style="width: 110px" id="gk" name="gk">
                                    <option value="0">请选择港口</option>
                                </select></td>
                            <td>
                                <input id="btn" class="btn btn-primary" style="width: auto" type="button" value="搜索"/>
                            </td>
                        </tr>
                    </table>
                </form>
                <div id="result"></div>
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
    $('#area').change(function () {
        $.ajax({
            url: 'searchgangkou.php',
            type: "post",
            data: {
                Area: $(this).val()
            },
            dataType: 'json',
            success: function (data) {
                if (data.length == 0) {
                    $('#gk').html('<option>该区域没有港口</option>');
                } else {
                    var option = '';
                    $.each(data, function (i, v) {
                        option += "<option value='" + v.Id + "'>" + v.Name + "</option>";
                    })
                    $('#gk').html(option);
                }
            }
        })
    })
    $('#btn').click(function () {
        if ($('#gk').val() != -1) {
            $.ajax({
                url: 'searchziliao.php',
                type: "post",
                data: {
                    gk: $('#gk').val()
                },
                dataType: 'json',
                success: function (data) {
                    if (data != false) {
                        $('#result').html(data.ZiLiao);
                        var pre = $('#result pre');
                        $('#result').append(pre.children()).css('padding', '10px 100px');
                        pre.remove();
                    }
                }
            })
        }
    })
</script>
{include file='bottom.tpl'}
    

