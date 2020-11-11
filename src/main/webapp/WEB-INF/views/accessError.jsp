<%--
  Created by IntelliJ IDEA.
  User: gkgus
  Date: 2020-11-11
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <title>접근 거부</title>
</head>
<body>
<h1>접근 거부</h1>
<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}"/></h2>
<h3><c:out value="${msg}"/> </h3>
</body>
</html>
