<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 1767991548
  Date: 2016/9/13
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加新的列车编组</title>
    <link href="css/managementStyle.css" rel="stylesheet" type='text/css'>
</head>
<body>
<div class="divTopNavigation"><p align="center"><a href="#">MY12306</a>·<a href="management.jsp">网站管理</a>·
    <a href="trainformationManage.jsp">列车编组管理</a>·增加列车编组</p></div>


<s:form action="addTrainformation" class="t2">
    <table align="center" class="t2">
        <tr align="left">
            <th>列车编组编号</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr align="left">
            <th>车次代码</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr align="left">
            <th>车厢号</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr align="left">
            <th>车厢座席类型</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr align="left">
            <th>车厢座席数量</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr align="left">
            <th>车厢类型</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
        <tr align="left">
            <th>售票状态</th>
            <td><s:textfield onfocus="" theme="simple" cssClass="textfield"/></td>
        </tr>
    </table>
    <s:submit align="center" value="确认增加" cssClass="button"/>
</s:form>


<div class="divBottomNavigation"><p align="center">
    Support from central south univercity@ software academy@ 1401.</p></div>
</body>
</html>
