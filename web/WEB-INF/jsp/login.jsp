<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/20
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <%@ include file="top.jsp" %>
    <div>
        <s:form action="getUser">
            <div id="dlgReply">
                <table width="933" border="0" align="center" cellpadding="0" cellspacing="0" style="margin:120px;">
                    <tr>
                        <td height="412" valign="top" background="img/bg_img1.jpg">
                            <table height="300" border="0" cellspacing="0">
                                <tr>
                                    <td width="529">&nbsp;</td>
                                    <td height="130" colspan="6">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td rowspan="9">&nbsp;</td>
                                    <td width="97" height="20" align="right"><img src="img/text_yh.gif" width="60"
                                                                                  height="18"></td>
                                    <td width="15">&nbsp;</td>
                                    <td width="143"><input name="user.username" type="text" id="username" size="18"/>
                                    </td>
                                    <h5>
                                        <td width="98"><a href="register">点击注册</a></td>
                                    </h5>
                                    <td width="2">&nbsp;</td>
                                    <td width="35">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="20" align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"><img src="img/text_password.gif" width="60"
                                                                       height="18"></td>
                                    <td>&nbsp;</td>
                                    <td><input name="user.password" type="password" id="password" pssardchar='*'
                                               size="18"/></td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="20" align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <td height="20">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="20">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td colspan="2">
                                        <table width="200" border="0" cellspacing="0">
                                            <tr>
                                                <td width="78"><input type="submit" value="登录"/></td>
                                                <td width="78">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="20">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </s:form>
    </div>
    </body>
</html>
