<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxJsAndCss" value="${ctx}/jsAndCss"/>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>我的订单</title>
    <link href="${ctxJsAndCss}/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctxJsAndCss}/assets/css/codemirror.css" rel="stylesheet">
    <link href="${ctxJsAndCss}/assets/css/ace.min.css" rel="stylesheet"/>
    <link href="${ctxJsAndCss}/assets/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="${ctxJsAndCss}/css/style.css" rel="stylesheet"/>
    <meta name='keywords' content='关键词,关键词'/>
    <meta name='description' content='网站描述'/>
    <link href="${ctxJsAndCss}/css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/index.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctxJsAndCss}/js/jquery-1.8.3.min.js"></script>

    <style>
        .table_menu_list {
            width: 100%;
            margin: 0 auto;
            margin-top: 50px;
        }
    </style>

    <script src="${ctxJsAndCss}/assets/js/jquery.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/bootstrap.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/typeahead-bs2.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/jquery.dataTables.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script src="${ctxJsAndCss}/assets/layer/layer.js"></script>
    <script src="${ctxJsAndCss}/assets/laydate/laydate.js"></script>
    <script src="${ctxJsAndCss}/js/date.js"></script>
</head>
<body>
<div class="container header">
    <%@ include file="/WEB-INF/pages/front/main/menu.jsp" %>
    <div class="page-content clearfix">
        <div id="Message_Ratings">
            <div class="d_Confirm_Order_style">
                <div class="table_menu_list">
                    <table class="table table-striped table-bordered table-hover" id="sample-table">
                        <thead>
                        <tr>
                            <th width="80">订单编号</th>
                            <th width="100">订单总额</th>
                            <th width="80">收货地址</th>
                            <th width="80">联系方式</th>
                            <th width="80">收货人</th>
                            <th width="80">下单时间</th>
                            <th width="80">订单状态</th>
                            <th width="80">收货</th>
                            <th width="80">查看详情</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orders}" var="order">
                            <tr>
                                <td width="80">${order.oid}</td>
                                <td width="100">${order.money}</td>
                                <td width="100">${order.receiveinfo}</td>
                                <td width="100">${order.phonum}</td>
                                <td width="100">${order.accepter}</td>
                                <td width="200"><fmt:formatDate value="${order.orderTime}"
                                                                pattern="yyyy-MM-dd hh:mm:ss"/></td>

                                <c:if test="${order.state == 0 }">
                                    <td width="80">未发货</td>
                                    <td width="80"><a href="#">点我收货</a>
                                    </td>
                                </c:if>
                                <c:if test="${order.state == 1 }">
                                    <td width="80">已发货</td>
                                    <td width="80"><a href="${pageContext.request.contextPath}/shouhuo?oid=${order.oid}">点我收货</a>
                                    </td>
                                </c:if>
                                <c:if test="${order.state == 2 }">
                                    <td width="80">已收货</td>
                                    <td width="80"><a href="#">点我收货</a>
                                    </td>
                                </c:if>


                                <td width="80"><a href="${pageContext.request.contextPath}/orderdetail?oid=${order.oid}">查看详情</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container footer">
    <div class="span24">
        <div class="copyright"> Copyright © 网上商城版权所有</div>
    </div>
</div>
</body>
</html>

<script>
    function addMessage() {
        var message = document.getElementById("messageText").value;
        $.ajax({
            type: "post",
            url: '${pageContext.request.contextPath}/message/addmessage',
            data: {
                "message": message
            },
            dataType: "json",
            success: function (data) {
                console.log(data);
            }

        });
    }
</script>

