{include file='head.tpl'}
<div class="centercontent">

    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <h3>用户编辑</h3>
                <form>
                    <ul>
                        <li>
                            <p>
                                <span class="iin">用户名: </span>{$user.LoginId}
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>姓名:</span><input value="{$user.Name}" id="Name" name="Name" type="text">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>电话:</span><input type="text" id="Tel" value="{$user.Tel}">
                            </p>
                        </li>
                        <li>
                            <p>
                                <span class="iin">职务:</span>{$user.RoleName}
                            </p>
                        </li>
                        <li>
                            <p>
                                <input id="btn" type="submit" value="修改"/>
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
        jQuery.ajax({
            url: 'userEditAction.php',
            type: 'post',
            data: {
                Name: jQuery('#Name').val(),
                Tel: jQuery('#Tel').val()
            },
            success: function (data) {
                console.log(data);
                if (data == 1) {
                    alert('信息修改完成，请重新登陆');
                    location.href = 'index.php';
                }
            }
        })
    })
</script>
{include file='bottom.tpl'}
    

