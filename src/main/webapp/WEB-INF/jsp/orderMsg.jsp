<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-04-05
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mymain.mymain.css">
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>

    <title>订单详情页</title>
</head>
<body>
<div id="order">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>订单编号</th>
            <th>汽车车型</th>
            <th>订单金额</th>
            <th>取车地点</th>
            <th>还车地点</th>
            <th>订单状况</th>
            <th>预定时间</th>
            <th>还车时间</th>
            <th>处理时间</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>{{orderId}}</td>
            <td>{{carName}}</td>
            <td>{{oPrice}}</td>
            <td>{{getCityName}}</td>
            <td>{{backCityName}}</td>
            <td>{{status}}</td>
            <td>{{reserveDate}}</td>
            <td>{{returnDate}}</td>
            <td>{{disposeDate}}</td>
        </tr>

        </tbody>
    </table>
</div>
<script>
    var vm = new Vue({
        el: '#order',
        data: {
            orderId: '1',
            carName: '1',
            oPrice: '1',
            getCityName: '1',
            backCityName: '1',
            status: '1',
            reserveDate: '1',
            returnDate: '1',
            disposeDate: '1'
        }
    });
</script>
</body>
</html>
