<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                <%  
session.invalidate();
%>
<style type="text/css">
                
                                body {
                background:url('images/flight_logout.jpg') no-repeat 0px 0px;
                background-size: cover;
                font-family: 'Open Sans', sans-serif;
                background-attachment: fixed;
    background-position: center;
                }
                .container
                {
                                padding: 15px;
                                text-align: center;
                                background-color: transparent;
                }
                .container h2
                {
                                color:white;
                                font-family: 'Montserrat', sans-serif;
                }
                .mid
                {
                                text-align: center;
                                margin-top: 10%;
                }
                .mid a
                {
                                
                                font-size: 20px;
                                color:white;
                                font-family: 'Montserrat', sans-serif;
                                background-color:  #1a66ff;
                                text-decoration: none;
                                padding: 15px;
                                text-align: center;
                }
                .mid a:hover
                {
                                
                                font-size: 20px;
                                color:white;
                                font-family: 'Montserrat', sans-serif;
                                background-color:  #00b8e6;
                                text-decoration: none;
                                padding: 15px;
                                text-align: center;
                }
                .foot
                {
                                margin-top: 30%;
                                font-size: 50px;
                                color:white;
                                font-family: 'Montserrat', sans-serif;
                                padding: 15px;
                                text-align: center;
                }

</style>
<div class="container">
<h2>You have successfully logged out</h2>
</div>


<div class="mid">
<a href="login.jsp" >

Click here to Login Again
</a>

<div class="foot">
                Thanks for visiting our website!!
</div>
<h4>You will be redirected to login page after 10 seconds</h4>

<%
response.setHeader("Refresh", "10; URL=login.jsp" );

%>
</body>
</html>
