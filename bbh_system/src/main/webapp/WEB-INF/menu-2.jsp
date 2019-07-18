<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
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
        <a href="logout">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time"><%
        out.print(new Date().toLocaleString());
    %>
</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="list">班级管理</a></li>
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

        <div class="wFont">
            <h2>当前用户：${user.realname}您是？</h2>
            <input onclick="location.href='toFindStudent'" type="submit" value="学生" id="searchUser" style="width: 130px;height:35px "/>
            <input onclick="location.href='toFindElse'" type="submit" value="校领导班主任" id="searchUser2" style="width: 140px;height:35px "/>
        </div>
    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>
<%--<script src="js/time.js"></script>--%>
</body>
</html>
