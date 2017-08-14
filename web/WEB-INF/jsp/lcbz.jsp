<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <p>
        <h3>列车编组</h3></p>
    </div>
    <br><br><br>
    &nbsp&nbsp&nbsp
    <s:form action="selectFormation">

        <td right>车次&nbsp<input type="textbox" name="train_id"></td>
        <td><input type="submit" value="查询"></td>
        <td>
            <a href="addTrainformation">添加</a>
            <!-- <input type="submit"  value="添加" onclick="javascript:location.href='addxl'">-->
        </td>
    </s:form>
    <div class="public-content-cont">
        <table class="public-cont-table">
            <tr><br><br><br>
                <th style="width:5%">选择</th>
                <th style="width:12%">编组编号</th>
                <th style="width:12%">车次代码</th>
                <th style="width:12%">车厢号</th>
                <th style="width:12%">车厢坐席类型</th>
                <th style="width:12%">车厢坐席数量</th>
                <th style="width:12%">车厢类型</th>
                <th style="width:15%">操作</th>
            </tr>
        </table>

        <s:iterator value="carriageList">
            <tr><s:form action="updateRoute">
                <td style="width:5%"><input type="checkbox"></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;" value="%{id}"
                        readonly="true" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{train_id}" readonly="true" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{carriage_id}" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{seat_type}" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{seat_num}" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{carriage_type}" theme="simple"/></td>
                <td style="width:13%">
                    <div class="table-fun">
                        <!--<a href="up">删除</a>-->
                        <!--<a href="updateStation?stationId=<s:property value="train_id"/> ">修改</a>-->
                        <s:submit value="修改" theme="simple"/>
                    </div>
                </td>
            </s:form>
            </tr>
        </s:iterator>

        <br> <br>

    </div>
</div>
<%@ include file="commonend.jsp" %> 
