<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/login" method="post" role="form">
    <fieldset>
        <legend>
            <h2>Login</h2>
        </legend>
        <div class="form-group">
            <label for="username">Username:</label>
            <input id="username" class="form-control" type='text' name='username' value="user" />
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" class="form-control" type='text' name='password' value="password" />
        </div>
        <button class="btn btn-primary" type="submit">Login</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </fieldset>
</form>
</body>
</html>
