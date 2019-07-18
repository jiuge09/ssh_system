<%@ page import="java.util.Date" %>
<%@ page import="com.bdqn.bbh.entity.User" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
    <link type="text/css" rel="stylesheet" href="/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="/css/public.css"/>
    <style type="text/css">
        .unit {
            text-align: center;
            /*margin-top: 100px;*/
            font-family: "微软雅黑";
            font-size: 50px;
            /*background: lightgray;*/
        }

        input {
            width: 125px;
            height: 40px;

        }

        button{
            width: 125px;
            height: 40px;
        }
        form{
            border: 1px solid black;
            /*margin-right: 10px;*/
            padding-right: -100px;
            background-color: yellowgreen;
        }
    </style>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>水电费管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b">
            ${user.realname}</span> , 欢迎你！
        </p>
    ${user.realname}
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
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>单价设置页面</span>
        </div>
        <div class="unit">
        <form action="upUnitPrice">
            <tr>
                <td>
                    水费单价：<input value="${price.waterUnit}" name="waterUnit">元/每吨<br/>
                </td>
                <td>
                    电费单价：<input type="text" value="${price.electricUnit}" name="electricUnit">元/每度<br/>
                </td>
                <button type="submit" style="font-family: '微软雅黑';">修改</button>
            </tr>
        </form>
        </div>
    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>
<%--<script src="js/time.js"></script>--%>
</body>
</html>
