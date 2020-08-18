<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ctxJsAndCss" value="${ctx}/jsAndCss" />
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>提交订单</title>
    <meta name='keywords' content='关键词,关键词'/>
    <meta name='description' content='网站描述'/>
    <link href="${ctxJsAndCss}/css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/index.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctxJsAndCss}/js/jquery-1.8.3.min.js"></script>
    <link href="${ctxJsAndCss}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/assets/css/codemirror.css" rel="stylesheet">
    <link href="${ctxJsAndCss}/assets/css/ace.min.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${ctxJsAndCss}/css/style.css" rel="stylesheet" />
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
    <script src="${ctxJsAndCss}/js/date.js"></script>
</head>
</head>
<body>
<!-- 商品页面头部 -->
<div class="container header">
    <%@ include file="/WEB-INF/pages/front/main/menu.jsp" %>
</div>
<div class="page-content clearfix">
    <div id="Message_Ratings">
        <div class="table_menu_list">
            <form action="${pageContext.request.contextPath}/addOrder" method="post">
                <input style="width:50%;" id="receiveInfo" name="receiveinfo" type="text" placeholder="请输入地址"><br>
                <input style="width:50%;" id="phoNum" name="phonum" type="text" placeholder="请输入电话"><br>
                <input style="width:50%;" id="accepter" name="accepter" type="text" placeholder="请输入收件人"><br>
                <input type="submit" value="提交">
            </form>
        </div>
    </div>
</div>
<!-- 页脚  -->
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
            type : "post",
            url:'${pageContext.request.contextPath}/message/addmessage',
            data:{
                 "message":message
            },
            dataType : "json",
            success : function(data) {
                console.log(data);
            }

        });
    }
</script>

