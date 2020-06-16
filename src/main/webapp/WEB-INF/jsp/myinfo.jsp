<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单管理-车速递</title>
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
<body style="position: static">

<div id="app" class="bgGray">
    <div data-v-95ac8d30="" class="header3">
        <div data-v-95ac8d30="" class="layout clear">
            <div data-v-95ac8d30="" class="left logo">
                <a data-v-95ac8d30="" href="${pageContext.request.contextPath}/index.jsp">
                    <img data-v-95ac8d30=""
                         src="${pageContext.request.contextPath}/resources/images/csd.png">
                </a>
            </div>
            <div data-v-95ac8d30="" class="header3Nav right">|<a data-v-95ac8d30=""
                                                                 href="${pageContext.request.contextPath}/user/orderTable">我的订单</a>|<a
                    data-v-95ac8d30="" href="#">帮助中心</a>|<a data-v-95ac8d30=""
                                                                          href="${pageContext.request.contextPath}/user/logout">退出</a>
            </div>
            <div data-v-95ac8d30="" class="header3User right">
                <i data-v-95ac8d30="" class="iconfont icon-phone"></i>
                <span data-v-95ac8d30="" class="sp1">400-919-8000</span>
                <span data-v-95ac8d30="" class="sp2">欢迎您，${users.tel}</span>
                <span data-v-95ac8d30="" class="sp3"></span>
            </div>
        </div>
    </div>
    <div class="userInfo">
        <div class="layout">
            <div class="userInfoCom clear">
                <div class="userInfoL left">
                    <div data-v-1cae2c34="" class="userNav">
                        <dl data-v-1cae2c34="" class="userMsg">
                            <dt data-v-1cae2c34="">
                                <img data-v-1cae2c34=""
                                     src="${pageContext.request.contextPath}/resources/images/info1.png">
                            </dt>
                        </dl>
                        <ul data-v-1cae2c34="" class="manNav">
                            <li data-v-1cae2c34="">
                                <a data-v-1cae2c34="" href="${pageContext.request.contextPath}/user/orderTable"
                                   class="">订单管理</a>
                            </li>
                            <li data-v-1cae2c34="">
                                <a data-v-1cae2c34="" href="${pageContext.request.contextPath}/user/myInfo" class="sel">个人信息</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="userInfoR right">

                    <div class="orderManage manage">
                        <div class="orderManageTit manageTit clear">
                            <div class="left tit">个人信息</div>
                        </div>
                        <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
                            <div class="orderList list" id="noda">
                                <table class="tableinfo">
                                    <tr>
                                        <td>手机号：{{tel}}</td>
                                        <td>
                                            <button data-method="offset" data-type="auto"
                                                    class="layui-btn layui-btn-normal" id="layui">修改
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>邮箱：{{email}}</td>
                                        <td>
                                            <button data-method="offset" data-type="auto"
                                                    class="layui-btn layui-btn-normal" id="layui1">修改邮箱
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>密码：{{password}}</td>
                                        <td>
                                            <button data-method="offset" data-type="auto"
                                                    class="layui-btn layui-btn-normal" id="layui2">修改密码
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-v-3aaf9db2="" class="footer2">
        <div data-v-3aaf9db2="" class="layout clear">
            <div data-v-3aaf9db2="" class="d1">
                <a data-v-3aaf9db2="" href="#">关于车速递</a></div>
        </div>
    </div>

</div>



<script type="text/javascript">
    var vm = new Vue({
        el: '#noda',
        data: {
            tel: '',
            email: '',
            password: ''
        }
    });


    $(function () {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/user/getUserById",
            data: "userId=" +${users.userId},
            success: function (data) {
                vm.tel = data.tel;
                vm.email = data.email;
                vm.password = data.password;
            }
        });
    })



</script>


<script>
    layui.use(['layer', 'form'], function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
        var form = layer.form;

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
                    area:['30%', '30%']
                    ,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,
                    id: 'layerDemo' + type //防止重复弹出
                    ,
                    content: '<form class="layui-form" action="${pageContext.request.contextPath}/user/updateUser" method="post">\n' +
                        '    <br>\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <input lay-verify="phone" placeholder="请输入修改后的手机号" class="layui-input" type="text" name="tel" id="tel">\n' +
                        '    </div>\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>\n' +
                        '    </div>\n' +
                        '</form>'
                    ,
                    shade: 0 //不显示遮罩
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
    layui.use(['layer', 'form'], function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
        var form = layer.form;

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
                    area:['30%', '30%']
                    ,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,
                    id: 'layerDemo' + type //防止重复弹出
                    ,
                    content: '<form class="layui-form" action="${pageContext.request.contextPath}/user/updateUser" method="post">\n' +
                        '    <br>\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <input lay-verify="email" placeholder="请输入修改后的邮箱" class="layui-input" type="text" name="email" id="email">\n' +
                        '    </div>\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>\n' +
                        '    </div>\n' +
                        '</form>'
                    ,
                    shade: 0 //不显示遮罩
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
    layui.use(['layer', 'form'], function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
        var form = layer.form;

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
                    area:['30%', '30%']
                    ,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,
                    id: 'layerDemo' + type //防止重复弹出
                    ,
                    content: '<div class="layui-form-item"><br><form><input placeholder="请输入修改后的密码" class="layui-input" type="text" name="password" id="password"></form></div>'
                    ,
                    btn: '修改'
                    ,
                    btnAlign: 'c'
                    ,
                    yes: function(){
                        $.ajax({
                            url:"${pageContext.request.contextPath}/user/updatePassword",
                            type:"post",
                            data:$("form").serialize(),
                            dataType:'json',
                            success:function(data) {
                                if (data.code == -1){
                                    layer.msg(data.info)
                                }else {
                                    window.location.reload();
                                }
                            },
                            error: function() {
                                elert("ajax错误");
                            }
                        });

                    }
                    ,
                    shade: 0 //不显示遮罩
                });
            }
        };

        $('#layerDemo #layui2').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>
</body>
</html>