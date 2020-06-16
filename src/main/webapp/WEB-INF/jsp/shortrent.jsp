<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>短驾自租</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shortrent.shortrent.css">

    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
</head>
<body>

<div id="app">
    <div data-v-67ef3a4a class="csdheader">
        <div data-v-67ef3a4a class="layout clear">
            <div data-v-67ef3a4a class="left csdnav" id="daohang">
                <c:if test="${null ==users.tel}">
                    <label data-v-67ef3a4a v-if="weidenglu">
                        <a data-v-67ef3a4a href="${pageContext.request.contextPath}/user/login1" class="colorRed" >登录</a>
                        <a data-v-67ef3a4a href="" class="colorRed">/</a>
                        <a data-v-67ef3a4a href="insert.jsp" class="colorRed" style="margin-right: 10px;">注册</a>
                    </label>
                </c:if>

                <c:if test="${null !=users.tel}">
                    <label data-v-67ef3a4a v-if="denglu">
                        <a data-v-67ef3a4a href="#">你好，${users.tel}</a>
                        <a data-v-67ef3a4a href="#" class="colorRed">/</a>
                        <a data-v-67ef3a4a href="${pageContext.request.contextPath}/user/logout" class="colorRed" style="margin-right: 10px;">[退出]</a>
                    </label>
                </c:if>

                <a data-v-67ef3a4a="" href="#">手机租车</a>
                <a data-v-67ef3a4a="" href="#">帮助中心</a>
            </div>
            <div data-v-67ef3a4a="" class="right phone">
                <div data-v-67ef3a4a="" class="typeTab">
                    <a data-v-67ef3a4a="" href="#" style="color: rgb(199, 0, 11);">中文</a>&nbsp;/&nbsp;
                    <a data-v-67ef3a4a="" href="#">English</a>
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
                    <img data-v-39f7f629="" src="${pageContext.request.contextPath}/resources/images/csd.png">
                </a>
            </div>
            <div data-v-39f7f629="" class="left navCom">
                <ul data-v-39f7f629="">
                    <li data-v-39f7f629="" >
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
                        <a data-v-39f7f629="" href="${pageContext.request.contextPath}/user/shortrent" target="_self" class="colorRed">短租自驾</a>
                    </li>
                    <li data-v-39f7f629="">
                        <a data-v-39f7f629="" href="${pageContext.request.contextPath}/index.jsp" target="_self" >
                            <span data-v-39f7f629="">首页</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="chooseCar">

            <div class="chooseCarL">
                <form onsubmit="return false;">
                <div class="choose-get item">

                    <span class="itemTitle-red left">取&nbsp&nbsp车&nbsp&nbsp地&nbsp&nbsp址</span>
                    <div id="sel"  v-cloak>

                         <select id="dqsel" onchange="getCityId(this.options[this.options.selectedIndex].value)">
                            <option value="-1">请选择</option>
                            <c:forEach items="${cityList}" var="city">
                                <option name="cityId" value="${city.cityId}">${city.cityName}</option>
                            </c:forEach>
                        </select>

                        <select id="bmsel">
                            <option value="-1">请选择</option>
                        </select>
                    </div>
                </div>

                <div class="choose-return item">
                    <span class="itemTitle-red left">还&nbsp&nbsp车&nbsp&nbsp地&nbsp&nbsp址</span>
                    <div id="seltwo"  v-cloak>
                        <select id="hcc" onchange="backCityId(this.options[this.options.selectedIndex].value)">
                            <option value="-1">请选择</option>
                            <c:forEach items="${cityList}" var="city">
                                <option name="cityId" value="${city.cityId}">${city.cityName}</option>
                            </c:forEach>
                        </select>

                        <select id="hcs">
                            <option value="-1">请选择</option>
                        </select>

                    </div>

                </div>
                </form>
            </div>
        <div class="chooseCarR">
            <button class="goChooseCar" onclick="selectCar()">去选车</button>
        </div>

    </div>
</div>
</body>

<script type="text/javascript">

    function selectCar() {

        var baseUrl = "${pageContext.request.contextPath}/user/";

        if ($("#dqsel").val() < 0 || $("#bmsel").val() < 0) {
            alert("请完善取车地址信息")
        } else if ($("#hcc").val() < 0 || $("#hcs").val() < 0) {
            alert("请完善还车地址信息")
        } else {
            var params = {
                getCityId:$("#dqsel").val(),
                getStopId:$("#bmsel").val(),
                backCityId:$("#hcc").val(),
                backStopId:$("#hcs").val()
            };

            $("#app").load(baseUrl + "shortsort", params);
        }
    }
</script>

<script>

    
    function getCityId(cityId) {
        $.ajax({
            url : "${pageContext.request.contextPath}/user/getStopList",
            type :"post",
            data:"cityId="+cityId,
            success : function(data){
                $("#bmsel").empty();
                if (data.length > 0) {
                    for (var i = 0; i < data.length; i++) {
                        var cityId = data[i].cityId;
                        var cityName = data[i].cityName;
                        var str = "<option value=" + cityId + ">" + cityName + "</option>";
                        $("#bmsel").append(str)
                    }
                }
            },
            async : true
        });
    }

    function backCityId(cityId) {
        $.ajax({
            url : "${pageContext.request.contextPath}/user/getStopList",
            type :"post",
            data:"cityId="+cityId,
            // data : {"cityId":cityId},
            success : function(data){
                $("#hcs").empty();
                if (data.length > 0) {
                    for (var i = 0; i < data.length; i++) {
                        var cityId = data[i].cityId;
                        var cityName = data[i].cityName;
                        var str = "<option value=" + cityId + ">" + cityName + "</option>";
                        $("#hcs").append(str)
                    }
                }
            },
            async : true
        });

    }
</script>



</html>