<%@ page import="java.sql.*" %> 
	<%! Connection conn=null;%>
	<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
	System.out.println("driver2  found");
}
	catch(Exception e){System.out.println("driver2 not found");}
	%>