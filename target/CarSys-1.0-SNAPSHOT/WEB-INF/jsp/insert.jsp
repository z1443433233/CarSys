<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册-车速递租车</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pagehome.register.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <%--    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.js"></script>
    <%--    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.7.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>

</head>
<body>
<div data-v-676ecf83="" id="app">
    <div data-v-95c8bc32="" data-v-676ecf83="" class="header2">
        <div data-v-95c8bc32="" class="layout clear">
            <div data-v-95c8bc32="" class="left logo">
                <a data-v-95c8bc32="" href="${pageContext.request.contextPath}/index.jsp">
                    <img data-v-95c8bc32=""
                         src="${pageContext.request.contextPath}/resources/images/csd.png">
                </a>
            </div>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">欢迎登录</h2>
            <h2 data-v-95c8bc32="" class="left">欢迎注册</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">找回密码</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">重置密码</h2>
            <a data-v-95c8bc32="" href="${pageContext.request.contextPath}/index.jsp" class="right">回到首页&gt;</a>
        </div>
    </div>

    <div data-v-676ecf83="" class="register">
        <div data-v-676ecf83="" class="layout">
            <div data-v-676ecf83="" class="registerCom clear">
                <div data-v-676ecf83="" class="registerType left">
                    <h3 data-v-676ecf83="">新用户注册</h3>

                    <form class="layui-form" method="post" action="${pageContext.request.contextPath}/user/insert">

                        <table>
                            <tr>
                                <td>
                                    <div class="layui-form-item">
                                        <i class="layui-icon layui-icon-cellphone" style="font-size: 20px;"></i>
                                        <div class="layui-inline">
                                            <div class="layui-input-inline">
                                                <input type="tel" name="tel" lay-verify="required|phone"
                                                       placeholder="请输入手机号"
                                                       autocomplete="off" class="layui-input" value="${user.tel}">
                                                <p style="color: red;font-size: 15px">${msg}</p>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="layui-form-item">
                                        <i class="layui-icon layui-icon-password" style="font-size: 20px;"></i>
                                        <div class="layui-inline">
                                            <div class="layui-input-inline">
                                                <input type="password" name="password" id="password" lay-verify="password"
                                                       placeholder="请输入6-12位密码" autocomplete="off" class="layui-input">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="layui-form-item">
                                        <i class="layui-icon layui-icon-password" style="font-size: 20px; "></i>
                                        <div class="layui-inline">
                                            <div class="layui-input-inline">
                                                <input type="password" name="rePassword" lay-verify="rePassword" placeholder="请再次输入密码"
                                                       autocomplete="off" class="layui-input">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="layui-form-item">
                                        <i class="layui-icon layui-icon-user" style="font-size: 20px; "></i>
                                        <div class="layui-inline">
                                            <div class="layui-input-inline">
                                                <input type="email" name="email" lay-verify="email"
                                                       placeholder="请输入电子邮箱，用于登录和找回密码" autocomplete="off"
                                                       class="layui-input" value="${user.email}">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="layui-form-item">
                                        <i class="layui-icon layui-icon-vercode" style="font-size: 20px;"></i>
                                        <div class="layui-inline">
                                            <div class="layui-input-inline">
                                                <input type="text" name="invitation" lay-verify="invitation"
                                                       autocomplete="off"
                                                       placeholder="如有邀请码，请填写邀请码" class="layui-input">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <input type="submit" value="立即提交" class="layui-btn" lay-submit
                                                   lay-filter="demo1"/>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                        </table>
                    </form>
                </div>

                <div data-v-676ecf83="" class="registerImg right">
                    <h2 data-v-676ecf83="">已有车速递账号？
                        <a data-v-676ecf83=""
                           href="${pageContext.request.contextPath}/user/login1">立即登录&nbsp;&gt;&gt;</a>
                    </h2> <img data-v-676ecf83="" src="${pageContext.request.contextPath}/resources/images/carWeb.jpg">
                </div>
            </div>

            <div data-v-676ecf83="" class="Poster clear">
                <div data-v-676ecf83="" class="posterItem">
                    <div data-v-676ecf83="" class="bgOrange">
                        <img data-v-676ecf83=""
                             src="${pageContext.request.contextPath}/resources/images/login11.png">
                    </div>
                    <div data-v-676ecf83="">价格透明</div>
                </div>
                <div data-v-676ecf83="" class="empty"></div>
                <div data-v-676ecf83="" class="posterItem">
                    <div data-v-676ecf83="" class="bgYellow">
                        <img data-v-676ecf83=""
                             src="${pageContext.request.contextPath}/resources/images/login12.png">
                    </div>
                    <div data-v-676ecf83="">手续便捷</div>
                </div>
                <div data-v-676ecf83="" class="empty"></div>
                <div data-v-676ecf83="" class="posterItem">
                    <div data-v-676ecf83="" class="bgOrange">
                        <img data-v-676ecf83=""
                             src="${pageContext.request.contextPath}/resources/images/login13.png">
                    </div>
                    <div data-v-676ecf83="">全国连锁</div>
                </div>
                <div data-v-676ecf83="" class="empty"></div>
                <div data-v-676ecf83="" class="posterItem">
                    <div data-v-676ecf83="" class="bgYellow">
                        <img data-v-676ecf83=""
                             src="${pageContext.request.contextPath}/resources/images/login14.png">
                    </div>
                    <div data-v-676ecf83="">用车无忧</div>
                </div>
            </div>
        </div>
    </div>

    <div data-v-3aaf9db2="" data-v-676ecf83="" class="footer2">
        <div data-v-3aaf9db2="" class="layout clear">
            <div data-v-3aaf9db2="" class="d1"><a data-v-3aaf9db2="" href="#">关于车速递</a>|<a data-v-3aaf9db2=""
                                                                                                    target="_blank"
                                                                                                    href="#">诚聘英才</a>|<a
                    data-v-3aaf9db2="" href="#">联系我们</a>|<a data-v-3aaf9db2="" href="#">帮助中心</a>
            </div>
            <div data-v-3aaf9db2="" class="d2"><span data-v-3aaf9db2="">客服热线：400-919-8000</span><span
                    data-v-3aaf9db2="">服务时间：08:00-20:00</span></div>
            <div data-v-3aaf9db2="" class="d3">上海车速递汽车租赁有限公司（总公司）杭州/深圳/广州/成都/武汉/苏州/佛山（分公司）</div>
            <div data-v-3aaf9db2="" class="d4">©2009-2018 Chesudi.com 上海车速递汽车租赁有限公司 All Rights Reserved.
                沪ICP备09082566号
            </div>
            <div data-v-3aaf9db2="" class="d5"><a data-v-3aaf9db2=""
                                                  href="#"
                                                  target="_blank"><img data-v-3aaf9db2=""
                                                                       src="https://www.chesudi.com/static/img/gongan.d0289dc.png"
                                                                       class="img1"></a> <img data-v-3aaf9db2=""
                                                                                              src="https://www.chesudi.com/static/img/cnnic.4528ccc.png"
                                                                                              class="img2"></div>
        </div>
    </div>
    <div data-v-0380595b="" data-v-676ecf83="" class="alert" style="display: none;">
        <div data-v-0380595b="" class="alertText alertText1">
            <div data-v-0380595b="" class="close iconfont icon-x1"></div>
            <h1 data-v-0380595b="">车速递租车会员注册协议</h1>
            <div data-v-0380595b="" class="alertCom alertCom1">
                <div data-v-0380595b="" class="text1">

                </div>
            </div>
        </div> <!----> <!----> <!----> <!----> <!----> <!----> <!----> <!----> <!----> <!----> <!----> <!----> <!---->
        <!----> <!----> <!----> <!----> <!----> <!----> <!----> <span data-v-0380595b="" class="edge"></span></div>
    <!----></div>


<script>
    layui.use('form', function () {
        var form = layui.form;

        //自定义验证规则
        form.verify({
            password: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格's
            ],
            rePassword: function(value) {
               if(value != $('#password').val()){
                   return '两次输入的密码不一致！'
               }

            }

        });

    });
</script>


</body>
</html>