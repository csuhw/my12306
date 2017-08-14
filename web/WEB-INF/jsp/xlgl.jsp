<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <p>
        <h3>线路管理</h3></p>
    </div>
    <br><br><br>
    &nbsp&nbsp&nbsp
    <s:form action="selectRoute">
        <td right>车站名&nbsp<input type="textbox">&nbsp&nbsp</td>
        <td right>车次&nbsp<input type="textbox" name="train_id"></td>
        <td><input type="submit" value="查询"></td>
        <td>
            <a href="addxl">添加</a>
            <!-- <input type="submit"  value="添加" onclick="javascript:location.href='addxl'">-->
        </td>
    </s:form>
    <div class="public-content-cont">
        <table class="public-cont-table">
            <tr><br><br><br>
                <th style="width:5%">选择</th>
                <th style="width:5%">线路编号</th>
                <th style="width:5%">车次代码</th>
                <th style="width:10%">车站名</th>
                <th style="width:10%">发车时间</th>
                <th style="width:5%">到站时间</th>
                <th style="width:5%">里程</th>
                <th style="width:5%">停留时间</th>
                <th style="width:10%">历时</th>
                <th style="width:10%">车站编号</th>
                <th style="width:10%">操作</th>
            </tr>
        </table>
        <s:iterator value="routeList">
            <tr><s:form action="updateRoute">
                <td style="width:5%"><input type="checkbox"></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;" value="%{id}"
                        name="route.id" readonly="true" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{train_id}" name="train_id" readonly="true" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{station_name}" name="route.station_name" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{start_time}" name="route.start_time" theme="simple"/></td>
                <td style="width:7%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{arrive_time}" name="route.arrive_time" theme="simple"/></td>
                <td style="width:10%"><s:textfield
                        cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                        value="%{length}" name="route.length" theme="simple"/></td>
                <td><s:textfield value="%{stay_time}"
                                 cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                 name="route.stay_time" theme="simple"/></td>
                <td><s:textfield value="%{use_time}"
                                 cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                 name="route.use_time" theme="simple"/></td>
                <td><s:textfield value="%{station_id}"
                                 cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                 name="route.station_id" theme="simple"/></td>
                <td style="width:13%">
                    <div class="table-fun">
                        <!--<a href="up">删除</a>-->
                        <!--<a href="updateStation?stationId=<s:property value="id"/> ">修改</a>-->
                        <s:submit value="修改" theme="simple"/>
                    </div>
                </td>
            </s:form>
            </tr>
        </s:iterator>
        <br> <br>
        <div class="page">
            <form action="" method="get">

                共<span>42</span>条线路
                <a href="">首页</a>
                <a href="">上一页</a>
                <a href="">下一页</a>
                第<span style="color:red;font-weight:600">2</span>页
                共<span style="color:red;font-weight:600">12</span>页
                <input type="text" class="page-input">
                <input type="submit" class="page-btn" value="跳转">
            </form>
        </div>
    </div>
</div>
<%@ include file="commonend.jsp" %> 