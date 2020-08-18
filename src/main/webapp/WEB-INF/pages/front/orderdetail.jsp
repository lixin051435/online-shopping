<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ctxJsAndCss" value="${ctx}/jsAndCss" />
<!doctype html>
<html>
<head>
    <title>订单详情</title>
    <meta http-equiv='Content-Type' content='text/html;charset=utf-8'/>
    <link href="${ctxJsAndCss}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/assets/css/codemirror.css" rel="stylesheet">
    <link href="${ctxJsAndCss}/assets/css/ace.min.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/css/style.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/index.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctxJsAndCss}/js/jquery-1.8.3.min.js"></script>

    <style>
        .table_menu_list{
            width:60%;
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
    <script src="${ctxJsAndCss}/js/date.js"></script></head>
<style>
    tbody tr, th {
        text-align: center;
    }

    .cartable {
        width: 80%;
        margin: 0 auto;
    }
</style>
<body>
<!-- 商品页面头部 -->
<div class="container header">
    <%@ include file="/WEB-INF/pages/front/main/menu.jsp" %>
</div>

<!-- 当购物车不为空的情况  -->
<div class="container cart">
    <div class="span24">
        <table class="cartable">
            <tbody>
            <tr>
                <th>图片</th>
                <th>商品</th>
                <th>价格</th>
                <th>数量</th>
            </tr>

            <c:forEach var="orderItem" items="${orderItems}">
                <tr>
                    <td width="200">
                        <img width="100%" src="${pageContext.request.contextPath}${orderItem.imgSrc}"/>
                    </td>
                    <td>${orderItem.productName}</td>
                    <td>${orderItem.salePrice }</td>
                    <td>${orderItem.count }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div class="container footer">
    <div class="span24">
        <div class="copyright"> Copyright © 网上商城版权所有</div>
    </div>
</div>
</body>
</html>

