<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>填写与核对订单</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/order.ordersubmit.css">
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
    <script type="application/javascript"
            src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>


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
                                                                          href="${pageContext.request.contextPath}/user/logout">退出</a></div>
            <div data-v-95ac8d30="" class="header3User right"><i data-v-95ac8d30=""
                                                                 class="iconfont icon-phone"></i><span
                    data-v-95ac8d30="" class="sp1">400-919-8000</span><span data-v-95ac8d30=""
                                                                            class="sp2">欢迎您，${users.tel}</span><span
                    data-v-95ac8d30="" class="sp3"></span></div>
        </div>
    </div>
    <div class="checkOrderTit">
        <div class="layout">
            <div class="checkOrderTitCom">
                <div class="checkOrderTitComT">
                    <div class="td1 bgRed"></div>
                    <div class="td2 bgRed">1</div>
                    <div class="td3 bgRed"></div>
                    <div class="td2 bgRed">2</div>
                    <div class="td3 bgGray1"></div>
                    <div class="td2 bgGray1">3</div>
                    <div class="td1 bgGray1"></div>
                </div>
                <div class="checkOrderTitComB">
                    <div class="bd1 colorRed">选择车辆</div>
                    <div class="bd2 colorRed">填写和核对订单</div>
                    <div class="bd1 colorGray">提交成功</div>
                </div>
            </div>
        </div>
    </div>

    <div class="orderMsg clear">

        <div class="orderMsgs" id="orderMsgs">
            <div class="orderMsgL left">
                <img src="${car.carPicture}">
                <p>${car.carType}|${car.carSitnum}座</p>
            </div>
            <div class="orderMsgR left">
                <div class="carTitle">
                    <span class="carTitle1 left">${car.carName}</span>
                    <input type="text" hidden id="cid" value="${car.id}">
                </div>

                <div class="selCarMsg">
                    <div class="selCarMsgCom">
                        <div class="MsgTit">取车</div>
                        <div class="Msg">取车地址：${getStopCity.cityName}</div>
                        <input type="text" hidden value="${getStopCity.cityId}" id="getid">
                    </div>

                    <div class="selCarMsgCom">
                        <div class="MsgTit">还车</div>
                        <div class="Msg">还车地址：${backStopCity.cityName}</div>
                        <input type="text" hidden value="${backStopCity.cityId}" id="backid">
                    </div>
                </div>
            </div>
            <div class="costCom right">
                <h3>费用明细</h3>
                <div class="item">
                    <span class="left">基本租金</span>
                    <span class="right">${car.carPrice}元</span>
                </div>
                <div class="item">
                    <span class="left">手续费（35元/单）</span>
                    <span class="right">35元</span>
                </div>
                <div class="item">
                    <span class="left">基本保障服务</span>
                    <span class="right">50元</span>
                </div>
                <div class="payMony">
                    <label class="right">应付金额&nbsp;
                        <span id="total"></span>
                        <input type="text" hidden id="oprice" value="">
                    </label>
                </div>

                <button type="button" class="buttons right" id="butt">
                    提交订单
                </button>
            </div>
        </div>
    </div>
</div>

</body>
<script>
    $("#total").text(
        ${car.carPrice} + 85
    );
    $("#oprice").val(${car.carPrice} + 85)
</script>

<script type="text/javascript">

    $('#butt').click(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/user/orderInsert",
            data:{
                'userId':${users.userId},
                'cId':$("#cid").val(),
                'getId':$("#getid").val(),
                'backId':$("#backid").val(),
                'oPrice':$("#oprice").val(),
                'status':"已预订"},
            type:"Post",
            success:function(data){
                if (data.code == 1){
                    location.href = '${pageContext.request.contextPath}/user/orderTable'
                } else if (data.code == -1) {
                    alert(data.info)
                }
            },
            error:function(){
                alert("错误")
            }
        });
        
    })


</script>

</html>