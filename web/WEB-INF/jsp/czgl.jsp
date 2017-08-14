<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <p>
        <h3>车站管理</h3></p>
    </div>
    <br><br><br> &nbsp &nbsp &nbsp

    <td>站名&nbsp<input type="textbox"></td>
    <td>拼音码&nbsp<input type="textbox"></td>
    <td>所属铁路局&nbsp
        <select required="true">
            <option value="SH">上海铁路局</option>
            <option value="BJ">北京铁路局</option>
            <option value="BT">包头铁路局</option>
            <option value="GZ">广州铁路局</option>
        </select>
    </td>
    </td>
    <td><input type="button" value="查询"></td>
    <td><input type="submit" value="添加" onclick="javascript:location.href='#/addcz'"></td>

    <div class="public-content-cont">
        <s:form action="updateStation">
            <tr><br><br><br>
                <th style="width:5%">选择</th>
                <th style="width:10%">车站代码</th>
                <th style="width:10%">车站名</th>
                <th style="width:10%">拼音码</th>
                <th style="width:10%">所属铁路局</th>
                <th style="width:7%">车站等级</th>
                <th style="width:10%">所属行政区</th>
                <th style="width:20%">联系地址</th>
                <th style="width:13%">操作</th>
            </tr>


            <s:iterator value="stationList">
                <tr>
                    <s:form action="updateStation">
                        <td style="width:5%"><input type="checkbox"></td>
                        <td style="width:10%"><s:textfield
                                cssStyle="border:0px;width:141px;background-color:transparent;text-align:center;"
                                value="%{id}" name="station.id" readonly="true" theme="simple"/></td>
                        <td style="width:10%"><s:textfield
                                cssStyle="border:0px;width:84px;background-color:transparent;text-align:center;"
                                value="%{name}" name="station.name" readonly="true" theme="simple"/></td>
                        <td style="width:10%"><s:textfield
                                cssStyle="border:0px;width:84px;background-color:transparent;text-align:center;"
                                value="%{pinyin}" name="station.pinyin" theme="simple"/></td>
                        <td style="width:10%"><s:textfield
                                cssStyle="border:0px;width:84px;background-color:transparent;text-align:center;"
                                value="%{bureau}" name="station.bureau" theme="simple"/></td>
                        <td style="width:7%"><s:textfield
                                cssStyle="border:0px;width:54px;background-color:transparent;text-align:center;"
                                value="%{level}" name="station.level" theme="simple"/></td>
                        <td style="width:10%"><s:textfield
                                cssStyle="border:0px;width:84px;background-color:transparent;text-align:center;"
                                value="%{administrative}" name="station.administrative" theme="simple"/></td>
                        <td><s:textfield value="%{address}"
                                         cssStyle="border:0px;width:185px;background-color:transparent;text-align:center;"
                                         name="station.address" theme="simple"/></td>
                        <td style="width:13%">
                            <div class="table-fun"><s:submit value="修改" theme="simple"/></div>
                        </td>
                    </s:form>
                </tr>
            </s:iterator>


        </s:form>
        <br> <br>
    </div>
</div>
<%@ include file="commonend.jsp" %>