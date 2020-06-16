<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-03-18
  Time: 17:00
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/layui/layui.all.js"></script>

</head>

<body>
<div class="cBody">
    <div class="console">
        <form class="layui-form" action="${pageContext.request.contextPath}/admin/baseListOrderByTel" method="post">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" name="tel" required lay-verify="required" placeholder="一级模糊查询--手机号" autocomplete="off" class="layui-input">
                </div>
                <button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
            </div>
        </form>

        <script>
            layui.use(form, function() {
                var form = layui.form;

                //监听提交
                form.on('submit(formDemo)', function() {
                    return true;
                });

                var newDate = new Date();
                nowTime = newDate.getFullYear()+"-"+(newDate.getMonth()+1)+"-"+newDate.getDate();
                laydate.render({
                    elem: '#time'
                    ,range: '~'
//					    	,type: 'datetime'	//开启时分秒
                    ,format: 'yyyy-MM-dd'
                    ,max: nowTime	//min/max - 最小/大范围内的日期时间值
                });
            });
        </script>
    </div>

    <table class="layui-table">
        <thead>
        <tr>
            <th>订单编号</th>
            <th>客户手机号</th>
            <th>车型</th>
            <th>取车地点</th>
            <th>还车地点</th>
            <th>订单金额</th>
            <th>订单状况</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach begin="1" end="${orderList.size() - 1}" var="i">
            <tr>
                <td>
                        ${orderList[i].orderId}
                </td>
                <td>
                        ${orderList[i].tel}
                </td>
                <td>
                        ${orderList[i].carName}
                </td>
                <td>
                        ${orderList[i].getCityName}
                </td>
                <td>
                        ${orderList[i].backCityName}
                </td>
                <td>
                        ${orderList[i].oPrice}
                </td>
                <td>
                        ${orderList[i].status}
                </td>
                <td>
                    <button class="layui-btn layui-btn-xs">修改</button>
                    <button class="layui-btn layui-btn-xs" id="btn">基本信息</button>
                </td>
            </tr>

        </c:forEach>
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

    <script>
        layui.use('layer', function() {
            var layer = layui.layer;
            $(document).on('click','#btn',function(){
                layer.msg('hello');
            });
        });
    </script>
</div>
</body>

</html>
