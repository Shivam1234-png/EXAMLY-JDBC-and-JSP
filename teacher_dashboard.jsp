<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>
<%
	String id=(String)session.getAttribute("id");
	String name=(String)session.getAttribute("name");
	String contact=(String)session.getAttribute("contact");
	String email=(String)session.getAttribute("email");
	String university=(String)session.getAttribute("university");
%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
    <link rel="stylesheet" href="studentDashboard.css">
    <!-- Boxicons CDN Link -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&family=Open+Sans:wght@300;600&display=swap"
        rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Inter&family=Open+Sans:wght@300;600&display=swap"
        rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Karla:wght@300;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100&display=swap" rel="stylesheet">


    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .material-symbols-outlined {
            font-size: 60px;
            padding-left: 25px;
            
        }

        /* Googlefont Poppins CDN Link */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .navigationbar {
            /* background-color: black; */
            /* border: 2px solid black; */
            position: fixed;
            top: 0%;
            left: 0%;
            right: 0%;
            margin: 0px;
            overflow: auto;
            z-index:1; /*Add this*/

        }

        .name {
            display: inline-block;
            color: white;
            padding: 10px;
            font-size: 30px;
            font-family: 'Abril Fatface', cursive;
            margin-left: 20px;
            /* font-family: 'Frank Ruhl Libre', serif; */
            font-weight: bold;
            /* border: 2px solid rgb(249, 248, 248); */
        }

        .links {
            margin-right: 10px;

            display: inline-block;
            padding: 10px;
            font-size: 20px;
            float: right;
            font-family: 'Frank Ruhl Libre', serif;
            /* border: 2px solid rgb(249, 246, 246); */
            margin-top: 8px;
        }

        .links a {
            color: white;
            /* font-family: 'Inter', sans-serif; */
            /* font-family: 'Open Sans', sans-serif;
   */
            font-family: 'Inter', sans-serif;
            font-family: 'Open Sans', sans-serif;
            text-decoration: none;
            font-size: 15px;
            /* border: 2px solid rgb(246, 243, 243); */
            margin: 8px;
            font-weight: bold;
        }
        
        a:hover {
            text-decoration: underline;
            color: rgb(228, 226, 226);
            /* font-size: 20px; */
        }

        td,
        th {
            text-align: left;
            padding-right: 100px;
            padding-left: 10px;
        }


        .home-section .home-content {
            /* border: 2px solid blue; */
            /* background-color: #4f00a8; */
            background-image: url('teachers_dashboard1.png');
            background-attachment: fixed;
            background-color: purple;


            background-size: 100% 100%;
            position: relative;
            margin-top: 61px;
            padding-top: 0px;
        }

        .home-content .overview-boxes {
            display: flex;
            /* border: 2px solid blue; */

            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 0 20px;
            margin-bottom: 26px;
        }

        .overview-boxes .box {
            display: flex;
            align-items: center;
            justify-content: center;
            width: calc(100% / 4 - 15px);
            background: #fff;
            padding: 15px 14px;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }

        .overview-boxes .box-topic {
            font-size: 20px;
            font-weight: 500;
        }

        .home-content .box .number {
            display: inline-block;
            /* border: 2px solid blue; */

            font-size: 35px;
            margin-top: -6px;
            font-weight: 500;
        }

        .home-content .box .indicator {
            display: flex;
            align-items: center;
        }

        .home-content .box .indicator i {
            height: 20px;
            width: 20px;
            /* border: 2px solid black; */

            background: #8FDACB;
            line-height: 20px;
            text-align: center;
            border-radius: 50%;
            color: #fff;
            font-size: 20px;
            margin-right: 5px;
        }

        .box .indicator i.down {
            background: #e87d88;
        }

        .home-content .box .indicator .text {
            font-size: 12px;
        }

        .home-content .box .cart {
            display: inline-block;
            /* border: 2px solid black; */

            font-size: 32px;
            height: 50px;
            width: 50px;
            background: #cce5ff;
            line-height: 50px;
            text-align: center;
            color: #66b0ff;
            border-radius: 12px;
            margin: -15px 0 0 6px;
        }

        .home-content .box .cart.two {
            color: #2BD47D;
            background: #C0F2D8;
        }

        .home-content .box .cart.three {
            color: #ffc233;
            background: #ffe8b3;
        }

        .home-content .box .cart.four {
            color: #e05260;
            background: #f7d4d7;
        }

        .home-content .total-order {
            font-size: 20px;
            font-weight: 500;
        }

        .home-content .sales-boxes {
            display: flex;
            /* border: 2px solid black; */

            justify-content: space-between;
            /* padding: 0 20px; */
        }
        .box{
            /* border: 2px solid blue; */
            opacity: 80%;
            /* box-shadow: black; */
            box-shadow: 10px 5px 5px black;



        }
        /* left box */


        .title {
            box-shadow: inset 0px -3px #851bff;
            /* border: 2px solid black; */
            font-weight: 10px;
            text-align: center;
            margin-left: 250px;
            margin-right: 250px;
            margin-bottom: 20px;
        }

        .stu-details {
            padding-bottom: 5px;
            /* border: 2px solid black; */

        }

        #title {
            box-shadow: inset 0px -3px #851bff;
            /* border: 2px solid black; */

            font-weight: 10px;
            font-size: 20px;
            text-align: center;
            margin-bottom: 20px;
            margin-right: 10px;
            margin-left: 100px;
        }

        .home-content .sales-boxes .recent-sales {
            width: 65%;
            /* border: 2px solid black; */

            background: #fff;
            padding: 10px 15px;
            margin: 0 20px;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }

        .home-content .sales-boxes .sales-details {
            display: flex;
            /* border: 2px solid black; */

            align-items: center;
            justify-content: space-between;
        }

        .sales-boxes .box .title {
            font-size: 24px;
            /* border: 2px solid black; */

            font-weight: 500;
            /* margin-bottom: 10px; */
        }

        .sales-boxes {
            font-size: 20px;
            /* border: 2px solid black; */

            font-weight: 500;
        }

        .sales-boxes {
            list-style: none;
            /* border: 2px solid black; */

            margin: 8px 0;
        }

        .sales-boxes .sales-details a {
            font-size: 18px;
            /* border: 2px solid black; */

            color: #333;
            font-size: 400;
            text-decoration: none;
        }

        .sales-boxes .box .button {
            width: 100%;
            display: flex;
            /* border: 2px solid black; */

            justify-content: flex-end;
        }

        .sales-boxes .box .button a {
            color: #fff;
            /* border: 2px solid black; */
            margin: 2px;
            background: #851bff;
            padding: 4px 12px;
            font-size: 15px;
            font-weight: 400;
            border-radius: 4px;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .sales-boxes .box .button a:hover {
            background: #4f00a8;
        }


        /* Right box */
        .home-content .sales-boxes .top-sales {
            width: 35%;
            background: #fff;
            padding: 20px 30px;
            margin: 0 20px 0 0;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }

        .sales-boxes .top-sales li {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 10px 0;
        }


        .sales-boxes .top-sales li .product,
        .price {
            font-size: 17px;
            font-weight: 400;
            color: #333;
        }

        .bottom_bar {
            /* background-color: black; */
            height: 300px;
        }

        .bottom_bar .name {
            /* border: 2px solid white; */
            margin-top: 50px;
            margin-left: 50px;
            font-size: 30px;

        }

        .bottom_info {
            /* border: 2px solid white; */
            margin-top: 50px;
            margin-right: 50px;
            font-size: 15px;
            /* font-family: 'Frank Ruhl Libre', serif; */
            font-family: 'Open Sans', sans-serif;
            color: white;
            float: right;
        }

        .bottom_info p {
            margin: 10px;
            font-weight: bold;
            /* font-family: 'Frank Ruhl Libre', serif; */

        }

        .bottom_info a {
            margin: 10px;
            /* font-weight: bold; */
            /* border: 2px solid white; */
            display: block;
            text-decoration: none;
            color: white;
            /* font-family: 'Frank Ruhl Libre', serif; */

        }

        /* Responsive Media Query */
        h2 {
            text-align: center;
            font-size: 40px;
            box-shadow: inset 0px -3px #851bff;
            margin-left: 350px;
            margin-right: 350px;
            margin-bottom: 50px;
        }
        .create_test a {
            text-decoration: none;
            color: white;
            border: 1px solid black;
            border-radius: 5px;
            background-color: #313131;
            font-family: Lato, sans-serif;
            text-align: center;
            padding: 10px;
            /* margin: auto; */
        }
        .create_test{
            /* margin: auto; */
            margin-left: 40%;
            margin-top: 30px;
        }
        .create_test a:hover{
            background-color: #0b0b0b;
            text-decoration: none;

        }
    </style>
</head>

<body>

    <nav class="navigationbar">
        <div class="name">
            Examly.
        </div>
        <div class="links">
            <a href="#">Home</a>
            <a href="#">Student Registration</a>
            <a href="#">Teacher Registrataion</a>
            <a href="#">Teacher Login</a>

            <a href="#">Contact Us</a>

        </div>
    </nav>
    <div class="home-section">

        <div class="home-content">
            <h2> Teacher Dashboard</h2>
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">No. of Exams </div>
                        <div class="number">0</div>
                    </div>
                    
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">NO. of Students </div>
                        <div class="number">0</div>
                        
                    </div>
                    
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">NO. of Students Passes</div>
                        <div class="number">0</div>
                        
                    </div>
                    
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">NO. of Students Failed</div>
                        <div class="number">0</div>
                       
                    </div>
                    
                </div>
            </div>

            <div class="sales-boxes">
                <div class="recent-sales box">
                    <div class="create_test">
                        <a href="upload_test.jsp">CREATE TEST</a>
                    </div>
                  <a href="logout.jsp">Logout</a>
                

                </div>
                <div class="top-sales box">
                    <div id="title">
                        <h3>Teachers Details</h3>
                    </div>
                    <ul class="top-sales-details">
                    	<li>
                            <!--<img src="images/sunglasses.jpg" alt="">-->
                            <span class="stu-details"><b>ID: <%out.println(id); %></b> </span>
                        </li>
                        <li>
                            <!--<img src="images/sunglasses.jpg" alt="">-->
                            <span class="stu-details"><b>Name: <%out.println(name); %></b> </span>
                        </li>
                     
                       
                        <li>
                            <span class="stu-details"><b>Phone no: <%out.println(contact); %></b></span>
                        </li>
                        <li>
                            <span class="stu-details"><b>Email ID: <%out.println(email); %></b> </span>
                        </li>
                        <li>
                            <span class="stu-details"><b>University: <%out.println(university); %></b> </span>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="bottom_bar">
            <div class="name">
                Examly.
            </div>
            <div class="bottom_info">

                <P>Company </P>
                <a href="#">About</a>
                <a href="#">Careers</a>
                <a href="#">Blog</a>


            </div>
            <div class="bottom_info">

                <P>Safety</P>
                <a href="#">Overview </a>


            </div>
            <div class="bottom_info">

                <P>Product</P>
                <a href="#">Overview</a>
                <a href="#">Customer stories</a>
                <a href="#">Safety standards</a>
                <a href="#">Pricing</a>
                <a href="#">Terms & policies</a>

            </div>
            <div class="bottom_info">


                <P>Research</P>
                <a href="#">Overview</a>
                <a href="#">Index</a>


            </div>
        </div>
    </div>



</body>

</html>