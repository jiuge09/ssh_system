<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
    <%--<base href="<%=request.getContextPath()%>/">--%>
    <link type="text/css" rel="stylesheet" href="/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="/css/public.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>水电费管理系统</h1>
    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b">
                        ${user.realname}</span> , 欢迎你！
        </p>
        <a href="/user/logout.action">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">
        <%
            out.print(new Date().toLocaleString());
        %>
    </span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="list">班级管理</a></li>
                <li><a href="">宿舍管理</a></li>
                <li><a href="">学生管理</a></li>
                <li><a href="toMenu2">水电费管理</a></li>
                <li><a href="">账户管理</a></li>
                <li><a href="">消息系统</a></li>
                <li><a href="toUniPrice">单价设置</a></li>
                <li><a href="toReading">抄表登记</a></li>
                <li><a href="logout">退出系统</a></li>

            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>缴费记录页面</span>
        </div>


        <c:if test="${list.size() ne 0}">

            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                        <%--                    <th width="10%">编号</th>--%>
                        <%--                    <th width="20%">班级</th>--%>
                        <%--                    <th width="20%">班主任</th>--%>
                        <%--                    <th width="20%">开班时间</th>--%>
                        <%--                    <th width="30%">操作</th>--%>
                    <th>宿舍号</th>
                    <th>总人数</th>
                    <th>用电度数</th>
                    <th>用水吨数</th>
                    <th>总水电费</th>
                    <th>单人水电费</th>
                    <th>抄表日期</th>
                    <th>状态</th>
                </tr>
                <c:forEach items="${list}" var="l">
                    <tr>
                        <td>${l.room.room}</td>
                        <td>${l.room.number}</td>
                        <td>${l.roomMoney.electricNum}</td>
                        <td>${l.roomMoney.waterNum}</td>
                        <td>${l.roomMoney.price}</td>
                        <td>${l.roomMoney.price/l.room.number}</td>
                        <th><fmt:formatDate value="${l.roomMoney.readingDay}" pattern="yyyy-MM-dd"/></th>
                                                    <td>${l.payId eq 1?"已缴":"未缴"}</td>
<%--                        <td>未缴</td>--%>
                    </tr>
                </c:forEach>
            </table>
            <p>
                    <%--        当前${pageInfo.pageNum}/${pageInfo.pages}&nbsp;--%>
                    <%--        <a href="list?pageNum=1&name=${bbh.name}&teacher=${bbh.teacher}">首页</a>--%>
                    <%--        <c:if test="${pageInfo.hasPreviousPage}">--%>
                    <%--            <a href="list?pageNum=${pageInfo.pageNum-1}&name=${bbh.name}&teacher=${bbh.teacher}">上一页</a>--%>
                    <%--        </c:if>--%>
                        <a href="toFindStudent" onclick="back()">后退</a>

            </p>
        </c:if>


        <c:if test="${list.size() eq 0}">

            <h2 align="center">无记录</h2>
            <a href="toFindStudent" onclick="back()">后退</a>

        </c:if>


    </div>

</section>

<!--点击删除按钮后弹出的页面-->
<%--<div class="zhezhao"></div>--%>
<%--<div class="remove" id="removeUse">--%>
<%--    <div class="removerChid">--%>
<%--        <h2>提示</h2>--%>
<%--        <div class="removeMain">--%>
<%--            <p>你确定要删除该用户吗？</p>--%>
<%--            <a href="#" id="yes">确定</a>--%>
<%--            <a href="#" id="no">取消</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<footer class="footer">
    版权归北大青鸟
</footer>

<%--<script src="js/jquery.js"></script>--%>
<%--<script src="js/user.js"></script>--%>
<%--<script src="js/time.js"></script>--%>

</body>
</html>
