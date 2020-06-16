<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-03-17
  Time: 16:37
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
    <title>穷在闹市出品</title>

    <!-- 公共样式 开始 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/base.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/iconfont.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/framework/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <!-- 滚动条插件 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.css">
    <script src="${pageContext.request.contextPath}/resources/framework/jquery-ui-1.10.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/framework/jquery.mousewheel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/framework/jquery.mCustomScrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
    <!-- 公共样式 结束 -->

    <style>
        .layui-form-label{
            width: 100px;
        }
        .layui-input-block{
            margin-left: 130px;
        }
        .layui-form{
            margin-right: 30%;
        }
    </style>

</head>

<body>
<div class="cBody">
    <form id="addForm" class="layui-form" action="${pageContext.request.contextPath}/admin/goodsAddMsg">
        <div class="layui-form-item">
            <label class="layui-form-label">汽车车型</label>
            <div class="layui-input-block">
                <input type="text" name="carName" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">商品图片url</label>
            <div class="layui-input-block">
                <input type="text" name="carPicture" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">租金/天</label>
            <div class="layui-input-block">
                <input type="number" name="carPrice" required lay-verify="required|number" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">座位数</label>
            <div class="layui-input-block">
                <input type="number" name="carSitnum" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">车型数量</label>
            <div class="layui-input-block">
                <input type="number" name="carNumber" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">换挡类型</label>
            <div class="layui-input-inline">
                <select name="carType" id="carType">
                    <option value="手动挡">手动挡</option>
                    <option value="自动挡">自动挡</option>
                    <option value="手自一体">手自一体</option>
                    <option value="自排">自排</option>
                    <option value="无级变速">无级变速</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">所属车点</label>
            <div class="layui-input-inline">
                <select name="cityId" id="cityId">
                    <c:forEach begin="0" end="${cityAll.size() - 1}" var="i">
                        <option value="${cityAll[i].cityId}">${cityAll[i].cityName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <%--<div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="nan" title="启用">
                <input type="radio" name="sex" value="nv" title="禁用" checked>
            </div>
        </div>--%>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="submitBut">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>


    <script>
        layui.use('form', function() {
            var form = layui.form;
            //监听提交
            form.on('submit(submitBut)', function() {
                return true;
            });
        });
    </script>

</div>
</body>

</html>
