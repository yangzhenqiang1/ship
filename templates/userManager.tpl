{include file='head.tpl'}
<style>
    p div {
        margin: 1rem 0 0 3rem;
    }

    #RoleId {
        height: 2rem;
    }

    div.notibar ul li span {
        display: inline-block;
        width: 6rem;
        text-align: right;
        box-sizing: border-box;
        padding-right: .4rem;
    }

    .two_third {
        width: 100%;
    }

    .stdtable thead th.center, td.center {
        text-align: center;
    }

    h5 {
        margin: 10px 10px 10px 55px
    }

    td {
        font-size: 1.2em;
    }

    a:hover {
        color: red;
    }

    #cancel {
        width: 4rem;
        margin: 0;
        font-weight: bold;
        color: #eee;
        background: #FB9337;
        border: 1px solid #F0882C;
        padding: 7px 10px;
        -moz-box-shadow: none;
        -webkit-box-shadow: none;
        box-shadow: none;
        cursor: pointer;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;

    }

    ul input.required {
        border: solid 1px #f00;
    }

    div.notibar ul li span.error {
        color: red;
        width: auto;
    }
span.error{
    visibility: hidden;
}
</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                <a class="close"></a>
                <h3>请输入用户信息</h3>
                <h5>用户名不能修改，默认密码：123456</h5>
                <form method="post">
                    <ul>
                        <li>
                            <p>
                                <span>用户名: </span><input style="position: relative" id="LoginId" name="LoginId"
                                                         type="text" placeholder="请输入用户名"
                                                         autocomplete="off"><span class="error"
                                                                                  style="display:inline-block; text-align: left">用户名不能为空</span>
                            </p></li>
                        <li>
                            <p>
                                <span>姓名:</span><input style="position: relative" id="Name" name="Name" type="text"
                                                       placeholder="请输入姓名"
                                                       autocomplete="off"><span class="error"
                                                                                style="display: inline-block; text-align: left ">姓名不能为空</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <span>联系电话:</span><input style="position: relative" id="Tel" name="Tel" type="text"
                                                         placeholder="请输入手机号"
                                                         autocomplete="off"><span class="error"
                                                                                  style="display: inline-block; text-align: left ">手机号不正确</span>
                            </p>
                        </li>
                        <li>
                            <input type="hidden" name="Id" id="Id">
                            <p>
                                <input id="btn" type="submit" value="提交"/>
                                <input id="cancel" type="button" value="取消"/>
                            </p>
                        </li>
                    </ul>
                </form>
            </div><!-- notification announcement -->

            <div class="two_third ">
                <div class="contenttitle2 nomargintop">
                    <h3>用户列表</h3>
                </div><!--contenttitle-->


                <br clear="all"/>
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable stdtablecb overviewtable2">
                    <thead>
                    <tr>
                        <th class="center">编号</th>
                        <th class="center">用户名</th>
                        <th class="center">姓名</th>
                        <th class="center">联系电话</th>
                        <th class="center">职务</th>
                        <th class="center"></th>
                    </tr>

                    <tbody>
                    {foreach $users as $user}
                        <tr>
                            <td class="center">{$user.Id}</td>
                            <td class="center">{$user.LoginId}</td>
                            <td class="center">{$user.Name}</td>
                            <td class="center">{$user.Tel}</td>
                            <td class="center" value="{$user.RoleId}">{$user.RoleName}</td>
                            <td class="center"><a class="edit" style="cursor: pointer" value="{$user.Id}">修改</a>
                                <a class="del" style="cursor: pointer" value="{$user.Id}">删除</a>
                            </td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div><!--two_third dashboard_left -->
        </div><!-- #updates -->
    </div><!--contentwrapper-->
    <br clear="all"/>
</div><!-- centercontent -->
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
{literal}
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script>
//        $('.error').hide();
        $('.edit').click(function () {
            var id = $(this).attr('value');
            $('#Id').val(id);
            var tr = $(this).closest('tr');
            var name = tr.find('td:eq(2)').text();
            $("#Name").val(name);
            var tel = tr.find('td:eq(3)').text();
            $("#Tel").val(tel);
            var rid = tr.find('td:eq(4)').attr('value');
            $('#RoleId').val([rid]);
            var lid = tr.find('td:eq(1)').text();
            $("#LoginId").val(lid);
            $("#LoginId").attr('disabled', 'disabled')
            $('ul input').removeClass('required');
            $('span.error').css('visibility','hidden');
        })
        $('#cancel').click(function () {
            $('#RoleId').val([1]);
            $("#Name").val('');
            $("#Tel").val('');
            $("#LoginId").val('');
            $("#LoginId").removeAttr('disabled');
            $('ul input').removeClass('required');
            $('span.error').css('visibility','hidden');
        })
        //删除
        var id,tr;
        $(".del").click(function () {
            id = $(this).attr('value');
            tr = $(this).closest('tr');
            $('.modal-body').text('确定删除该用户吗');
            $('.modal-footer').html(' <button type="button" class="btn btn-default" data-dismiss="modal">' +
                '取消</button><button type="button" id="sub" class="btn btn-primary">确定</button>');
            $('#myModal').modal('show');
        })
        //确定删除
        $('.modal-footer').on('click', '#sub', function () {
            $('ul input').removeClass('required');
            $('span.error').hide();
            $.ajax({
                url: 'deleteUser.php',
                type: 'post',
                data: {
                    id: id
                },
                success: function (data) {
                    if (data == 1) {
                        tr.remove();
                        $('#cancel').click();
                        $('#myModal').modal('hide')
                    }
                }
            })
        })
        function resetFields() {
            $("input[type=text], input[type=password]").removeClass("required");
        }
        $('input[type=text]:not(input[id=Tel])').keyup(function () {
            $(this).removeClass("required").next('span').hide();
        })
        $('input[id=Tel]').change(function () {
            if (/^1[34578]\d{9}$/.test($('#Tel').val())) {
                $(this).removeClass("required").next('span').hide();
            }
        })
        $("form").submit(function () {
            var bol = true;
            if ($('#LoginId').val() == '') {
                $('#LoginId').animate({left: "-10px"}, 100).animate({left: "+10px"}, 100)
                    .animate({left: "-10px"}, 100).animate({left: "+10px"}, 100)
                    .animate({left: "0px"}, 100).addClass("required");
                $('#LoginId').next('span').css('visibility','visible');
                bol = false;
            }
            if ($('#Name').val() == '') {
                $('#Name').animate({left: "-10px"}, 100).animate({left: "10px"}, 100)
                    .animate({left: "-10px"}, 100).animate({left: "10px"}, 100)
                    .animate({left: "0px"}, 100).addClass("required");
                $('#Name').next('span').css('visibility','visible');
                bol = false;
            }
            if (!(/^1[34578]\d{9}$/.test($('#Tel').val()))) {
                $('#Tel').animate({left: "-10px"}, 100).animate({left: "10px"}, 100)
                    .animate({left: "-10px"}, 100).animate({left: "10px"}, 100)
                    .animate({left: "0px"}, 100).addClass("required");
                $('#Tel').next('span').css('visibility','visible');
                bol = false;
            }
            if (!bol) {
                return false;
            }
        })

    </script>
{/literal}
{include file='bottom.tpl'}


