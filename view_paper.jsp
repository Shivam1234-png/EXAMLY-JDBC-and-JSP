<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>
<%
	String test_name = (String)session.getAttribute("test_name");
	String question1 = (String)session.getAttribute("question1");
	String option1_1 = (String)session.getAttribute("option1_1");
	String option1_2 = (String)session.getAttribute("option1_2");
	String option1_3 = (String)session.getAttribute("option1_3");
	String option1_4 = (String)session.getAttribute("option1_4");
	String correct_option1 = (String)session.getAttribute("correct_option1");
	String question2 = (String)session.getAttribute("question2");
	String option2_1 = (String)session.getAttribute("option2_1");
	String option2_2 = (String)session.getAttribute("option2_2");
	String option2_3 = (String)session.getAttribute("option2_3");
	String option2_4 = (String)session.getAttribute("option2_4");
	String correct_option2 = (String)session.getAttribute("correct_option2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p><%= test_name %></p>
	<p><%= question1 %></p>
	<p><%= option1_1 %></p>
	<p><%= option1_2 %></p>
	<p><%= option1_3 %></p>
	<p><%= option1_4 %></p>
	<p><%= question2 %></p>
	<p><%= option2_1 %></p>
	<p><%= option2_2 %></p>
	<p><%= option2_3 %></p>
	<p><%= option2_4 %></p>
	<a href="teacher_dashboard.jsp">Back</a>
</body>
</html>