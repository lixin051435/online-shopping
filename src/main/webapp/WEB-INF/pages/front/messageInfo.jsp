<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ctxJsAndCss" value="${ctx}/jsAndCss" />
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>留言列表</title>
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
    <meta name='keywords' content='关键词,关键词'/>
    <meta name='description' content='网站描述'/>
    <link href="${ctxJsAndCss}/css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctxJsAndCss}/css/index.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctxJsAndCss}/js/jquery-1.8.3.min.js"></script>

</head>
</head>
<body>
<!-- 商品页面头部 -->
<div class="container header">
    <%@ include file="/WEB-INF/pages/front/main/menu.jsp" %>
</div>
<div class="page-content clearfix">
    <div id="Message_Ratings">
        <div class="d_Confirm_Order_style">
            <div class="table_menu_list">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="80">ID</th>
                        <th width="100">留言</th>
                        <th width="80">留言日期</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${messages}" var="message">
                        <tr>
                            <td width="80">${message.messageid}</td>
                            <td width="100">${message.message}</td>
                            <td width="80"><fmt:formatDate value="${message.messagedate}" pattern="yyyy-MM-dd"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <form class="table_menu_list">
                <input style="width:50%;" id="messageText" type="text" placeholder="请输入留言">
                <button onclick="addMessage()">点我提交</button>
            </form>
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

