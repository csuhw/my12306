<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <h2>票价率管理</h2>
        <p>查询票价率:</p>
        <p>输入票种：
            <input id="pz" type="text">
            <input type="button" value="查询">
        </p>
    </div>
    <br>
    <br>
    <br>
    <div class="public-content-cont">
        <table width="100%" class="public-cont-table">
            <tr>
                <th style="width:10%">票种</th>
                <th style="width:20%">票价率（元/人*km）</th>
                <th style="width:20%">比例（%）</th>
                <th style="width:20%">操作</th>
            </tr>
            <tr>
                <td height="32">硬座客票</td>
                <td>0.05861</td>
                <td>100</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td height="23">软座客票</td>
                <td>0.11722</td>
                <td>200</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td height="28">卧铺上</td>
                <td>0.06447</td>
                <td>110</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td height="28">卧铺中</td>
                <td>0.07033</td>
                <td>120</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td height="25">卧铺下</td>
                <td>0.07619</td>
                <td>130</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td height="24">空调票</td>
                <td>0.01465</td>
                <td>25</td>
                <td><a href="login.html">更改</a></td>
            </tr>

        </table>
        <br> <br>
        <div class="page"></div>
    </div>
</div>
<%@ include file="commonend.jsp" %> 