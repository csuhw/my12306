<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/21
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单确认</title>
    <%@ include file="top.jsp" %>中间部分-->
    <script type="text/javascript">
        $('#hotpic').liteNav(5000);
    </script>
    <!-- 代码 结束 -->
    </div>
    </div>
    <!--盒子1--><!--盒子2--><br><br><br>

    <br><br>
    <div class="public-content-cont">
        <table class="public-cont-table" border="2" bordercolor="">
            <tr>
                <th style="width:10%">序号</th>
                <th style="width:15%">席别

                </th>
                <th style="width:15%">票种

                </th>
                <th style="width:10%">姓名</th>
                <th style="width:20%">证件号码</th>
                <th style="width:10%">手机号码</th>
                <th style="width:10%">票价</th>
                <th style="width:10%">操作</th>

            </tr>

            <tr>
                <td>1</td>
                <td><select required="true" id="province">
                    <option value="1">硬座</option>
                    <option value="1">软座</option>
                    <option value="1">硬卧</option>
                </select>
                </td>
                <td>
                    <select required="true" id="province">
                        <option value="1">成人票</option>
                        <option value="1">学生票</option>
                        <option value="1">儿童票</option>
                    </select></td>
                <td><s:property value="%{user.username}"/></td>
                <td><s:property value="%{user.getIdnumber()}"/></td>
                <td><s:property value="%{user.getPhonenumber()}"/></td>
                <td>56</td>
                <td>
                    <div class="table-fun"><a href="#">添加</div>
                </td>

        </table>

    </div>
    <br>
    <span style="display:block; text-align:center"><input type="submit" value="提交" class="btn"
                                                          style="width: 40px; height: 30px;"/></span>
    </body>
</html>
