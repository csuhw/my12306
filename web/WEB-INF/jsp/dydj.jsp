<%@ include file="commonhead.jsp" %>
<div class="public-content">
    <div class="public-content-header">

        <h2>递远递减率管理</h2>
        <p>查询递远递减率:</p>
        <p>输入编号：
            <input id="dydj" type="text">
            <input type="button" value="查询">
        </p>
    </div>
    <br>
    <br>
    <br>
    <div class="public-content-cont">
        <table class="public-cont-table">
            <tr>
                <th style="width:10%">编号</th>
                <th style="width:20%">区段（km）</th>
                <th style="width:15%">递减率（%）</th>
                <th style="width:15%">票价率</th>
                <th style="width:15%">各区段全程票价</th>
                <th style="width:15%">区段累计票价</th>
                <th style="width:10%">操作</th>
            </tr>

            <tr>
                <td>1</td>
                <td>1~200</td>
                <td>0</td>
                <td>0.05861</td>
                <td>11.722</td>
                <td>&nbsp;</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>2</td>

                <td>201~500</td>
                <td>10</td>
                <td>0.05275</td>
                <td>15.825</td>
                <td>27.5467</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>501~1000</td>
                <td>20</td>
                <td>0.04688</td>
                <td>23.444</td>
                <td>50.9907</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>4</td>
                <td>1001~1500</td>
                <td>30</td>
                <td>0.04125</td>
                <td>20.5135</td>
                <td>71.5042</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>5</td>
                <td>1501~2500</td>
                <td>40</td>
                <td>0.03517</td>
                <td>35.166</td>
                <td>106.67</td>
                <td><a href="login.html">更改</a></td>
            </tr>
            <tr>
                <td>6</td>
                <td>2501以上</td>
                <td>50</td>
                <td>0.0293</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><a href="login.html">更改</a></td>
            </tr>
        </table>
        <br>
        <br>
    </div>
</div>
<%@ include file="commonend.jsp" %> 