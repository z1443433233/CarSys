<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>短租排序</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shortrent.shortrent.css">
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
</head>
<body id="app">
<div data-v-67ef3a4a class="csdheader">
    <div data-v-67ef3a4a class="layout clear">
        <div data-v-67ef3a4a class="left csdnav">
            <c:if test="${null != users.tel}">
                <label data-v-67ef3a4a v-if="denglu">
                    <a data-v-67ef3a4a href="#">你好，${users.tel}</a>
                    <input type="text" id="tel" hidden value="1">
                    <a data-v-67ef3a4a href="#" class="colorRed">/</a>
                    <a data-v-67ef3a4a href="${pageContext.request.contextPath}/user/logout" class="colorRed"
                       style="margin-right: 10px;">[退出]</a>
                </label>
            </c:if>
            <c:if test="${null == users.tel}">
                <label data-v-67ef3a4a>
                    <a data-v-67ef3a4a href="${pageContext.request.contextPath}/user/login1" class="colorRed">登录</a>
                    <input type="text" id="tel" hidden value="-1">
                    <a data-v-67ef3a4a href="" class="colorRed">/</a>
                    <a data-v-67ef3a4a href="insert.jsp" class="colorRed" style="margin-right: 10px;">注册</a>
                </label>
            </c:if>

            <a data-v-67ef3a4a="" href="">手机租车</a>
            <a data-v-67ef3a4a="" href="">帮助中心</a>
        </div>
        <div data-v-67ef3a4a="" class="right phone">
            <div data-v-67ef3a4a="" class="typeTab">
                <a data-v-67ef3a4a="" href="" style="color: rgb(199, 0, 11);">中文</a>&nbsp;/&nbsp;
                <a data-v-67ef3a4a="" href="">English</a>
            </div>
            <div data-v-67ef3a4a="" class="menu">
                <a data-v-67ef3a4a="" href="${pageContext.request.contextPath}/user/orderTable">我的车速递</a>
            </div>
            <div data-v-67ef3a4a="">
                <i class="layui-icon layui-icon-cellphone" style="font-size:14px;  color:#c6000f;"></i>
                <span data-v-67ef3a4a="">400-919-8000</span>
            </div>
        </div>

    </div>
</div>


<div data-v-39f7f629 class="csdnav">
    <div data-v-39f7f629="" class="layout clear">
        <div data-v-39f7f629="" class="left logo">
            <a data-v-39f7f629="" href="${pageContext.request.contextPath}/index.jsp">
                <img data-v-39f7f629=""
                     src="${pageContext.request.contextPath}/resources/images/csd.png">
            </a>
        </div>
        <div data-v-39f7f629="" class="left navCom">
            <ul data-v-39f7f629="">
                <li data-v-39f7f629="">

                    <a data-v-39f7f629="" href="">优惠活动</a>
                </li>
                <li data-v-39f7f629="">
                    <a data-v-39f7f629="" href="">加盟合作</a>
                </li>
                <li data-v-39f7f629="">
                    <a data-v-39f7f629="" href="">网约车</a>
                </li>
                <li data-v-39f7f629="">
                    <a data-v-39f7f629="" href="">企业长租</a>
                </li>
                <li data-v-39f7f629="">
                    <a data-v-39f7f629="" href="${pageContext.request.contextPath}/user/shortrent" target="_self"
                       class="colorRed">短租自驾</a>
                </li>
                <li data-v-39f7f629="">
                    <a data-v-39f7f629="" href="${pageContext.request.contextPath}/index.jsp" target="_self">
                        <span data-v-39f7f629="">首页</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="selCarMsg">
    <div class="selCarMsgCom">
        <div class="Msg">取车地址：${getStopCity.cityName}</div>
    </div>

    <div class="selCarMsgCom">
        <div class="Msg">还车地址：${backStopCity.cityName}</div>
    </div>
</div>


<div class="carListTab" id="carListTab">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li
                    <c:if test="${type.equals('money')}">
                        class="layui-this"
                    </c:if>
                    onclick="sortByMoneyOrHeat(1)"
                    id="money">按租金排序
            </li>

            <li
                    <c:if test="${type.equals('heat')}">
                        class="layui-this"
                    </c:if>
                    onclick="sortByMoneyOrHeat(-1)"
                    id="heat">按热度排序
            </li>
        </ul>
        <div class="layui-tab-content">

            <div class="layui-tab-item layui-show">
                <!--for循环这段代码-->

                <div class="item clear" id="carlist">
                    <c:forEach items="${carList}" var="car">
                        <div class="thisPlace clear" id="carli" v-for="site in sites">
                            <div class="itemCarImg left">
                                <img src="${car.carPicture}">
                            </div>
                            <div class="itemCarMsg left">
                                <h1 id="sitename">${car.carName}</h1>
                                <p id="sitetype">${car.carType}</p>
                                <p id="sitenum">${car.carSitnum}座</p>
                                <input type="text" id="siteid" hidden value="${car.id}">
                            </div>
                            <div class="itemPriceMsg left">
                                <div class="itemPriceMsgC left">
                                    <p class="p1">
                                        <span id="siteprice">${car.carPrice}</span>/日均
                                    </p>
                                </div>
                            </div>

                            <div class="itemBtn left">
                                <button class="butt" onclick="butt(${car.id})">预定</button>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>


</div>
<script>
    function sortByMoneyOrHeat(number) {


        if (number > 0) {


            var params = {
                getStopCityId:${getStopCity.cityId},
                backStopCityId:${backStopCity.cityId},
                type: "money"
            };

            $("#app").load("${pageContext.request.contextPath}/user/sortByMoneyOrHeat", params);

        } else {

            var params = {
                getStopCityId:${getStopCity.cityId},
                backStopCityId:${backStopCity.cityId},
                type: "heat"
            };

            $("#app").load("${pageContext.request.contextPath}/user/sortByMoneyOrHeat", params);

        }

    }

    function butt(carId) {

        if ($("#tel").val() < 0) {
            alert("请登录后预定");
            $("#app").load("${pageContext.request.contextPath}/user/login1");
        } else {
            var params = {
                carId:carId,
                getStopCityId:${getStopCity.cityId},
                backStopCityId:${backStopCity.cityId}
            };

            $("#app").load("${pageContext.request.contextPath}/user/orderSubmit", params)
        }

    }

</script>

<script type="javascript">

</script>

<script>
    layui.use('element', function () {
        var $ = layui.jquery
            , element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块


    });
</script>


</body>
</html>