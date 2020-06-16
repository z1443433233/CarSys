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
        .layui-table img {
            max-width: none;
        }
    </style>

</head>

<body>
<div class="cBody">
    <div class="console">
        <form class="layui-form" action="${pageContext.request.contextPath}/admin/goodsList" method="post">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" name="carName" required lay-verify="required" placeholder="模糊查询--汽车车型" autocomplete="off" class="layui-input">
                </div>
                <button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
            </div>
        </form>

        <script>
            layui.use('form', function() {
                var form = layui.form;

                //监听提交
                form.on('submit(formDemo)', function() {
                    return true;
                });
            });
        </script>
    </div>

    <table class="layui-table">
        <thead>
        <tr>
            <th>汽车车型</th>
            <th>换挡类型</th>
            <th>座位数</th>
            <th>所属车点</th>
            <th>价格</th>
            <th>数量</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach begin="0" end="${carList.size() - 1}" var="i">
            <tr>
                <td>
                        ${carList[i].carName}
                </td>
                <td>
                        ${carList[i].carType}
                </td>
                <td>
                        ${carList[i].carSitNum}
                </td>
                <td>
                        ${carList[i].cityName}
                </td>
                <td>
                        ${carList[i].carPrice}
                </td>
                <td>
                        ${carList[i].carNumber}
                </td>
                <td>
                    <form class="layui-form" action="${pageContext.request.contextPath}/admin/goodsGetById">
                        <input type="text" name="id" class="layui-input" style="display:none" value="${carList[i].id}">
                        <button class="layui-btn layui-btn-xs" lay-filter="formDemo">修改</button>
                    </form>
                </td>
                <%--<td>
                    <form class="layui-form" action="">
                        <input type="text" hidden value="${carList[i].id}">
                        <button class="layui-btn layui-btn-xs" onclick="getCarId(${carList[i].id})">修改</button>
                    </form>
                </td>--%>
            </tr>

        </c:forEach>
        </tbody>
    </table>

    <!-- layUI 分页模块 -->
    <div id="pages"></div>
    <script>
        layui.use('laypage', function() {
            var laypage = layui.laypage;

            //总页数大于页码总数
            laypage.render({
                elem: 'pages'
                ,count: 100
                ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
                ,jump: function(obj){
//					      console.log(obj)
                }
            });
        });
        //修改规格
        function specificationsBut(){
            layui.use('layer', function() {
                var layer = layui.layer;

                //iframe层-父子操作
                layer.open({
                    type: 2,
                    area: ['70%', '60%'],
                    fixed: false, //不固定
                    maxmin: true,
                    content: 'specifications_list.html'
                });
            });

        }
        //修改按钮
        var updateFrame = null;
        function updateBut(){
            layui.use('layer', function() {
                var layer = layui.layer;

                //iframe层-父子操作
                updateFrame = layer.open({
                    title: "商品信息修改",
                    type: 2,
                    area: ['70%', '60%'],
                    scrollbar: true,	//默认：true,默认允许浏览器滚动，如果设定scrollbar: false，则屏蔽
                    maxmin: true,
                    content: 'goods_update.html'
                });
            });

        }
    </script>

    <script>
        layui.use('form', function(){
            var form = layui.form;

            //监听提交
            form.on('submit(formDemo)', function(){
                return true;
            });
        });
    </script>
</div>
</body>

</html>
