<%--
  Created by IntelliJ IDEA.
  User: Virtual-Cry
  Date: 2016/9/13
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<link href="${pageContext.request.contextPath}/css/Page_Administrator/dht.css" rel="stylesheet"/>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/Page_Administrator/planManagement.js"></script>

<div id="main-content">
    <div class="main-right  col-md-10 col-md-offset-2">

        <form action="TicketManagementSearch">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="input-group">
                        <s:textfield name="train" class="form-control" aria-label="..." placeholder="输入车次"
                                     style="width: 280px"/>
                        <span class="input-group-btn">
                        <s:textfield name="carNo" class="form-control" aria-label="..." placeholder="输入车箱"
                                     style="width: 280px"/>
                        <s:submit class="btn btn-default" value="确认"/>
                    </span>
                    </div>
                </div>
            </div>
        </form>

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    列车席位信息
                </div>
                <div class="panel-body">
                    <table class="table table-bordered tb-hover">
                        <thead>
                        <tr>
                            <td>席位代码</td>
                            <td>车次</td>
                            <td>日期</td>
                            <td>车厢号</td>
                            <td>座位号</td>
                            <td>乘车区间起始站</td>
                            <td>乘车区间终到站</td>
                            <td>售票状态</td>
                            <td>修改</td>
                        </tr>
                        </thead>
                        <tbody>
                        <s:iterator value="seatList">
                            <tr>
                                <td><s:property value="seatID"/></td>
                                <td><s:property value="train"/></td>
                                <td><s:property value="date"/></td>
                                <td><s:property value="carNo"/></td>
                                <td><s:property value="seatNo"/></td>
                                <td><s:property value="departureStation"/></td>
                                <td><s:property value="arrivalStation"/></td>
                                <td><s:property value="ticketStatus"/></td>
                                <td>
                                    <a href="TicketManagementRevise?seatID=<s:property value="seatID"/>"><i
                                            class="glyphicon glyphicon-edit"></i></a>
                                </td>
                            </tr>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <br/>
    </div>
</div>



