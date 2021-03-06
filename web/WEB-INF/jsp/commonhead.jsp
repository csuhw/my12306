<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<!--
	作者：759256511@qq.com
	时间：2016-09-20
	描述：
-->
<head>
    <meta charset="UTF-8">
    <title>12306后台管理系统</title>
    <link href="favicon.ico" rel="icon" type="image/x-icon">
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/content.css"/>
    <link rel="stylesheet" type="text/css" href="css/head.css"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
</head>

<body>
<div class="head" id="header">
    <div class="head_box">
        <div class="inner wrp">
            <h1 class="logo"><a href="/" title="12306后台管理系统"></a></h1>
            <!--<h1 class="logo"><a href="/" title="微信公众平台"></a></h1>-->
        </div>
    </div>
</div>
<div id="body" class="body page_index">
    <div id="js_container_box" class="container_box cell_layout side_l">
        <div class="col_side">
            <div class="menu_box" id="menuBar">
                <dl class="menu no_extra ">
                    <dt class="menu_title"><i class="icon_menu"
                                              style="background:url(        https://res.wx.qq.com/mpres/htmledition/images/icon/menu/icon_menu_management.png        ) no-repeat;"> </i>计划管理
                    </dt>
                    <dd class="menu_item">
                        <a href="planManage">计划管理 </a>
                    </dd>
                </dl>
                <dl class="menu ">
                    <dt class="menu_title"><i class="icon_menu"
                                              style="background:url(        https://res.wx.qq.com/mpres/htmledition/images/icon/menu/icon_menu_ad.png        ) no-repeat;"> </i>票务管理
                    </dt>
                    <dd class="menu_item ">
                        <a href="#">调度管理 </a>
                    </dd>
                </dl>
                <dl class="menu ">
                    <dt class="menu_title"><i class="icon_menu"
                                              style="background:url(        https://res.wx.qq.com/mpres/htmledition/images/icon/menu/icon_menu_function.png        ) no-repeat;"> </i>基础数据维护
                    </dt>
                    <dd class="menu_item ">
                        <a href="showStation">车站管理 </a>
                    </dd>
                    <dd class="menu_item ">
                        <a href="trainManage">列车管理 </a>
                    </dd>
                    <dd class="menu_item ">
                        <a href="routeManage">线路管理 </a>
                    </dd>
                    <dd class="menu_item ">
                        <a href="pjlManage">票价率管理</a>
                    </dd>
                    <dd class="menu_item ">
                        <a href="lcbzManage">列车编组管理 </a>
                    </dd>
                    <dd class="menu_item ">
                        <a href="dydjManage">递远递减率管理</a>
                    </dd>
                    <dd class="menu_item ">
                        <a href="qdbManage">票价旅程区段管理</a>
                    </dd>
                    <!--<dd class='menu_plugins'>
                        <a class='btn_plugins_add' href="">添加功能插件<i class='icon_common new'></i></a>
                    </dd>-->
                </dl>

            </div>
        </div>
        <div class="col_main">