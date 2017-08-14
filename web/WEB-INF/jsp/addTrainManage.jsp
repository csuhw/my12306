<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 1767991548
  Date: 2016/9/13
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加新列车</title>
    <link href="css/managementStyle.css" rel="stylesheet" type='text/css'>
</head>
<body>

<div class="divTopNavigation"><p align="center"><a href="#">MY12306</a>·<a href="management.jsp">网站管理</a>·
    <a href="lineManage.jsp">列车管理</a>·增加新列车</p></div>

<s:form action="insertTrain">
    <table align="center" class="t2">
        <tr>
            <th>车次代码ID</th>
            <td><s:textfield name="insertTrain.trainId" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>始发站</th>
            <td><s:textfield name="insertTrain.trainStartStation" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>终到站</th>
            <td><s:textfield name="insertTrain.trainStopStation" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>始发时间</th>
            <td><s:textfield name="insertTrain.trainStartTime" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>终到时间</th>
            <td><s:textfield name="insertTrain.trainStopTime" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>历时</th>
            <td><s:textfield name="insertTrain.trainTotalTime" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>里程</th>
            <td><s:textfield name="insertTrain.trainMileage" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>座票数量</th>
            <td><s:textfield name="insertTrain.trainNoSeatNum" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>车辆车体分类</th>
            <td><s:textfield name="insertTrain.trainBodyType" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr>
            <th>列车类型</th>
            <td><s:textfield name="insertTrain.trainType" onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
    </table>
    <s:submit action="#" align="center" value="确定增加" cssClass="button"/>
</s:form>

<div class="divBottomNavigation"><p align="center">
    Support from central south univercity@ software academy@ 1401.</p></div>
</body>
</html>
