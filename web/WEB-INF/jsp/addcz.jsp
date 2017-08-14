<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/19
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加车站</title>
</head>
<body>
<div class="container">
    <div class="public-content">
        <div class="public-content-header">
            <p>
            <h3>添加车站</h3></p>
        </div>
        <div class="public-content-cont">
            <table class="public-cont-table">
                <tr><br><br><br>
                    <th style="width:10%">车站代码</th>
                    <th style="width:10%">车站名</th>
                    <th style="width:10%">拼音码</th>
                    <th style="width:10%">所属铁路局</th>
                    <th style="width:7%">车站等级</th>
                    <th style="width:10%">所属行政区</th>
                    <th style="width:20%">联系地址</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><select required="true">
                        <option value="SH">上海铁路局</option>
                        <option value="BJ">北京铁路局</option>
                        <option value="BT">包头铁路局</option>
                        <option value="GZ">广州铁路局</option>
                    </select></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div align="center"><input type="button" value="提交"></div>
</body>
</html>
