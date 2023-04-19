<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="connect.jsp"%>
<%
int score = 0;
int testId = 0;

// get the test_id from session
if (session.getAttribute("test_id") != null) {
    testId = (Integer) session.getAttribute("test_id");
}

// loop through each question id for the test
for (int i = 1; i <= 2; i++) {
    String questionKey = "q" + i;
    String selectedOption = request.getParameter(questionKey);

    if (selectedOption != null) {
        // get the correct option from the questions table
        String sql = "SELECT correct_option FROM questions WHERE test_id = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, testId);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            String correctOption = rs.getString("correct_option");
            
            // check if the selected option matches the correct option
            if (selectedOption.equals(correctOption)) {
                score++; // increment score if answer is correct
            } else {
                score--;
            }
        }
    }
}

// insert the student's score into the database
if (testId != 0) {
    String insertSql = "INSERT INTO collect_data (test_id, score) VALUES (?, ?)";
    PreparedStatement pstmt = conn.prepareStatement(insertSql);
    pstmt.setInt(1, testId);
    pstmt.setInt(2, score);
    pstmt.executeUpdate();
}

// display the score to the student
int passExams = session.getAttribute("pass_exams") != null ? (int) session.getAttribute("pass_exams") : 0;
int failExams = session.getAttribute("fail_exams") != null ? (int) session.getAttribute("fail_exams") : 0;
int numExams = session.getAttribute("num_exams") != null ? (int) session.getAttribute("num_exams") : 0;

if (score >= 4) {
    passExams++;
} else {
    failExams++;
}

numExams++;

// Redirect to dashboard
session.setAttribute("score", score);
session.setAttribute("pass_exams", passExams);
session.setAttribute("num_exams", numExams);
session.setAttribute("fail_exams", failExams);
response.sendRedirect("result_page.jsp");
%>