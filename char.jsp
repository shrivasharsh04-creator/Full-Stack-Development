<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Special Character Validation</title>
</head>
<body>

<h2>Check Starting Character</h2>

<form method="post">
    Enter String:
    <input type="text" name="text" required>
    <input type="submit" value="Check">
</form>

<%
String text = request.getParameter("text");

if (text != null) {
    char firstCharacter = text.charAt(0);

    if (!Character.isLetterOrDigit(firstCharacter)) {
%>
        <h3>The string starts with a special character.</h3>
<%
    } else {
%>
        <h3>The string does not start with a special character.</h3>
<%
    }
}
%>

</body>
</html>