{include file='head.tpl'}
<style>

    table {
        margin: 30px 55px;
    }
    #import input{
        margin: 0;
        padding: 0;
        vertical-align: top;
        font-weight: 100;
        display: inline-block;
    }
    #import input[type=submit]{
        padding: 2px 10px;
    }
</style>
<div class="centercontent">

    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>船舶资料导入</h3>
                <form method="post" action="insertExcel.php" enctype="multipart/form-data">
                    <table id="import">
                        <tr>
                            <td><input type="file" name="upfile"></td>
                            <td><input type="submit" class="btn " value="数据导入"></td>
                        </tr>
                    </table>
                </form>
            </div><!-- notification announcement -->
        </div><!-- centercontent -->
    </div>
</div>
<script>
    jQuery('#btn').click(function () {
        jQuery('span.error').remove();
        if (jQuery('#old').val() == "") {
            jQuery('#old').after('<span class="error">原始密码不能为空</span>');
            return;
        }
        if (jQuery('#new').val() == "") {
            jQuery('#new').after('<span class="error">新密码不能为空</span>');
            return;
        }
        if (jQuery('#new').val() != jQuery('#chknew').val()) {
            jQuery('#chknew').after('<span class="error">两次密码输入不一致</span>');
            return;
        }
        jQuery.ajax({
            url: 'changePwd.php',
            type: 'post',
            data: {
                oldpwd: jQuery('#old').val(),
                newpwd: jQuery('#new').val()
            },
            success: function (data) {
                console.log(data);
                if (data == 1) {
                    alert('密码修改完成，请重新登陆');
                    location.href = 'index.php';
                }
                if (data == 0) {
                    alert('新密码和原始密码相同');
                }
                if (data == 'error') {
                    jQuery('#old').after('<span class="error">原始密码输入错误</span>');
                }
            }
        })
    })
</script>
{include file='bottom.tpl'}
    

