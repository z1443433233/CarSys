<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-03-18
  Time: 16:54
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

</head>

<body>
<div class="cBody">
    <div class="console">
        <form class="layui-form" action="${pageContext.request.contextPath}/admin/baseList" method="post">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" name="tel" required lay-verify="required" placeholder="输入手机号" autocomplete="off" class="layui-input">
                </div>
                <button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
            </div>
        </form>

        <script>
            layui.use(form, function() {
                var form = layui.form;

                //监听提交
                form.on('submit(formDemo)', function() {
                    return false;
                });

            });
        </script>
    </div>

    <table class="layui-table">
        <thead>
        <tr>
            <th>用户编号</th>
            <th>手机号</th>
            <th>密码</th>
            <th>邮箱</th>
            <th>邀请码</th>
            <th>租车次数</th>
            <th>租车总金额</th>
            <th>账户状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${userList.size() > 0}">
            <c:forEach begin="0" end="${userList.size() - 1}" var="i">
                <tr>
                    <td>
                            ${userList[i].userId}
                    </td>
                    <td>
                            ${userList[i].tel}
                    </td>
                    <td>
                            ${userList[i].password}
                    </td>
                    <td>
                            ${userList[i].email}
                    </td>
                    <td>
                        <c:if test="${userList[i].invitation == null}">
                            无邀请码
                        </c:if>
                        <c:if test="${userList[i].invitation != null}">
                            ${userList[i].invitation}
                        </c:if>
                    </td>
                    <td>
                            ${userList[i].rentCarNum}
                    </td>
                    <td>
                            ${userList[i].rentCarSumPrice}
                    </td>
                    <td>
                        <c:if test="${userList[i].status == 1}">
                            正常
                        </c:if>
                        <c:if test="${userList[i].status == 0}">
                            违规封禁
                        </c:if>
                    </td>
                    <td>
                        <button class="layui-btn layui-btn-xs">修改</button>
                        <button class="layui-btn layui-btn-xs" id="btn">基本信息</button>
                    </td>
                </tr>

            </c:forEach>
        </c:if>
        </tbody>
    </table>

    <!-- layUI 分页模块 -->
    <div id="pages"></div>
    <script>
        layui.use(['laypage', 'layer'], function() {
            var laypage = layui.laypage,
                layer = layui.layer;

            //总页数大于页码总数
            laypage.render({
                elem: 'pages'
                ,count: 100
                ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
                ,jump: function(obj){
                    console.log(obj)
                }
            });
        });
    </script>
</div>
</body>

</html>
