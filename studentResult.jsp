<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Result System</title>
</head>
<body>

<h2>Online Student Result System</h2>

<form method="post">

    Student Name:
    <input type="text" name="studentName" required>
    <br><br>

    Java Marks:
    <input type="number" name="javaMarks" min="0" max="100" required>
    <br><br>

    JSP Marks:
    <input type="number" name="jspMarks" min="0" max="100" required>
    <br><br>

    Database Marks:
    <input type="number" name="databaseMarks" min="0" max="100" required>
    <br><br>

    Networking Marks:
    <input type="number" name="networkMarks" min="0" max="100" required>
    <br><br>

    <input type="submit" value="Calculate Result">

</form>

<%
if ("POST".equalsIgnoreCase(request.getMethod())) {

    String studentName = request.getParameter("studentName");

    int javaMarks = Integer.parseInt(request.getParameter("javaMarks"));
    int jspMarks = Integer.parseInt(request.getParameter("jspMarks"));
    int databaseMarks = Integer.parseInt(request.getParameter("databaseMarks"));
    int networkMarks = Integer.parseInt(request.getParameter("networkMarks"));

    int total = javaMarks + jspMarks + databaseMarks + networkMarks;
    double percentage = total / 4.0;

    String grade;
    String result;

    if (javaMarks < 35 || jspMarks < 35 ||
        databaseMarks < 35 || networkMarks < 35) {

        result = "Fail";
        grade = "F";

    } else {

        result = "Pass";

        if (percentage >= 90) {
            grade = "A+";
        } else if (percentage >= 80) {
            grade = "A";
        } else if (percentage >= 70) {
            grade = "B";
        } else if (percentage >= 60) {
            grade = "C";
        } else if (percentage >= 50) {
            grade = "D";
        } else {
            grade = "E";
        }
    }
%>

<hr>

<h2>Result</h2>

<table border="1" cellpadding="10">
    <tr>
        <th>Student Name</th>
        <td><%= studentName %></td>
    </tr>
    <tr>
        <th>Total Marks</th>
        <td><%= total %> / 400</td>
    </tr>
    <tr>
        <th>Percentage</th>
        <td><%= String.format("%.2f", percentage) %>%</td>
    </tr>
    <tr>
        <th>Grade</th>
        <td><%= grade %></td>
    </tr>
    <tr>
        <th>Result</th>
        <td><%= result %></td>
    </tr>
</table>

<%
}
%>

</body>
</html>