<%--
  Created by IntelliJ IDEA.
  User: gkgus
  Date: 2020-11-11
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<h2><c:out value="${error}"/> </h2>
<h2><c:out value="${logout}"/> </h2>
<form method="post" action="/login">
    <div>
        <input type="text" name="username" value="admin">
    </div>
    <div>
        <input type="password" name="password" value="admin">
    </div>
    <div>
        <input type="submit">
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
</form>
</body>
</html>
