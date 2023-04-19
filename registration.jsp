<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>

<%try{

PreparedStatement pst=conn.prepareStatement("insert into LOGIN_DETAILS values(?,?,?,?,?,?,?,?)");

pst.setString(1,request.getParameter("id"));

pst.setString(2,request.getParameter("name"));

pst.setString(3,request.getParameter("email"));

pst.setString(4,request.getParameter("contact"));

pst.setString(5,request.getParameter("password"));

pst.setString(6,request.getParameter("university"));

pst.setString(7,request.getParameter("enrollment"));

pst.setString(8,request.getParameter("role"));

int t=pst.executeUpdate();

if(t>0)

out.println("<h1>register successfully");

conn.close();

}catch(Exception e){out.println(e.getMessage());}

%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Registration Form</title>

<!------ <link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?

family=Frank+Ruhl+Libre&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet"> --->

<style>

* {

box-sizing: border-box;

margin:0px;

}

body{

background-image: linear-gradient(rgba(4,9,30,0.8),rgba(4,9,30,0.8)),url(bgg.jpg);

background-position: center;

background-size: cover;

position:relative;

}

.main {

border: 2px solid black;

width: 50%;

margin: 20px;

position: relative;

justify-content: center;

left:300px;

top:75px;

}

.main h1{

text-align: center;

text-decoration: underline;

color: rgb(0, 0, 0);

background-color: rgb(118, 47, 118,0.8);

padding-bottom: 10px;

padding-top:20px

}

.form_box {

padding-top: 20px;

margin-top: 0;

padding-bottom: 65px;

background-color: rgb(118, 47, 118,0.8);

padding-left:220px;

}

.form_box input{

text-align: center;

height: 20px;

display:flex;

}

input[type=text],input[type=email],input[type=password], input[type=date] {

margin-top: 5px;

width: 50%;

height: 35px;

border: 1px solid black;

border-radius: 5px;

background-color: white;

}

.button {

text-align: center;

padding-left:70px;

width:100%;

margin:0;

}

.button input[type=submit] {

color: black;

cursor:pointer;

margin: 5px;

border-radius: 20px;

background-color: white;

font-family: Lato, sans-serif;

float: left;

font-weight: 700;

font-size: 16px;

height:32px;

width:90px;

padding-left:15px;

}

.button input[type=submit]:hover{

color:white;

background-color: rgb(0, 0, 0);

transition: 0.5s;

}

.button a{

color: black;

cursor:pointer;

margin: 5px;

border-radius: 20px;

background-color: white;

font-family: Lato, sans-serif;

float: left;

font-weight: 700;

font-size: 16px;

height:32px;

width:90px;

padding-left:15px;

}

.button a:hover{

color:white;

background-color: rgb(0, 0, 0);

transition: 0.5s;

}

</style>

</head>

<body>

<div class="main">

<h1>

Registration Form

</h1>

<form action="" method="post">

<div class="form_box">

<input type="text" name="id" placeholder="Enter ID..." required><br>

<input type="text" name="name" placeholder="Enter student name..." required><br>

<input type="text" name="email" placeholder="Enter email id..." required><br>

<input type="text" name="contact" placeholder="Enter mobile number..." required><br>

<input type="password" name="password" placeholder="Enter password..." required><br>

<input type="text" name="university" placeholder="Enter the name of your University..." required><br>

<input type="text" name="enrollment" placeholder="Enter the your enrollment number..." required><br>

STUDENT<input type="radio" name="role" value="Student"><br>

TEACHER<input type="radio" name="role" value="Teacher"><br>

<div>

<p class="button">

<input type="submit" value="Register">

<a href="index.html">Login</a>

</p>

</div>

</div>

</form>

</div>

</body>

</html>