{include file='head.tpl'}
<style>

    ul li p span {
        display: inline-block;
        width: 10rem;
        text-align: right;
    }



    .error {
        width: auto;
        color: red;
        padding-left: 5px;
    }

</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>修改密码</h3>
                <form>
                    <ul>
                        <li>
                            <p>
                                <span>请输入原始密码: </span><input type="password" id="old">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>请输入新密码:</span><input id="new" type="password">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>请再次输入新密码:</span><input id="chknew" type="password">
                            </p>
                        </li>
                        <li>
                            <p>
                                <input id="btn" type="button" value="修改"/>
                            </p>
                        </li>
                    </ul>
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
    

