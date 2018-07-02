<%--
  Created by IntelliJ IDEA.
  User: Mattia
  Date: 17/06/2018
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="static/headAdmin.jsp"></jsp:include>
</head>
<body onload="verifyLink()">


<div class="login">
    <h2 class="login-header">
        modifica Tesina
    </h2>
    <form class="login-form" name="loginForm" action="/AccediServlet">
        <p>
            <input type="email" placeholder="Email" name="email">
        </p>

        <p>
            <input type="password" placeholder="Password" name="password">
        </p>

        <p>
            <input type="submit" value="Log in">
        </p>
    </form>
</div>


<script type="text/javascript" src="../stili/js/adminJs.js"></script>
</body>
</html>
