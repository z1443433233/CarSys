<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-04-07
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mymain.mymain.css">
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/updateUser" method="post">
    <br>
    <div class="layui-form-item">
        <input placeholder="请输入修改后的密码" class="layui-input" type="text" lay-verify="tel" name="password" id="password">
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
    </div>
</form>

<script type="text/javascript">
    layui.use('form',function () {
        //自定义验证规则
        form.verify({
            password: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });
        form.on('submit(formDemo)', function (data) {
            alert(data.field)
        })
    })
</script>
</body>
</html>
