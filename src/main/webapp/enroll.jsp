<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enrollment Confirmation</title>
</head>
<body>
    <h1>Enrollment Confirmation</h1>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        // In a real app, you'd save this data to a database
    %>
    <p>Thank you, <%= name %>! You have successfully enrolled in the <%= course %> course.</p>
    <p>A confirmation email has been sent to <%= email %>.</p>

    <a href="index.jsp">Back to Home</a>
</body>
</html>
