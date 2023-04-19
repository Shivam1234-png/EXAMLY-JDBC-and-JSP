<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>
<%
// Retrieve values from the HTML form
try{
String test_name=  request.getParameter("test_name");
String question1 = request.getParameter("question1");
String option1_1 = request.getParameter("option1_1");
String option1_2 = request.getParameter("option1_2");
String option1_3 = request.getParameter("option1_3");
String option1_4 = request.getParameter("option1_4");
String correct_option1 = request.getParameter("correct_option1");
String question2 = request.getParameter("question2");
String option2_1 = request.getParameter("option2_1");
String option2_2 = request.getParameter("option2_2");
String option2_3 = request.getParameter("option2_3");
String option2_4 = request.getParameter("option2_4");
String correct_option2 = request.getParameter("correct_option2");
String sql = "INSERT INTO tests (test_name) VALUES ('" + test_name + "')";
int rowsAffected = conn.prepareStatement(sql).executeUpdate();
if (rowsAffected>0) {
// Get ID of the inserted test
ResultSet rs = conn.prepareStatement("SELECT tests_sequences.currval FROM dual").executeQuery();
rs.next();
int test_id = rs.getInt(1);
session.setAttribute("test_name",test_name);
session.setAttribute("question1",question1);
session.setAttribute("option1_1",option1_1);
session.setAttribute("option1_2",option1_2);
session.setAttribute("option1_3",option1_3);
session.setAttribute("option1_4",option1_4);
session.setAttribute("correct_option1",correct_option1);
session.setAttribute("question2",question2);
session.setAttribute("option2_1",option2_1);
session.setAttribute("option2_2",option2_2);
session.setAttribute("option2_3",option2_3);
session.setAttribute("option2_4",option2_4);
session.setAttribute("correct_option2",correct_option2);
PreparedStatement pstt=conn.prepareStatement("INSERT INTO QUESTIONS (test_id,question_text, option1, option2, option3, option4, correct_option) VALUES (?,?, ?, ?, ?, ?, ?)");
pstt.setInt(1, test_id);
pstt.setString(2, question1);
pstt.setString(3, option1_1);
pstt.setString(4, option1_2);
pstt.setString(5, option1_3);
pstt.setString(6, option1_4);
pstt.setString(7, correct_option1);
int t1=pstt.executeUpdate();
pstt.setInt(1, test_id);
pstt.setString(2, question2);
pstt.setString(3, option2_1);
pstt.setString(4, option2_2);
pstt.setString(5, option2_3);
pstt.setString(6, option2_4);
pstt.setString(7, correct_option2);
int t2=pstt.executeUpdate();
if(t1>0 && t2>0){
	out.println("Test Created and questions added successfully"); %> <br> 
	<a href="view_paper.jsp">View paper</a> <%
}
}
}catch(Exception e){out.println(e.getMessage());}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>