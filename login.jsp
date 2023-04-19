<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<%
String a=new String();
String b=new String();
String c=new String();
Statement pst1=null;
ResultSet rs1=null;
try{
String pass = request.getParameter("password");
PreparedStatement pst=conn.prepareStatement("select * from LOGIN_DETAILS where id=? ");
String id = request.getParameter("id");
pst.setString(1,id);
ResultSet rs=pst.executeQuery();
if (rs.next()) {
	a=rs.getString(1);
	b=request.getParameter("password");
	c=rs.getString(8);
	rs.close();
   pst1=conn.createStatement();	
   rs1=pst1.executeQuery("select * from LOGIN_DETAILS where id='"+a+"'");
   if(rs1.next()){
		 if(b.equals(rs1.getString("password")) && (rs1.getString("role")).equals("Student"))
	   {
			 session.setAttribute("id", rs1.getString(1));
	         session.setAttribute("name", rs1.getString(2));
	         session.setAttribute("contact", rs1.getString(4));
	         session.setAttribute("enrollment", rs1.getString(7));
	         session.setAttribute("email", rs1.getString(3));
	         session.setAttribute("university", rs1.getString(6));
			 response.sendRedirect("student_dashboard.jsp");	 
			 }else{
				 session.setAttribute("id", rs1.getString(1));
		         session.setAttribute("name", rs1.getString(2));
				 response.sendRedirect("teacher_dashboard.jsp");
			 }
			 
		 }
			 else{

			 response.sendRedirect("index.html?error=Incorrect User id or password");

			 }
	   }else{
		   %>
		   Hey! Please register here...<a href="registration.jsp">Register to Examly.</a><%
		   
		   }
}catch(Exception e){out.println(e.getMessage());}%>


</body>

</html>