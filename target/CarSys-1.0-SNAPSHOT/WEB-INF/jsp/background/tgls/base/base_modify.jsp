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
    <form id="addForm" class="layui-form" action="${pageContext.request.contextPath}/admin/updateStatus">
        <div class="layui-form-item">
            <label class="layui-form-label">订单号</label>
            <div class="layui-input-block">
                <input type="text" name="id" value="${orderMsg.orderId}" readonly required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">客户手机号</label>
            <div class="layui-input-block">
                <input type="text" name="userId" value="${orderMsg.tel}" readonly required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">汽车车型</label>
            <div class="layui-input-block">
                <input type="text" name="carName" value="${orderMsg.carName}" readonly required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">汽车图片</label>
            <div>
                <img src="${orderMsg.carPicture}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">本次租车预付金额</label>
            <div class="layui-input-block">
                <input type="number" name="oPrice" value="${orderMsg.oPrice}" readonly required lay-verify="required|number" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">取车地点</label>
            <div class="layui-input-block">
                <input type="text" name="getCityName" value="${orderMsg.getCityName}" readonly autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">还车地点</label>
            <div class="layui-input-block">
                <input type="text" name="backCityName" value="${orderMsg.backCityName}" readonly autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">预定车辆时间</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" value="${orderMsg.reserveDate}" readonly id="reserve">
            </div>
        </div>

        <c:if test="${orderMsg.returnDate != null}">
            <div class="layui-form-item">
                <label class="layui-form-label">归还车辆时间</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input" value="${orderMsg.returnDate}" readonly id="reserve">
                </div>
            </div>
        </c:if>

        <c:if test="${orderMsg.disposeDate != null}">
            <div class="layui-form-item">
                <label class="layui-form-label">订单处理完成时间</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input" value="${orderMsg.disposeDate}" readonly id="reserve">
                </div>
            </div>
        </c:if>

        <div class="layui-form-item">
            <label class="layui-form-label">订单状态</label>
            <div class="layui-input-inline">
                <select name="status" id="status">
                    <option
                            <c:if test="${orderMsg.status.equals('已预订')}">
                                selected="selected"
                            </c:if>
                            value="已预订" >已预订
                    </option>
                    <option
                            <c:if test="${orderMsg.status.equals('处理中')}">
                                selected="selected"
                            </c:if>
                            value="处理中" >处理中
                    </option>
                    <option
                            <c:if test="${orderMsg.status.equals('已归还')}">
                                selected="selected"
                            </c:if>
                            value="已归还" >已归还
                    </option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="submitBut">立即提交</button>
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
