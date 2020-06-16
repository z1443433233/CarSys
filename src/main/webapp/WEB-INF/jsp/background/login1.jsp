<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-03-15
  Time: 15:30
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
    <script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
    <script type="text/javascript" src="layui/layui.js"></script>
    <!-- 公共样式 结束 -->

    <link rel="stylesheet" type="text/css" href="css/login1.css">
    <script type="text/javascript" src="js/login1.js"></script>--%>

    <!-- 公共样式 开始 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"/>
    <link rel="bookmark" href="${pageContext.request.contextPath}/resources/images/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/base.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/iconfont.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/framework/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/layui/layui.all.js"></script>
    <!-- 公共样式 结束 -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login1.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login1.js"></script>
</head>

<body>
<div class="loginBg"></div>
<div class="login_main">
    <div class="box">
        <div class="left">
            <img src="${pageContext.request.contextPath}/resources/images/admin1.jpg"/>
            <p>车速递后台管理</p>
        </div>
        <div class="right">
            <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/admin/login" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label login_title"><i class="iconfont icon-gerenzhongxin-denglu"></i></label>
                    <div class="layui-input-block login_input">
                        <input type="text" name="account" required lay-verify="required" autocomplete="off" placeholder="请输入您的用户名" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label login_title"><i class="iconfont icon-mima1"></i></label>
                    <div class="layui-input-block login_input">
                        <input type="password" name="password" required lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid login_but" lay-submit lay-filter="loginBut">登 录</button>
                </div>
                <div>
                    <p style="font-size: 20px; color: red">
                        ${cuowu}
                    </p>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    layui.use('form', function() {
        var form = layui.form;
        //监听提交
        form.on('submit(loginBut)', function() {
            return true;
        });
    });
</script>
</body>

</html>
