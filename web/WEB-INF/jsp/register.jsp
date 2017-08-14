<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/20
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <%@ include file="top.jsp" %>


    <div style="text-align: center;">


        <form>
            <span style="color: #B5B5B5; ">注：标有<span style="color: #FF5E00; ">*</span>处，均为必填项</span>
            <div style="text-align:center">
                <div id="dlgReply">
                    <table width="403" height="50" align="center" border=0>
                        <br>
                        <br>
                        <br>
                        <h4><span style="color: #FF5E00; ">登录信息</span></h4>
                        <tr>
                            <td><span style="color: #FF5E00; ">*</span>登录名:&nbsp;&nbsp;
                                <input id="username" type="text" required="true">
                                <!-- <font color="#B5B5B5">由字母、数字组成，长度在6到12位间</font> -->
                            </td>
                        </tr>
                        <tr>
                            <td><span style="color: #FF5E00; ">*</span>登录密码:
                                <input id="pw1" type="password" required="true"></td>
                        </tr>
                        <tr>
                            <td><span style="color: #FF5E00; ">*</span>确认密码:
                                <input id="pw2" type="password" required="true"></td>
                        </tr>
                    </table>
                </div>
                <!--<table>-->
                <!---->
                <!--<h4><span style="color: #FF5E00; ">权限设置</span></h4>-->
                <!--<tr>-->
                <!--<td ><font color="#FF5E00">*</font>用户权限:&nbsp;&nbsp;-->

                <!--<select name="" id="">-->
                <!--<option value="管理员">管理员</option>-->
                <!--</select>-->
                <!--</td>-->
                <!--</tr>-->
                <!---->
                <!--</table>-->
                <div id="dlgReply">
                    <table width="403" height="309" align="center" border=0>
                        <div align="center">
                            <h4><span style="color: #FF5E00; ">详细信息</span></h4>


                            <tr>
                                <td><span style="color: #FF5E00; ">*</span>真实姓名:
                                    <input id="name" type="text" required="true"></td>
                            </tr>
                            <tr>

                                <td><span style="color: #FF5E00; ">*</span>性别:
                                    <input type="radio" name="sex" value="男" checked="checked"> 男
                                    <input type="radio" name="sex" value="女">女
                                </td>
                            </tr>
                            <tr>
                                <td><span style="color: #FF5E00; ">*</span>省份：
                                    <select required="true" id="province">
                                        <option value="1">省份</option>
                                        <option value="1">省份</option>
                                        <option value="1">省份</option>
                                        <option value="1">省份</option>
                                        <option value="1">省份</option>
                                    </select>
                                    城市：
                                    <select required="true" id="city">
                                        <option value="">市县</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><span style="color: #FF5E00; ">*</span>证件类型：
                                    <select required="true">
                                        <option value="">二代身份证</option>
                                        <option value="">其他</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><span style="color: #FF5E00; ">*</span>证件号码:
                                    <input id="idcard" type="text" required="true"></td>
                            </tr>
                            <tr>
                                <td><span style="color: #FF5E00; ">*</span>出生日期:
                                    <input id="birth" type="date" required="true"></td>
                            </tr>
                            <tr>
                                <td><span style="color: #FF5E00; ">*</span>旅客类型：
                                    <select required="true">
                                        <option value="adult">成人</option>
                                        <option value="student">学生</option>
                                        <option value="child">儿童</option>
                                        <option value="disabled">残疾军人、伤残人民警察</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><span style="color: #FF5E00; ">&nbsp; </span> 备注:
                                    <input id="" type="textfield" required="true">
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox">
                                    <span style="font-size: x-small; ">   我已阅读并同意遵守<a
                                            href="https://kyfw.12306.cn/otn/regist/rule" target="_blank" shape="rect">《中国铁路客户服务中心网站服务条款》</a></span>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <input id="signin" type="submit" value="提交" onclick="getMessage()">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="reset" value="重置"></td>

                            </tr>
                        </div>
                    </table>
                </div>
        </form>
    </div>
    </body>
    <script src="js/common.js"></script>
</html>
