<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/20
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>订单查询</title>
    <%@ include file="top.jsp" %>
    <div class="container">
        <div class="public-content">
            <div class="public-content-header">

                <p>
                <h3>我的订单</h3></p>
            </div>
            <br>
            <br>
            <div class="public-content-cont">
                <table class="public-cont-table">
                    <tr>
                        <th style="width:5%">选择</th>
                        <th style="width:5%">订单号</th>
                        <th style="width:20%">车次</th>
                        <th style="width:10%">坐席</th>
                        <th style="width:10%">行程安排</th>
                        <th style="width:20%">出票情况</th>
                        <th style="width:10%">乘客信息</th>

                        <th style="width:20%">操作</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD309302</td>
                        <td>Z167 9:58开</td>
                        <td>6车43号</td>
                        <td><span style="color:#6bc095">徐州——>长沙</span></td>
                        <td>未出票</td>
                        <td><BR>周志国<BR><BR>302******3232</td>
                        <td>
                            <div class="table-fun">
                                <a href="payMoney.html">付款</a>
                                <a href="ticket.html">改签</a>
                                <a href="javascript:alert(o)">退票</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD309302</td>
                        <td>Z167 9:58开</td>
                        <td>6车43号</td>
                        <td><span style="color:#6bc095">徐州——>长沙</span></td>
                        <td>未出票</td>
                        <td><BR>周志国<BR><BR>302******3232</td>
                        <td>
                            <div class="table-fun">
                                <a href="payMoney.html">付款</a>
                                <a href="ticket.html">改签</a>
                                <a href="">退票</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD309302</td>
                        <td>Z167 9:58开</td>
                        <td>6车43号</td>
                        <td><span style="color:#6bc095">徐州——>长沙</span></td>
                        <td>已出票</td>
                        <td><BR>周志国<BR><BR>302******3232</td>
                        <td>
                            <div class="table-fun">

                                <a href="ticket.html">改签</a>
                                <a href="">退票</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD309302</td>
                        <td>Z167 9:58开</td>
                        <td>6车43号</td>
                        <td><span style="color:#6bc095">徐州——>长沙</span></td>
                        <td>未出票</td>
                        <td><BR>周志国<BR><BR>302******3232</td>
                        <td>
                            <div class="table-fun">
                                <a href="payMoney.html">付款</a>
                                <a href="ticket.html">改签</a>
                                <a href="">退票</a>
                            </div>
                        </td>
                    </tr>
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
    </div>
    </body>
</html>
