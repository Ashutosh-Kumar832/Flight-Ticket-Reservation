<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color:white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body style="background-color:powderblue;">
<a href="Home.jsp" class="home" 
style=" background-color: #0080ff;
  border:none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-top: 10px;
  margin-left: 10px;
  cursor: pointer;
  float:left;">Home</a>


<a href="logout.jsp" class="logout" 
style=" background-color: #0080ff;
  border:none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-top: 10px;
  margin-right: 10px;
  cursor: pointer;
  float:right;">Log Out</a>
<br>
<br>


<form action="flightServlet" method="post" >
  <div class="container">
    <h1><center>Flight Booking</center></h1>
    
    <hr>
    <label for="name"><b>Flight Number</b></label>
    <input type="text"  name="flight_number" required>
    

    <label for="email"><b>Flight Franchise</b></label>
    <input type="text"  name="flight_franchise" required>
    
   <label for="address"><b>From_Location</b></label>
    <input type="text"  name="from_location" required>
    
    <label for="phone"><b>To_Location</b></label>
    <input type="text" name="to_location" required>
    
     <label ><h3>Start Time</h3></label>


<input type="Time" name="start_time"
       value="yyyy-mm-dd">
      <br>
<label ><h3>End Time</h3></label>

<input type="Time" name="end_time"
       value="yyyy-mm-dd">
    <br> 
<br>     
 <label for="fare"><b>Fare</b></label>
<br>
    <input type="text"  name="fare" required>
<p>
 <center><input type="submit" name="confirm"></center>
  </div>
</form>

 <style>
   .logout
{
  background-color: #0080ff;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-top: 10px;
  margin-left: 40%;
  cursor: pointer;
 
}
        
        </style>
</body>
</html>