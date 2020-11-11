<%--
  Created by IntelliJ IDEA.
  User: gkgus
  Date: 2020-11-11
  Time: 오후 4:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그아웃</title>
</head>
<body>
<h1>로그아웃</h1>
<form action="/member/logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button>로그아웃</button>
</form>
</body>
</html>
