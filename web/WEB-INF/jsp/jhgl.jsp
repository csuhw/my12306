<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <p>
        <h3>计划管理</h3></p>
    </div>
    <br><br><br>
    &nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
    <s:form action="selectPlan">
        <td right>车次代码&nbsp<input type="textbox" name="train_id"></td>

        <td><input type="submit" value="查询" onclick="javascript:location.href='selectPlan'"></td>
        <td><input type="submit" value="添加" onclick="javascript:location.href='addPlan'"></td>
    </s:form>
    <div class="public-content-cont">
        <table class="public-cont-table">
            <tr><br><br><br>
                <th style="width:5%">选择</th>
                <th style="width:10%">计划代码</th>
                <th style="width:10%">车次代码</th>
                <th style="width:10%">车厢号</th>
                <th style="width:10%">比较</th>
                <th style="width:7%">车站</th>
                <th style="width:13">操作</th>
            </tr>

            <tr>
                <td><input type="checkbox"></td>
                <td>Z167</td>
                <td>青岛</td>
                <td>广州</td>
                <td>新空调</td>
                <td>直达</td>
                <td>
                    <div class="table-fun">
                        <a href="">删除</a>
                        <a href="">修改</a>
                    </div>
                </td>
            </tr>
            <s:iterator value="planList">
                <tr><s:form action="updateStation">
                    <td style="width:5%"><input type="checkbox"></td>
                    <td style="width:10%"><s:textfield value="%{id}" readonly="true" theme="simple"/></td>
                    <td style="width:10%"><s:textfield value="%{train_id}" readonly="true" theme="simple"/></td>
                    <td style="width:10%"><s:textfield value="%{carriage_id}" theme="simple"/></td>
                    <td style="width:10%"><s:textfield value="%{compare}" theme="simple"/></td>
                    <td style="width:7%"><s:textfield value="%{station}" theme="simple"/></td>

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

        </table>


        <br> <br>
        <div class="page">
            <form action="" method="get">

                共<span>42</span>个站点
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