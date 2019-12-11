<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/12
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="app">
<button onclick="app()">点击</button>
</div>
</body>

<script src="resources/js/jquery-3.3.1.js"></script>
<script type="javascript">
    function app() {
        $("#app").load("https://www.baidu.com");
    }


    if (number > 0) {

        var cityId = ${getStopCity.cityId};
        var type = "money";

        $.ajax({
                url: "${pageContext.request.contextPath}/user/sortByMoneyOrHeat",
                type: "post",
                data: {
                    'cityId':cityId,
                    'type':type
                },
                dataType: "json",

                success: function (data) {
                    $("#carlist").load(data)
                }
                ,
                async: true
            }
        );

    } else {

        var cityId = ${getStopCity.cityId};
        var type = "heat";

        $.ajax({
            url: "${pageContext.request.contextPath}/user/sortByMoneyOrHeat",
            type: "post",
            data: {
                'cityId':cityId,
                'type':type
            },
            success: function (data) {
                $("#carlist").load(data)
            },
            async: true
        });
    }



    $("#email").onclick(function () {
        var parasm = "email="+$("#email").val();
        $("#app").load("${pageContext.request.contextPath}/user/myInfo", parasm);
    })
</script>



<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function () {
                var that = this;
                //多窗口模式，层叠置顶
            }
            , offset: function (othis) {
                var type = othis.data('type')
                    , text = othis.text();

                layer.open({
                    type: 1
                    ,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,
                    id: 'layerDemo' + type //防止重复弹出
                    ,
                    content: '<div style="width: 300px; height: 200px;">请输入修改后的手机号：<br><form><input type="text" name="tel" id="tel"></form></div>'
                    ,
                    btn: '修改'
                    ,
                    btnAlign: 'c' //按钮居中
                    ,
                    shade: 0 //不显示遮罩
                    ,
                    yes: function () {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/user/updateUser",
                            type: "post",
                            data: $("form").serialize(),
                            dataType: 'json',
                            success: function (res) {
                                if (res.code == 1) {
                                    alert("修改成功！");
                                    window.location.href = ("${pageContext.request.contextPath}/user/myInfo");
                                } else {
                                    layer.alert(res.info);
                                }
                            },
                            error: function () {
                                elert("ajax错误");
                            }
                        });


                    }
                });
            }
        };

        $('#layerDemo #layui').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>

<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function () {
                var that = this;
                //多窗口模式，层叠置顶
            }
            , offset: function (othis) {
                var type = othis.data('type')
                    , text = othis.text();

                layer.open({
                    type: 1
                    ,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,
                    id: 'layerDemo' + type //防止重复弹出
                    ,
                    content: '<div style="width: 300px; height: 200px;">请输入修改后的邮箱：<br><form><input type="text" name="email" id="email"></form></div>'
                    ,
                    btn: '修改'
                    ,
                    btnAlign: 'c' //按钮居中
                    ,
                    shade: 0 //不显示遮罩
                    ,
                    yes: function () {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/user/updateUser",
                            type: "post",
                            data: $("form").serialize(),
                            dataType: 'json',
                            success: function (res) {
                                if (res.code == 1) {
                                    alert("修改成功！");
                                    window.location.href = ("${pageContext.request.contextPath}/user/myInfo");
                                } else {
                                    layer.alert(res.info);
                                }
                            },
                            error: function () {
                                elert("ajax错误");
                            }
                        });
                    }
                });
            }
        };

        $('#layerDemo #layui1').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>

<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function () {
                var that = this;
                //多窗口模式，层叠置顶
            }
            , offset: function (othis) {
                var type = othis.data('type')
                    , text = othis.text();

                layer.open({
                    type: 1
                    ,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,
                    id: 'layerDemo' + type //防止重复弹出
                    ,
                    content: '<div style="width: 300px; height: 200px;">请输入修改后的密码：<br><form><input type="text" name="password" id="password"></form></div>'
                    ,
                    btn: '修改'
                    ,
                    btnAlign: 'c' //按钮居中
                    ,
                    shade: 0 //不显示遮罩
                    ,
                    yes: function () {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/user/updateUser",
                            type: "post",
                            data: $("form").serialize(),
                            dataType: 'json',
                            success: function (res) {
                                if (res.code == 1) {
                                    alert("修改成功！");
                                    window.location.href = ("${pageContext.request.contextPath}/user/myInfo");
                                } else {
                                    layer.alert(res.info);
                                }
                            },
                            error: function () {
                                elert("ajax错误");
                            }
                        });


                    }
                });
            }
        };

        $('#layerDemo #layui2').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>

</html>
