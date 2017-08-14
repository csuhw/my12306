<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <p>
        <h3>列车管理</h3></p>
    </div>
    <br><br><br> &nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
    <s:form action="selectTrain">
        <td right>车次代码&nbsp<input type="textbox" name="trainId"></td>
        <td><input type="submit" value="查询" onclick="javascript:location.href='selectTrain'"></td>
    </s:form>
    <td><input type="button" value="添加" onclick="javascript:location.href='addTrainManage'"></td>
    <div class="public-content-cont">
        <table class="public-cont-table">
            <tr><br><br><br>
                <th style="width:5%">选择</th>
                <th style="width:5%">车次代码</th>
                <th style="width:5%">始发站</th>
                <th style="width:5%">终点站</th>
                <th style="width:10%">始发时间</th>
                <th style="width:10%">终到时间</th>
                <th style="width:5%">历时</th>
                <th style="width:5%">里程</th>
                <th style="width:5%">无座票数</th>
                <th style="width:10%">车体分类</th>
                <th style="width:10%">列车类型</th>
                <th style="width:10%">操作</th>
            </tr>
            <s:form action="updateTrain" theme="simple">
                <tr>
                    <s:if test="%{train!=null}">
                        <td><input type="checkbox"></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.id} " name="train.id" theme="simple" readonly="true"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.start_station}" name="train.start_station" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.arrive_station}" name="train.arrive_station" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.start_time}" name="train.start_time" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.arrive_time}" name="train.arrive_time" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.use_time}" name="train.use_time" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.length}" name="train.length" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.noseat_ticket}" name="train.noseat_ticket" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.body_style}" name="train.body_style" theme="simple"/></td>
                        <td><s:textfield
                                cssStyle="border:0px;width:80px;background-color:transparent;text-align:center;"
                                value="%{train.train_style}" name="train.train_style" theme="simple"/></td>
                        <td><s:submit value="修改" theme="simple"/>
                            <a href="deleteTrain?trainId=<s:property value=" %{train.id} " />">删除</a>
                            <div class="table-fun">
                                <!--
                                <a href="updateTrain?train.id=<s:property value="%{train.id}"/> ">修改</a>
                                -->
                            </div>
                        </td>

                    </s:if>
                </tr>
            </s:form>
        </table>
        <br> <br>
        <div class="page">
            <form action="" method="get">

                共<span>42</span>个站点
                <a href="">首页</a>
                <a href="">上一页</a>
                <a href="">下一页</a>
                第<span style="color:red;font-weight:600">2</span>页 共
                <span style="color:red;font-weight:600">12</span>页
                <input type="text" class="page-input">
                <input type="submit" class="page-btn" value="跳转">
            </form>
        </div>
    </div>
</div>
<%@ include file="commonend.jsp" %>