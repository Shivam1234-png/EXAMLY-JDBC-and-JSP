<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="connect.jsp"%>
<%
int score = (int)session.getAttribute("score");
int passExams = (int)session.getAttribute("pass_exams");
int numExams = (int)session.getAttribute("num_exams");
int failExams = (int)session.getAttribute("fail_exams");
int testId = (int)session.getAttribute("test_id");

// Get test name from database
String testName = "";
PreparedStatement pstmt = conn.prepareStatement("SELECT test_name FROM tests WHERE test_id = ?");
pstmt.setInt(1, testId);
ResultSet rs = pstmt.executeQuery();
if (rs.next()) {
    testName = rs.getString("test_name");
}
%>

<html>
    <head>
        <title>View results</title>
    </head>
    <body>
        <p>Test You had appeared for: <%= testName %></p>
        <p>Your Score: <%= score %></p>
        <p><%= score < 4 ? "You have failed the test " + testName : "You have passed the test " + testName %></p>
        <p>Number of tests you have passed till now: <%= passExams %></p>
        <p>Number of tests you have failed till now: <%= failExams %></p>
        <p>Number of tests you have appeared till now: <%= numExams %></p>
        <a href="student_dashboard.jsp">Back To Home Page</a>
    </body>
<html>
