<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/20
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>支付</title>
    <%@ include file="top.jsp" %>
    <div align="center">
        <br> <br> <br> <br> <br> <br>
        <h1>支付</h1>
    </div>
    <style>
        table {
            border-collapse: collapse;
        / / 表格单元格间距样式 border: 1 px solid #ccc;
        }

        tr {
            border: 1px solid #ccc;
        }

        td {
            border: 1px solid #ccc;
        }
    </style>
    <table align="center">
        <table align="center">
            <tr>
                <td>已选购的票&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>车次&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>发车时间&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>起始地&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>目的地&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>数量&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>价格&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;<input type="button" value="退票">&nbsp;&nbsp;</td>
            </tr>

        </table>
        <table align="center" border=0>
            <tr align="center">
                <td>总金额：</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </table>
    <table>
        <table align="center">
            <tr>
                <td>
                    <a href="#" target="_blank" title="快捷支付">
                        <img src="../../img/kuaijie.png" width="100" title="快捷支付">
                    </a></td>

                <td><a href="#" target="_blank" title="信用卡支付">
                    <img src="../../img/cardpay.png" width="100">
                </a></td>

                <td><a href="#" target="_blank" title="余额宝支付">
                    <img src="../../img/yuebao.png" width="100">
                </a></td>

                <td><a href="#" target="_blank" title="蚂蚁花呗">
                    <img src="img/antpay.png" width="100">
                </a></td>
            </tr>
        </table>
    </table>
    </body>
</html>
