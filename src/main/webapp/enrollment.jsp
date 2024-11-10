<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enroll in a Course</title>
</head>
<body>
    <h1>Enroll Now</h1>

    <form action="enroll.jsp" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="course">Select Course:</label><br>
        <select id="course" name="course">
            <option value="Java">Introduction to Java</option>
            <option value="Web">Web Development Basics</option>
            <option value="DSA">Data Structures and Algorithms</option>
            <option value="ML">Machine Learning 101</option>
        </select><br><br>

        <input type="submit" value="Enroll">
    </form>

    <a href="index.jsp">Back to Home</a>
</body>
</html>
