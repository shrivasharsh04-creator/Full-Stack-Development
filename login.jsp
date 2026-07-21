<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>User Login</h2>

<form action="authenticate.jsp" method="post">

    Username:
    <input type="text" name="username" required>
    <br><br>

    Password:
    <input type="password" name="password" required minlength="4">
    <br><br>

    <input type="submit" value="Login">

</form>

<%
String error = request.getParameter("error");

if ("1".equals(error)) {
%>
    <p style="color:red;">Invalid username or password.</p>
<%
}
%>

</body>
</html>