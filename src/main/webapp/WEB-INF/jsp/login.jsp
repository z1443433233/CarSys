<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录-车速递租车</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pagehome.login.css">
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>

</head>
<body>
<div data-v-0a99943a id="app">
    <div data-v-95c8bc32="" data-v-0a99943a="" class="header2">
        <div data-v-95c8bc32="" class="layout clear">
            <div data-v-95c8bc32="" class="left logo">
                <a data-v-95c8bc32="" href="../../index.jsp">
                    <img data-v-95c8bc32=""
                         src="${pageContext.request.contextPath}/resources/images/csd.png">
                </a>
            </div>
            <h2 data-v-95c8bc32="" class="left">欢迎登录</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">欢迎注册</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">找回密码</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">重置密码</h2>
            <a data-v-95c8bc32="" href="${pageContext.request.contextPath}/index.jsp" class="right">回到首页&gt;</a>
        </div>
    </div>
    <div data-v-0a99943a="" class="login">
        <div data-v-0a99943a="" class="layout">
            <div data-v-0a99943a="" class="loginCom clear">
                <div data-v-0a99943a="" class="loginImg left">
                    <img data-v-0a99943a="" src="${pageContext.request.contextPath}/resources/images/carWeb.jpg">
                </div>
                <div data-v-0a99943a="" class="loginType right">
                    <div class="denglu">
                        登&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp录
                    </div>
                    <div class="forms">
                        <form class="layui-form" action="${pageContext.request.contextPath}/user/login" method="post">
                            <table>
                                <tr>
                                    <td>
                                        <div class="layui-form-item">
                                            <label class="layui-form-label">用户名</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="tel" required lay-verify="required"
                                                       placeholder="请输入手机号" autocomplete="off" class="layui-input">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="layui-form-item">
                                            <label class="layui-form-label">密&nbsp&nbsp&nbsp&nbsp码</label>
                                            <div class="layui-input-block">
                                                <input type="password" name="password" required lay-verify="required"
                                                       placeholder="请输入密码" autocomplete="off" class="layui-input">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        ${msg}
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <div class="layui-form-item">

                                            <input type="submit" value="登录" class="layui-btn" lay-submit
                                                   lay-filter="formDemo"/>
                                        </div>
                                    </td>
                                </tr>

                            </table>
                        </form>


                        <div data-v-0a99943a="" class="other clear">
                            <a data-v-0a99943a="" href="${pageContext.request.contextPath}/user/findPassword" class="right forget">忘记密码？</a>
                        </div>

                        <div data-v-0a99943a="" class="goRegister">
                            还没有账号？<a data-v-0a99943a="" href="${pageContext.request.contextPath}/user/register">免费注册</a>
                        </div>

                    </div>
                </div>
            </div>
            <div data-v-0a99943a="" class="loginPoster clear">
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgOrange">
                        <img data-v-0a99943a=""
                             src="${pageContext.request.contextPath}/resources/images/login11.png">
                    </div>
                    <div data-v-0a99943a="">价格透明</div>
                </div>
                <div data-v-0a99943a="" class="empty"></div>
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgYellow">
                        <img data-v-0a99943a=""
                             src="${pageContext.request.contextPath}/resources/images/login12.png">
                    </div>
                    <div data-v-0a99943a="">手续便捷</div>
                </div>
                <div data-v-0a99943a="" class="empty"></div>
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgOrange">
                        <img data-v-0a99943a=""
                             src="${pageContext.request.contextPath}/resources/images/login13.png">
                    </div>
                    <div data-v-0a99943a="">全国连锁</div>
                </div>
                <div data-v-0a99943a="" class="empty"></div>
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgYellow">
                        <img data-v-0a99943a=""
                             src="${pageContext.request.contextPath}/resources/images/login14.png">
                    </div>
                    <div data-v-0a99943a="">用车无忧</div>
                </div>
            </div>
        </div>
    </div>
    <div data-v-3aaf9db2="" data-v-0a99943a="" class="footer2">
        <div data-v-3aaf9db2="" class="layout clear">
            <div data-v-3aaf9db2="" class="d1">
                <a data-v-3aaf9db2="" href="#">关于车速递</a>|
                <a data-v-3aaf9db2="" target="_blank" href="http://search.51job.com/list/co,c,2264765,0000,10,1.html">诚聘英才</a>|
                <a data-v-3aaf9db2="" href="#">联系我们</a>|<a data-v-3aaf9db2="" href="#">帮助中心</a>
            </div>
            <div data-v-3aaf9db2="" class="d2">
                <span data-v-3aaf9db2="">客服热线：400-919-8000</span>
                <span data-v-3aaf9db2="">服务时间：08:00-20:00</span>
            </div>
            <div data-v-3aaf9db2="" class="d3">上海车速递汽车租赁有限公司（总公司）杭州/深圳/广州/成都/武汉/苏州/佛山（分公司）</div>
            <div data-v-3aaf9db2="" class="d4">©2009-2018 Chesudi.com 上海车速递汽车租赁有限公司 All Rights Reserved.
                沪ICP备09082566号
            </div>
            <div data-v-3aaf9db2="" class="d5">
                <a data-v-3aaf9db2="" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502003185"
                   target="_blank">
                    <img data-v-3aaf9db2="" src="https://www.chesudi.com/static/img/gongan.d0289dc.png"
                         class="img1"></a>
                <img data-v-3aaf9db2="" src="https://www.chesudi.com/static/img/cnnic.4528ccc.png" class="img2">
            </div>
        </div>
    </div>


</div>




</body>
</html>