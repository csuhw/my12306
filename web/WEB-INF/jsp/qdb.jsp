<%@ include file="commonhead.jsp" %>

<div class="public-content">
    <div class="public-content-header">
        <center><h2>用户管理</h2></center>
        <p>显示用户信息------</p>
        <p>输入用户编号：
            <input id="qdb" type="text">
            <input type="button" value="查询">
        </p>
    </div>
    <br>
    <br>
    <br>
    <div class="public-content-cont">
        <table class="public-cont-table">
            <tr>
                <th style="width:20%">用户编号</th>
                <th style="width:20%">用户姓名</th>
                <th style="width:20%">账户余额</th>
                <th style="width:20%">手机号</th>
                <th style="width:20%">操作</th>

            </tr>
            <tr>
                <td>1</td>
                <td>张三</td>
                <td>1000</td>
                <td>13800000001</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>李四</td>
                <td>2000</td>
                <td>13800000002</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>王五</td>
                <td>30000</td>
                <td>18600000001</td>
                <td><a href="login.html">更改</a></td>
            </tr>


        </table>
        <br>
    </div>
</div>

<%@ include file="commonend.jsp" %> 