<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>final</title>
<link href="css/finalcss.css" rel="stylesheet" type="text/css">
</head>
<body>
<a href="Home.jsp" class="home" 
style=" background-color: white;
  border:none;
  color: #0080ff;
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
style=" background-color: white;
  border: none;
  color: #0080ff;
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
<div class="table-title">
<h3>Booking Invoice</h3>
</div></center>
<table class="table-fill">
<tbody class="table-hover">
<tr>
<td class="text-left">Booking ID</td>
<td class="text-left"><%String book_id;%>
<%book_id=(String)session.getAttribute("Booking_Id"); %>
<%=book_id %></td></tr>
<tr>
<td class="text-left">Flight ID</td>
<td class="text-left"><%String flight_number;%>
<%flight_number=(String)session.getAttribute("Flight_Number"); %>
<%=flight_number %></td>
</tr>
<tr>
<td class="text-left">From</td>
<td class="text-left"><%String from_location;%>
<%from_location=(String)session.getAttribute("From_Location"); %>
<%=from_location %></td>
</tr>
<tr>
<td class="text-left">To</td>
<td class="text-left"><%String to_location;%>
<%to_location=(String)session.getAttribute("To_Location"); %>
<%=to_location %></td>
</tr>
<tr>
<td class="text-left">Depart Time</td>
<td class="text-left"><%String start_time;%>
<%start_time=(String)session.getAttribute("Start_Time"); %>
<%=start_time %></td>
</tr>
<tr>
<td class="text-left">Fare</td>
<td class="text-left"><%String fare;%>
<%fare=(String)session.getAttribute("Fare"); %>
<%=fare %></td>
</tr>
</tbody>
</table>


<center><div class="conclude">BOOKING CONFIRMED!!!!</div></center>








</body>
</html>