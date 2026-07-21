<%@ page language="java" %>

<html>
<head>
    <title>Student Details</title>
</head>
<body>

<h2>Student Registration Successful</h2>

<%
String name = request.getParameter("name");
String roll = request.getParameter("roll");
String email = request.getParameter("email");
String course = request.getParameter("course");
String gender = request.getParameter("gender");

String hobbies[] = request.getParameterValues("hobby");
%>

Name :
<%= name %>

<br><br>

Roll Number :
<%= roll %>

<br><br>

Email :
<%= email %>

<br><br>

Course :
<%= course %>

<br><br>

Gender :
<%= gender %>

<br><br>

Hobbies :

<%
if(hobbies != null)
{
    for(String h : hobbies)
    {
        out.print(h + " ");
    }
}
else
{
    out.print("No hobbies selected");
}
%>

</body>
</html>