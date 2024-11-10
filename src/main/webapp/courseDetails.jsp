<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Course Details</title>
</head>
<body>
    <%
        String courseId = request.getParameter("courseId");
        String courseName = "";
        String courseDescription = "";

        // Example logic for course data (can be fetched from database in real-world apps)
        if ("1".equals(courseId)) {
            courseName = "Introduction to Java";
            courseDescription = "Learn the basics of Java programming.";
        } else if ("2".equals(courseId)) {
            courseName = "Web Development Basics";
            courseDescription = "Learn how to build websites using HTML, CSS, and JavaScript.";
        } else if ("3".equals(courseId)) {
            courseName = "Data Structures and Algorithms";
            courseDescription = "Understand key data structures and algorithms for solving complex problems.";
        } else if ("4".equals(courseId)) {
            courseName = "Machine Learning 101";
            courseDescription = "Introduction to machine learning concepts and algorithms.";
        } else {
            courseName = "Course Not Found";
            courseDescription = "The course you are looking for is not available.";
        }
    %>

    <h1><%= courseName %></h1>
    <p><%= courseDescription %></p>

    <a href="courses.jsp">Back to Courses</a>
</body>
</html>
