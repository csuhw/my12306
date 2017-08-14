<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/20
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>车票查询</title>
    <%@ include file="top.jsp" %>
    <!--头部--><!--头部-->
    <!--中间部分-->
    <script type="text/javascript">
        $('#hotpic').liteNav(5000);
    </script>
    <!-- 代码 结束 -->
    </div>
    </div>
    <!--盒子1--><!--盒子2--><br><br><br>
    <div class="box_2">
        <br>
        <div class="sex" style="width:50px;float:left">
            <input type="radio" name="lx" value="dc" checked="checked"> 单程
            <br>
            <input type="radio" name="lx" value="wf">往返
        </div>
        <div class="tabCont" style="width:600px;float:left">
            <div class="ctn"><s:form action="searchTicket">
                <p>
                    <span>出发地</span>
                    <input name="ticket.start_station" type="text" placeholder="请输入城市名（中文/拼音）">
                    <span>目的地</span>
                    <input name="ticket.arrive_station" type="text" placeholder="请输入城市名（中文/拼音）">
                    <span>日期</span>
                    <input name="" type="datetime" placeholder="请输入城市名（中文/拼音）">
                    <s:submit value="查询"/>

                </p></s:form>
            </div>
        </div>
        <div class="sex" style="width:80px;float:left">
            <input type="radio" name="tickettype" value="成人票" checked="checked"> 成人票
            <br>
            <input type="radio" name="tickettype" value="学生票">学生票
        </div>
    </div>

    <!--盒子2-->
    <div class="public-content">
        <div class="public-content-header">
        </div>
        <div class="public-content-cont">
            <table class="public-cont-table" border="2" bordercolor=“”>
                <tr>
                    <th style="width:10%">车次</th>
                    <th style="width:10%">出发站</th>
                    <th style="width:10%">到达站</th>
                    <th style="width:10%">出发时间</th>
                    <th style="width:10%">到达时间</th>
                    <th style="width:10%">历时</th>
                    <th style="width:10%">硬卧</th>
                    <th style="width:10%">硬座</th>
                    <th style="width:10%">无座</th>
                    <th style="width:10%">操作</th>

                </tr>
                <s:iterator value="trains">
                    <tr>
                        <td><s:textfield value="%{id}" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="%{start_station}" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="%{arrive_station}" name="station.id" readonly="true"
                                         theme="simple"/></td>
                        <td><s:textfield value="12:00" name="station.id" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="14:00" name="station.id" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="2:00" name="station.id" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="20" name="station.id" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="40" name="station.id" readonly="true" theme="simple"/></td>
                        <td><s:textfield value="40" name="station.id" readonly="true" theme="simple"/></td>
                        <td>
                            <div class="table-fun">
                                <a href="check">预定</a>

                            </div>
                        </td>
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
    </body>
</html>
