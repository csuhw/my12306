<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/19
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台</title>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/content.css"/>
    <script src="./js/jquery1.4.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            jQuery.navlevel2 = function (level1, dytime) {

                $(level1).mouseenter(function () {
                    varthis = $(this);
                    delytime = setTimeout(function () {
                        varthis.find('ul').slideDown();
                    }, dytime);

                });
                $(level1).mouseleave(function () {
                    clearTimeout(delytime);
                    $(this).find('ul').slideUp();
                });

            };
            $.navlevel2("li.mainlevel", 300);
        });
    </script>
    <script type="text/javascript">
        function changecz(num) {
            document.getElementById(num + "daima").readOnly = false;
        }
    </script>
</head>

<body>
<ul id="nav">
    <li class="mainlevel">
        <a href="#">返回首页</a>
    </li>
    <li class="mainlevel">
        <a href="#/data">基础数据维护</a>
        <ul>
            <li>
                <a href="#/czgl">车站管理</a>
            </li>
            <li>
                <a href="#/lcgl">列车管理</a>
            </li>
            <li>
                <a href="#/xlgl">线路管理</a>
            </li>
            <li>
                <a href="">列车编组管理</a>
            </li>
            <li>
                <a href="#/pjl">票价率管理</a>
            </li>
            <li>
                <a href="#/qdb">票价旅程区段管理</a>
            </li>
            <li>
                <a href="#/dydj">递远递减率管理</a>
            </li>
        </ul>
    </li>
</ul>

<script type="text/html" id="tpl_home">
    12306 后台中心
</script>
<script type="text/html" id="tpl_dydj">
    <div class="container">
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
    </div>
</script>
<script type="text/html" id="tpl_pjl">
    <div class="container">
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
    </div>
</script>
<script type="text/html" id="tpl_qdb">
    <div class="container">
        <div class="public-content">
            <div class="public-content-header">

                <h2>旅程区段管理</h2>
                <p>查询旅程区段:</p>
                <p>输入编号：
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
                        <th style="width:20%">区段编号</th>
                        <th style="width:20%">旅程区段</th>
                        <th style="width:20%">每小区段旅程（km）</th>
                        <th style="width:20%">区段数</th>
                        <th style="width:20%">操作</th>

                    </tr>
                    <tr>
                        <td>1</td>
                        <td>1~200</td>
                        <td>10</td>
                        <td>20</td>
                        <td><a href="login.html">更改</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>201~400</td>
                        <td>20</td>
                        <td>10</td>
                        <td><a href="login.html">更改</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>401~700</td>
                        <td>30</td>
                        <td>10</td>
                        <td><a href="login.html">更改</a></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>701~1100</td>
                        <td>40</td>
                        <td>10</td>
                        <td><a href="login.html">更改</a></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>1101~1600</td>
                        <td>50</td>
                        <td>10</td>
                        <td><a href="login.html">更改</a></td>
                    </tr>
                    <td>6</td>
                    <td>1601~2200</td>
                    <td>60</td>
                    <td>10</td>
                    <td><a href="login.html">更改</a></td>
                    </tr>
                    <td>7</td>
                    <td>2201~2900</td>
                    <td>70</td>
                    <td>10</td>
                    <td><a href="login.html">更改</a></td>
                    </tr>
                    <td>8</td>
                    <td>2901~3700</td>
                    <td>80</td>
                    <td>10</td>
                    <td><a href="login.html">更改</a></td>
                    </tr>
                    <td>9</td>
                    <td>3701~4600</td>
                    <td>90</td>
                    <td>10</td>
                    <td><a href="login.html">更改</a></td>
                    </tr>
                    <td>10</td>
                    <td>4600以上</td>
                    <td>100</td>
                    <td>&nbsp;</td>
                    <td><a href="login.html">更改</a></td>
                    </tr>

                </table>
                <br>
            </div>
        </div>
    </div>
</script>
<script type="text/html" id="tpl_czgl">
    <div class="container">
        <div class="public-content">
            <div class="public-content-header">

                <p>
                <h3>车站管理</h3></p>
            </div>
            <br><br><br>
            &nbsp &nbsp &nbsp
            <td>站名&nbsp<input type="textbox"></td>
            <td>拼音码&nbsp<input type="textbox"></td>
            <td>所属铁路局&nbsp<select required="true">
                <option value="SH">上海铁路局</option>
                <option value="BJ">北京铁路局</option>
                <option value="BT">包头铁路局</option>
                <option value="GZ">广州铁路局</option>
            </select></td>
            </td>
            <td><input type="button" value="查询"></td>
            <td><input type="submit" value="添加" onclick="javascript:location.href='#/addcz'"></td>
            <div class="public-content-cont">
                <table class="public-cont-table">
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
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><input type="text" style="border:0px;background-color:transparent;text-align:center;"
                                   id="1daima" name="1daima" readonly="true" value="EFD30930"/></td>
                        <td>武昌站</td>
                        <td>SYZ</td>
                        <td><span>**铁路局</span></td>
                        <td>3</td>
                        <td><BR>湖北</td>
                        <td>
                            湖北武汉市xxxxx
                        </td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="javascript:;" onclick="changecz(1)">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD30930</td>
                        <td>武昌站</td>
                        <td>SYZ</td>
                        <td><span>**铁路局</span></td>
                        <td>3</td>
                        <td><BR>湖北</td>
                        <td>
                            湖北武汉市xxxxx
                        </td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD30930</td>
                        <td>武昌站</td>
                        <td>SYZ</td>
                        <td><span>**铁路局</span></td>
                        <td>3</td>
                        <td><BR>湖北</td>
                        <td>
                            湖北武汉市xxxxx
                        </td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>EFD30930</td>
                        <td>武昌站</td>
                        <td>SYZ</td>
                        <td><span>**铁路局</span></td>
                        <td>3</td>
                        <td><BR>湖北</td>
                        <td>
                            湖北武汉市xxxxx
                        </td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
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
</script>
<script type="text/html" id="tpl_lcgl">
    <div class="container">
        <div class="public-content">
            <div class="public-content-header">

                <p>
                <h3>列车管理</h3></p>
            </div>
            <br><br><br>
            &nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <td right>车次代码&nbsp<input type="textbox"></td>

            <td><input type="submit" value="查询"></td>
            <td><input type="submit" value="添加" onclick="javascript:location.href='#/addlc'"></td>
            <div class="public-content-cont">
                <table class="public-cont-table">
                    <tr><br><br><br>
                        <th style="width:5%">选择</th>
                        <th style="width:5%">车次代码</th>
                        <th style="width:5%">始发站</th>
                        <th style="width:5%">终点站</th>
                        <th style="width:10%">始发时间</th>
                        <th style="width:10%">终到时间</th>
                        <th style="width:5%">历时</th>
                        <th style="width:5%">里程</th>
                        <th style="width:5%">无座票数</th>
                        <th style="width:10%">车体分类</th>
                        <th style="width:10%">列车类型</th>
                        <th style="width:10%">操作</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Z167</td>
                        <td>青岛</td>
                        <td>广州</td>
                        <td>9:38</td>
                        <td>12:55</td>
                        <td>17小时17分</td>
                        <td>xxkm
                        </td>
                        <td>200</td>
                        <td>新空调</td>
                        <td>直达</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Z167</td>
                        <td>青岛</td>
                        <td>广州</td>
                        <td>9:38</td>
                        <td>12:55</td>
                        <td>17小时17分</td>
                        <td>xxkm
                        </td>
                        <td>200</td>
                        <td>新空调</td>
                        <td>直达</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Z167</td>
                        <td>青岛</td>
                        <td>广州</td>
                        <td>9:38</td>
                        <td>12:55</td>
                        <td>17小时17分</td>
                        <td>xxkm
                        </td>
                        <td>200</td>
                        <td>新空调</td>
                        <td>直达</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Z167</td>
                        <td>青岛</td>
                        <td>广州</td>
                        <td>9:38</td>
                        <td>12:55</td>
                        <td>17小时17分</td>
                        <td>xxkm
                        </td>
                        <td>200</td>
                        <td>新空调</td>
                        <td>直达</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
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
</script>
<script type="text/html" id="tpl_xlgl">
    <div class="container">
        <div class="public-content">
            <div class="public-content-header">

                <p>
                <h3>线路管理</h3></p>
            </div>
            <br><br><br>
            &nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <td right>车站名&nbsp<input type="textbox">&nbsp&nbsp</td>
            <td right>车次&nbsp<input type="textbox"></td>
            <td><input type="submit" value="查询"></td>
            <td><input type="submit" value="添加" onclick="javascript:location.href='#/addxl'"></td>
            <div class="public-content-cont">
                <table class="public-cont-table">
                    <tr><br><br><br>
                        <th style="width:5%">选择</th>
                        <th style="width:5%">线路编号</th>
                        <th style="width:5%">车次代码</th>
                        <th style="width:10%">车站名</th>
                        <th style="width:10%">发车时间</th>
                        <th style="width:5%">到站时间</th>
                        <th style="width:5%">里程</th>
                        <th style="width:5%">停留时间</th>
                        <th style="width:10%">历时</th>
                        <th style="width:10%">车站编号</th>
                        <th style="width:10%">操作</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>FDF1232</td>
                        <td>Z167</td>
                        <td>长沙站</td>
                        <td>9:38</td>
                        <td>9:15</td>
                        <td>xxxk m</td>
                        <td>23分</td>
                        <td>1小时20分</td>
                        <td>z3344</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>FDF1232</td>
                        <td>Z167</td>
                        <td>长沙站</td>
                        <td>9:38</td>
                        <td>9:15</td>
                        <td>xxxk m</td>
                        <td>23分</td>
                        <td>1小时20分</td>
                        <td>z3344</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>FDF1232</td>
                        <td>Z167</td>
                        <td>长沙站</td>
                        <td>9:38</td>
                        <td>9:15</td>
                        <td>xxxk m</td>
                        <td>23分</td>
                        <td>1小时20分</td>
                        <td>z3344</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>FDF1232</td>
                        <td>Z167</td>
                        <td>长沙站</td>
                        <td>9:38</td>
                        <td>9:15</td>
                        <td>xxxk m</td>
                        <td>23分</td>
                        <td>1小时20分</td>
                        <td>z3344</td>
                        <td>
                            <div class="table-fun">
                                <a href="">删除</a>
                                <a href="">修改</a>
                            </div>
                        </td>
                    </tr>
                </table>
                <br> <br>
                <div class="page">
                    <form action="" method="get">

                        共<span>42</span>条线路
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
</script>
<script type="text/html" id="tpl_addcz">
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
</script>
<script type="text/html" id="tpl_addlc">
    <div class="public-content">
        <div class="public-content-header">
            <p>
            <h3>添加列车</h3></p>
        </div>
        <div class="public-content-cont">
            <table class="public-cont-table">
                <tr><br><br><br>
                    <th style="width:5%">车次代码</th>
                    <th style="width:5%">始发站</th>
                    <th style="width:5%">终点站</th>
                    <th style="width:10%">始发时间</th>
                    <th style="width:10%">终到时间</th>
                    <th style="width:5%">历时</th>
                    <th style="width:5%">里程</th>
                    <th style="width:5%">无座票数</th>
                    <th style="width:10%">车体分类</th>
                    <th style="width:10%">列车类型</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    <div align="center"><input type="button" value="提交"></div>
</script>
<script type="text/html" id="tpl_addxl">
    <div class="public-content">
        <div class="public-content-header">
            <p>
            <h3>添加线路</h3></p>
        </div>
        <div class="public-content-cont">
            <table class="public-cont-table">
                <tr><br><br><br>
                    <th style="width:5%">线路编号</th>
                    <th style="width:5%">车次代码</th>
                    <th style="width:10%">车站名</th>
                    <th style="width:10%">发车时间</th>
                    <th style="width:5%">到站时间</th>
                    <th style="width:5%">里程</th>
                    <th style="width:5%">停留时间</th>
                    <th style="width:10%">历时</th>
                    <th style="width:10%">车站编号</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    <div align="center"><input type="button" value="提交"></div>
</script>
<script src="E:\router.min.js"></script>
<script src="E:\example.js"></script>
</body>
</html>
