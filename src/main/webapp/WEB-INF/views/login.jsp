<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>登录页</title>
</head>
<body>
<c:url value="/login" var="loginUrl"/>
<form action="${loginUrl}" method="post">       ¶
    <c:if test="${param.error != null}">        ·
        <p>
            Invalid username and password.
        </p>
    </c:if>
    <c:if test="${param.logout != null}">       ¸
        <p>
            You have been logged out.
        </p>
    </c:if>
    <p>
        <label for="username">Username</label>
        <input type="text" id="username" name="username"/> ¹
    </p>
    <p>
        <label for="password">Password</label>
        <input type="password" id="password" name="password"/> º
    </p>
    <input type="hidden"                        »
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
    <button type="submit" class="btn">Log in</button>
</form>
</body>
</html>
