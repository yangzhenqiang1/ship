{include file='head.tpl'}
<style>
    h5, .stdtable {
        width: 60%;
        margin: 10px 55px;
    }

    .stdtable {
        font-size: 1.3em;
    }

    th:first-child {
        width: 150px;
    }

    td {
        color: black;
        font-family: "Microsoft YaHei UI";
    }
</style>
<div class="centercontent">
    <div id="contentwrapper" class="contentwrapper">
        <div id="updates" class="subcontent">
            <div class="notibar announcement">
                {if $ex|default:null==null}
                    {if $msg|default:null==null}
                        <h3>数据导入完成，共导入{$i}条数据</h3>
                        {if $existShip|default:null!=null}
                            <h5>以下数据由于重复或在数据库中存在没有导入</h5>
                            <table cellpadding="0" cellspacing="0" border="0"
                                   class="stdtable stdtablecb overviewtable2">
                                <thead>
                                <tr>
                                    <th class="center">船名</th>
                                    <th class="center">公司名</th>
                                </tr>
                                </thead>
                                <tbody>
                                {foreach $existShip as $ship}
                                    <tr>
                                        <td class="center">{$ship.ShipName}</td>
                                        <td class="center">{$ship.CompanyName}</td>
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
                        {/if}
                    {else}
                        <h3>请先选择要导入的文件，请 <a onclick="history.go(-1)">返回</a></h3>
                    {/if}
                {else}
                    <h3>数据导入错误，原因是{$ex}</h3>
                {/if}
            </div><!-- notification announcement -->
        </div><!--contentwrapper-->
        <br clear="all"/>
    </div><!-- centercontent -->
    {include file='bottom.tpl'}


