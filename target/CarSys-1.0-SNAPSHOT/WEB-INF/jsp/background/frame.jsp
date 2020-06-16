<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-03-16
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
    <meta name="renderer" content="webkit">
    <!--国产浏览器高速模式-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="穷在闹市" />
    <!-- 作者 -->
    <meta name="revised" content="穷在闹市.v3, 2019/05/01" />
    <!-- 定义页面的最新版本 -->
    <meta name="description" content="网站简介" />
    <!-- 网站简介 -->
    <meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
    <title>车速递后台管理</title>

    <%--<!-- 公共样式 开始 -->
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link rel="bookmark" href="images/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/iconfont.css">
    <script type="text/javascript" src="framework/jquery-1.11.3.min.js" ></script>
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
    <!--[if lt IE 9]>
    <script src="framework/html5shiv.min.js"></script>
    <script src="framework/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="layui/layui.js"></script>
    <!-- 滚动条插件 -->
    <link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css">
    <script src="framework/jquery-ui-1.10.4.min.js"></script>
    <script src="framework/jquery.mousewheel.min.js"></script>
    <script src="framework/jquery.mCustomScrollbar.min.js"></script>
    <script src="framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
    <!-- 公共样式 结束 -->

    <link rel="stylesheet" type="text/css" href="css/frameStyle.css">
    <script type="text/javascript" src="framework/frame.js" ></script>--%>

    <!-- 公共样式 开始 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"/>
    <link rel="bookmark" href="${pageContext.request.contextPath}/resources/images/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/base.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/iconfont.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/framework/jquery-1.11.3.min.js" ></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">

    <![endif]-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <!-- 滚动条插件 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.css">
    <script src="${pageContext.request.contextPath}/resources/framework/jquery-ui-1.10.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/framework/jquery.mousewheel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/framework/jquery.mCustomScrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
    <!-- 公共样式 结束 -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/frameStyle.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/framework/frame.js" ></script>

</head>

<body>
<!-- 左侧菜单 - 开始 -->
<div class="frameMenu">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/resources/images/admin1.jpg"/>
        <div class="logoText">
            <h1>车速递后台管理</h1>
            <p>qiongzainaoshi</p>
        </div>
    </div>
    <div class="menu">
        <ul>
            <li>
                <a class="menuFA" href="javascript:void(0)" onclick="menuCAClick('${pageContext.request.contextPath}/admin/API',this)"><i class="iconfont icon-zhishi left"></i>前端API</a>
            </li>
            <li>
                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left"></i>商品管理<i class="iconfont icon-dajiantouyou right"></i></a>
                <dl>
                    <dt><a href="javascript:void(0)" onclick="menuCAClick('${pageContext.request.contextPath}/admin/goodsList',this)">汽车基本信息库</a></dt>
                    <dt><a href="javascript:void(0)" onclick="menuCAClick('${pageContext.request.contextPath}/admin/goodsAdd',this)">车辆信息添加</a></dt>
                </dl>
            </li>
            <li>
                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-yunying left"></i>基础库内容<i class="iconfont icon-dajiantouyou right"></i></a>
                <dl>
                    <dt><a href="javascript:void(0)" onclick="menuCAClick('${pageContext.request.contextPath}/admin/baseList',this)">用户列表</a></dt>
                    <dt><a href="javascript:void(0)" onclick="menuCAClick('${pageContext.request.contextPath}/admin/baseListOrder',this)">订单列表</a></dt>
                </dl>
            </li>
            <li>
                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left"></i>报表模块<i class="iconfont icon-dajiantouyou right"></i></a>
                <dl>
                    <dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/reportForm/reportForm1.html',this)">订单统计报表</a></dt>
                </dl>
            </li>
        </ul>
    </div>
</div>
<!-- 左侧菜单 - 结束 -->

<div class="main">
    <!-- 头部栏 - 开始 -->
    <div class="frameTop">
        <img class="jt" src="${pageContext.request.contextPath}/resources/images/top_jt.png"/>
        <div class="topMenu">
        </div>
    </div>
    <!-- 头部栏 - 结束 -->

    <!-- 核心区域 - 开始 -->
    <div class="frameMain">
        <div class="title" id="frameMainTitle">
            <span><i class="iconfont icon-xianshiqi"></i>后台首页</span>
        </div>
        <div class="con">
            <iframe id="mainIframe" src="${pageContext.request.contextPath}/admin/API" scrolling="no"></iframe>
        </div>
    </div>
    <!-- 核心区域 - 结束 -->
</div>

<script>
    layui.use('layer', function(){
        var layer = layui.layer;

        layer.msg('欢迎登陆');
    });
</script>
</body>

</html>
