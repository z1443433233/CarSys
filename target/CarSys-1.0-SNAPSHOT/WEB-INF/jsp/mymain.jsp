<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="application/javascript" src="${pageContext.request.contextPath}/resources/layui/layui.all.js"></script>
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
            <div data-v-95ac8d30="" class="header3Nav right">|<a data-v-95ac8d30="" href="${pageContext.request.contextPath}/user/orderTable">我的订单</a>|<a
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
                                <a data-v-1cae2c34="" href="${pageContext.request.contextPath}/user/orderTable" class="sel">订单管理</a>
                            </li>
                            <li data-v-1cae2c34="">
                                <a data-v-1cae2c34="" href="${pageContext.request.contextPath}/user/myInfo" class="">个人信息</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="userInfoR right">

                    <div class="orderManage manage">
                        <div class="orderManageTit manageTit clear">
                            <div class="left tit">订单管理</div>
                        </div>
                        <div class="orderType clear type">
                            <div class="sel">全部订单</div>
                        </div>
                        <div id="OneOrder">
                            <div class="orderList list">
                                <div class="orderListCom listCom" style="position: static;">
                                    <table cellspacing="0" cellpadding="0">
                                        <tr class="firstTr">
                                            <th>订单号</th>
                                            <th>订单金额</th>
                                            <th>车型</th>
                                            <th>取车地址</th>
                                            <th>还车地址</th>
                                            <th>订单状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </table>
                                    <div class="noData" id="noda">

                                        <table cellspacing="0" cellpadding="0" >
                                            <c:forEach items="${list.result}" var="orders">
                                                <tr class="layui-table">
                                                    <td>${orders.orderId}</td>
                                                    <td>${orders.oPrice}</td>
                                                    <td>${orders.carName}</td>
                                                    <td>${orders.getCityName}</td>
                                                    <td>${orders.backCityName}</td>
                                                    <td>${orders.status}</td>
                                                    <td>
                                                        <c:if test="${orders.status.equals('已预订')}">
                                                            <div class="layui-btn-group">
                                                                <button type="button" class="layui-btn layui-btn-normal" onclick="ceshi(${orders.orderId})">详情
                                                                </button>
                                                                <button type="button" class="layui-btn" onclick="updateOrder(${orders.orderId})">还车
                                                                </button>
                                                            </div>
                                                        </c:if>

                                                        <c:if test="${orders.status.equals('处理中')}">
                                                            <button data-method="offset" data-type="auto"
                                                                    class="layui-btn layui-btn-normal" onclick="ceshi(${orders.orderId})">详情
                                                            </button>
                                                        </c:if>

                                                        <c:if test="${orders.status.equals('已归还')}">
                                                            <button data-method="offset" data-type="auto"
                                                                    class="layui-btn layui-btn-normal" onclick="ceshi(${orders.orderId})">详情
                                                            </button>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </table>


                                        <div id="fenye"></div>

                                    </div>

                                </div>
                            </div>
                            <div style="cursor:pointer;" class="row">
                                <div class="col-md-2">当前第 ${list.startIndex + 1} - ${list.pageNum * list.pageSize} 条 共计 ${list.total}
                                    条 共计 ${list.pageMaxNum} 页
                                </div>

                                <div class="col-md-10">
                                    <ul class="pagination pagination-sm pull-right" style="margin: 0px;">
                                        <li class="next ${list.pageNum == 1 ?'hidden':''}">
                                            <span
                                                    <c:if test="${list.pageNum != 1}">
                                                        onclick="pageLoad(${list.pageNum/list.pageNum})"
                                                    </c:if>
                                            >首页</span>
                                        </li>

                                        <li class="next ${list.pageNum == 1 ?'hidden':''}">
                                            <span
                                                    <c:if test="${list.pageNum != 1}">
                                                        onclick="pageLoad(${list.pageNum - 1})"
                                                    </c:if>
                                            >上一页</span>

                                        </li>

                                        <c:if test="${list.pageNum - 2 <= 0}">
                                            <c:if test="${list.pageNum + 2 > list.pageMaxNum}">
                                                <c:forEach begin="1" end="${list.pageMaxNum}" var="pageNum">
                                                    <li>
                                                        <span id="page${pageNum}" onclick="pageLoad(${pageNum})">${pageNum}</span>
                                                    </li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${list.pageNum + 2 <= list.pageMaxNum}">
                                                <c:forEach begin="1" end="${list.pageNum + 2}" var="pageNum">
                                                    <li>
                                                        <span id="page${pageNum}" onclick="pageLoad(${pageNum})">${pageNum}</span>
                                                    </li>
                                                </c:forEach>
                                            </c:if>
                                        </c:if>


                                        <c:if test="${list.pageNum - 2 > 0}">
                                            <c:if test="${list.pageNum + 2 > list.pageMaxNum}">
                                                <c:forEach begin="${list.pageNum - 2}" end="${list.pageMaxNum}" var="pageNum">
                                                    <li>
                                                        <span onclick="pageLoad(${pageNum})">${pageNum}</span>
                                                    </li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${list.pageNum + 2 <= list.pageMaxNum}">
                                                <c:forEach begin="${list.pageNum - 2}" end="${list.pageNum + 2}" var="pageNum">
                                                    <li>
                                                        <span onclick="pageLoad(${pageNum})">${pageNum}</span>
                                                    </li>
                                                </c:forEach>
                                            </c:if>
                                        </c:if>

                                        <li class="next ${list.pageNum == list.pageMaxNum ?'hidden':''}">
                                            <span
                                                    <c:if test="${list.pageNum != list.total/list.pageSize+1}">
                                                        onclick="pageLoad(${list.pageNum + 1})"
                                                    </c:if>
                                            >下一页</span>
                                        </li>
                                        <li class="${list.pageNum == list.pageMaxNum ?'hidden':''}">
                                            <span
                                                    <c:if test="${list.pageNum != list.total/list.pageSize+1}">
                                                        onclick="pageLoad(${list.pageMaxNum})"
                                                    </c:if>
                                            >尾页</span>
                                        </li>
                                    </ul>
                                </div>
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
<div id="order" style="display: none">
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


<script type="text/javascript">
    /* 基础路径，如：http://locahost:8080 */
    var baseUrl = "${pageContext.request.contextPath}/user/";

    /*分页查询*/

    function pageLoad(pageNum) {
        var params = $("div").serialize();
        params += "pageNum=" + pageNum;

        $("#app").load(baseUrl + "orderTable", params);
    }


    function updateOrder(orderId) {

        var params = "orderId=" + orderId;


        layui.use('layer', function () {
            var layer = layui.layer;
            layer.msg('是否确定还车(3秒后自动关闭)', {
                time:3000, // 3秒后自动关闭窗口
                btn:['确定', '取消'],
                yes:function (index) {
                    $.ajax({
                        type: "post",
                        url: baseUrl + "updateOrderStatus",
                        data: params,
                        success: function (data) {
                            layer.close(index);

                            var params = $("div").serialize();
                            params += "pageNum=" + ${list.pageNum};

                            $("#app").load(baseUrl + "orderTable", params);
                            layer.msg(data.info)
                        }
                    });

                }
            })
        })
    }
</script>

<script type="text/javascript">
    function ceshi(orderId){

        layui.use('layer',function(){
            var layer = layui.layer;

            $.ajax({
                url:"${pageContext.request.contextPath}/user/orderMsg",
                data:{'orderId':orderId},
                type:"Post",
                success:function(data){
                    vm.orderId = data.info.orderId;
                    vm.carName = data.info.carName;
                    vm.oPrice = data.info.oPrice;
                    vm.getCityName = data.info.getCityName;
                    vm.backCityName = data.info.backCityName;
                    vm.status = data.info.status;
                    vm.reserveDate = data.info.reserveDate;
                    vm.returnDate = data.info.returnDate;
                    vm.disposeDate = data.info.disposeDate;

                    layer.open({
                        type:1,
                        area:'100%',
                        content:$('#order')
                    })
                },
                error:function(){
                    layer.msg("错误")
                }
            });
        });
    }
</script>

<script>
    var vm = new Vue({
        el: '#order',
        data: {
            orderId: '',
            carName: '',
            oPrice: '',
            getCityName: '',
            backCityName: '',
            status: '',
            reserveDate: '',
            returnDate: '',
            disposeDate: ''
        }
    });
</script>


</body>
</html>