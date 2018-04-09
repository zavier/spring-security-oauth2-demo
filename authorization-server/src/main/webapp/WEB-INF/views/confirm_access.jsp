<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>是否确认授权？</h1>
<form action="/oauth/authorize" method="post" role="form">
    <fieldset>
        <input name="user_oauth_approval" value="true" type="hidden">
        <button class="btn btn-primary" type="submit">是</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </fieldset>
</form>
<form action="/oauth/authorize" method="post" role="form">
    <fieldset>
        <input name="user_oauth_approval" value="false" type="hidden">
        <button class="btn btn-primary" type="submit">否</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </fieldset>
</form>
</body>
</html>
