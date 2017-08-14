<%--
  Created by IntelliJ IDEA.
  User: Demon
  Date: 2016/9/20
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="css1/reset0.css"/>
<link rel="stylesheet" href="css1/content.css"/>
<link rel="stylesheet" type="text/css" href="css1/index2.css"/>
<link rel="stylesheet" type="text/css" href="css1/common.css">
<link rel="stylesheet" type="text/css" href="css1/index.css">

<meta name="author" content="orde5r by mycodes.net"/>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="application/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/jquery.tools.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".tabBox .tabNav li").click(function () {
            $(this).siblings("li").removeClass("now");
            $(this).addClass("now");
            $(this).parents(".tabBox").find(".tabCont").css("display", "none");
            var i = $(this).index();
            $(this).parents(".tabBox").find(".tabCont:eq(" + i + ")").css("display", "block");
            //console.log(i);
        });
    })
</script>
<!--滑动门-->
</head>

<body>
<header id="header">
    <!--头部的顶部-->

    <div class="headtp">
        <div class="">
            <div class="fl">
                <a href="#" onClick="AddFavorite(window.location,document.title)">收藏首页</a>
                <a href="register" target="_blank">免费注册</a>
                <a href="login" target="_blank">登录</a>
            </div>
            <!--搜索框-->
            <div class="fr">
                <div class="search">
                    <form>
                        <input class="iptxt" type="text" onBlur="if(this.value=='')this.value='搜索关键词...';"
                               onfocus="if(this.value=='搜索关键词...')this.value='';" value="搜索关键词..."
                               title="搜索" id="mykey" style="color: rgb(198, 198, 198);">
                        <a class="subtn" type="button" value="" id="mysub" href="javascript:void(0);"></a>
                        <script type="text/javascript">
                            $("#mysub").click(function () {
                                if ($.trim($("#mykey").val()) == "搜索") {
                                    alert("请输入关键字！");
                                    return;
                                }
                                location.href = "/aspx/pageabout.aspx?type=search&keyword=" + escape($("#mykey").val()) + "";
                            });
                            function AddFavorite(sURL, sTitle) {
                                sURL = encodeURI(sURL);
                                try {
                                    window.external.addFavorite(sURL, sTitle);
                                } catch (e) {
                                    try {
                                        window.sidebar.addPanel(sTitle, sURL, "");
                                    } catch (e) {
                                        alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.");
                                    }
                                }
                            }
                        </script>
                    </form>
                </div>
            </div>
            <!--搜索框end-->
        </div>
    </div>
    <!--头部的下面部分-->
    <div class="headcon">
        <div class="container" style="background:url(../../img/logo.png); height:200; width:200;">
            <a href="index" target="_blank"></a>
        </div>
    </div>

</header>
<!--导航-->
<nav class="nav">
    <div class="navbar container">
        <ul style="text-align: ">
            <li><a href="index">网站首页</a></li>
            <li><a href="#">用户信息</a></li>
            <li><a href="book">购票窗口</a></li>
            <li><a href="#">使用指南</a></li>
            <li><a href="houtai">后台中心</a></li>
            <li><a href="book">车票查询</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
    </div>
</nav>