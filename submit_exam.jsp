<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="connect.jsp"%>
<html>
<head>
</head>
<body>
<%
String selectedTest = request.getParameter("selected_test");
PreparedStatement pstmt = conn.prepareStatement("SELECT test_id FROM tests WHERE test_name = ?");
pstmt.setString(1, selectedTest);
ResultSet rs = pstmt.executeQuery();

// Check if the test exists
if (rs.next()) {
    int testId = rs.getInt("test_id");
    session.setAttribute("test_id",testId);
    // Get the questions and options for the selected test
    pstmt = conn.prepareStatement("SELECT * FROM questions WHERE test_id = ?");
    pstmt.setInt(1, testId);
    ResultSet rs2 = pstmt.executeQuery();%>
    <form method="post" action="result.jsp">
        <% int i = 1;
        while (rs2.next()) { %>
            <p><%= i %>. <%= rs2.getString("question_text") %></p>
            <input type="radio" name="q<%= i %>" value="1"> <%= rs2.getString("option1") %> <br>
            <input type="radio" name="q<%= i %>" value="2"> <%= rs2.getString("option2") %> <br>
            <input type="radio" name="q<%= i %>" value="3"> <%= rs2.getString("option3") %> <br>
            <input type="radio" name="q<%= i %>" value="4"> <%= rs2.getString("option4") %> <br>
        <% i++;
        } %>
        <input type="submit" value="Submit Answers">
    </form>
<%
} else {
    // Test not found
    out.println("Test not found.");
}
%>
</body>
</html>
