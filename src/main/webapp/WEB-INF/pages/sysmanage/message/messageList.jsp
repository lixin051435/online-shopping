<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <script src="${ctxJsAndCss}/assets/js/jquery.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/bootstrap.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/typeahead-bs2.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/jquery.dataTables.min.js"></script>
    <script src="${ctxJsAndCss}/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script src="${ctxJsAndCss}/assets/layer/layer.js"></script>
    <script src="${ctxJsAndCss}/assets/laydate/laydate.js"></script>
    <script src="${ctxJsAndCss}/js/date.js"></script>
</head>
<script type="text/javascript">
    var messageMgr = {
        // 查询留言列表
        listMessage : function(pageNo, pageSize) {
            var queryMessageName = $("#queryMessageName").val();
            $.ajax({
                type : "post",
                url : "${ctx}/sysmgr/message/listMessage",
                data : {"messageName" : queryMessageName, "pageNo" : pageNo, "pageSize" : pageSize},
                dataType : "json",
                success : function(data) {
                    console.log(data);
                    var htmlTable = "";
                    var pageBar = data.pageBar;
                    var messageNums = data.messageNums;
                    data = data.messageList;
                    if (data.length != 0) {
                        for (var i = 0; i < data.length; i++) {
                            htmlTable = htmlTable + "<tr>";

                            htmlTable = htmlTable + "<td><label><input type='checkbox' value=" +
                                data[i].messageid + " class='ace'>" + "<span class='lbl'></span></label></td>";

                            htmlTable = htmlTable + "<td>" + data[i].messageid + "</td>";

                            htmlTable = htmlTable + "<td>" + data[i].message + "</td>";

                            htmlTable = htmlTable + "<td>" + timestampToTime(data[i].messagedate) + "</td>";

                            htmlTable = htmlTable + "<td>" + data[i].id + "</td>";

                            htmlTable = htmlTable +
                                "<td class=\"td-manage\"> <a title=\"删除\""+
                                "							href=\"javascript:;\" onclick=\"message_del(this," + data[i].messageid + ")\""+
                                "							class=\"btn btn-xs btn-warning\"><i"+
                                "								class=\"icon-trash  bigger-120\"></i></a></td>";

                            htmlTable = htmlTable + "</tr>";
                        }
                    } else {
                        htmlTable = "<tr><td colspan=" + 9 + ">没有查询到记录</td></tr>";
                    }
                    // 查询出来的商城留言列表
                    $("#sample-table").find("tbody").html(htmlTable);
                    // 查询出的分页条
                    $("#pageBar").html(pageBar);
                    // 查询出的总记录数
                    $("#messageNums").html(messageNums);
                }
            });
        },
        // 批量删除商城留言
        removeMessageBatch : function() {
            // 获取tbody里面所有被选中的checkbox
            var checkedBoxs = $("#sample-table")
                .find("tbody")
                .find("input[type='checkbox']:checked");
            // 创建数组保存已选中的checkbox的value（id）值
            if (checkedBoxs.length == 0) {
                layer.msg("请先选中要删除的留言!",{icon:0,time:1000});
                return false;
            }
            var messageIds = new Array();
            $.each(checkedBoxs, function() {
                messageIds.push($(this).val());
            });
            messageIds = JSON.stringify(messageIds);
            layer.confirm('确认要删除这些留言吗？',function(index){
                // 发送ajax请求删除选中的商城留言
                $.ajax({
                    type : "post",
                    contentType : "application/json;charset=UTF-8",
                    url : "${ctx}/sysmgr/message/removeMessageBatch",
                    data : messageIds,
                    dataType : "json",
                    success : function(data) {
                        if (data.message == "删除留言成功") {
                            layer.msg(data.message,{icon:1,time:1000});
                            // 2.成功时重新触发一次查询操作
                            messageMgr.listMessage(1, 5);
                        } else {
                            // 3.失败给出相应的提示信息
                            layer.msg(data.message,{icon:0,time:1000});
                        }
                    }
                });
            });
        }
    }
</script>
</head>
<body>
<div class="page-content clearfix">
    <div id="Message_Ratings">
        <div class="d_Confirm_Order_style">
            <div class="search_style">
                <div class="title_names">搜索查询</div>
                <ul class="search_content clearfix">
                    <li><label class="l_f">留言</label><input id="queryMessageName" name="queryMessageName" type="text"
                        class="text_add" placeholder="输入留言内容" style="width: 400px" /></li>
                    <li style="width: 90px;">
                        <button id="searchBtn" type="button" class="btn_search" onclick="messageMgr.listMessage(1, 5);">
                            <i class="icon-search"></i>查询
                        </button>
                    </li>
                </ul>
            </div>
            <!---->
            <div class="border clearfix">
                    <span class="l_f">
                        <a href="javascript:messageMgr.removeMessageBatch();" class="btn btn-danger"><i
                                class="icon-trash"></i>批量删除</a>
                    </span> <span class="r_f">共：<b id="messageNums">0</b>条
                    </span>
            </div>
            <!--  -->
            <div class="table_menu_list">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="25">
                            <label>
                                <input type="checkbox" class="ace">
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th width="80">ID</th>
                        <th width="100">留言</th>
                        <th width="80">留言日期</th>
                        <th width="120">用户ID</th>
                        <th width="250">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <div id="pageBar"></div>
            </div>
        </div>
    </div>
</div>
<script>
    jQuery(function($) {
        $('table th input:checkbox').on('click' , function(){
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function(){
                    this.checked = that.checked;
                    $(this).closest('tr').toggleClass('selected');
                });
        });
    })

    /*留言-删除*/
    function message_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            // 1.发送ajax请求删除该id的商城留言
            $.ajax({
                type : "post",
                url : "${ctx}/sysmgr/message/removeMessage",
                data : {"messageId" : id},
                dataType : "json",
                success : function(data) {
                    if (data.message == "删除留言成功") {
                        layer.msg(data.message,{icon:1,time:1000});
                        // 2.成功时重新触发一次查询操作
                        messageMgr.listMessage(1, 5);
                    } else {
                        // 3.失败给出相应的提示信息
                        layer.msg(data.message,{icon:0,time:1000});
                    }
                }
            });
        });
    }
    laydate({
        elem: '#start',
        event: 'focus'
    });
</script>
</body>
</html>
<script>
    document.getElementById("searchBtn").click();
</script>
