<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mvc.dao.editDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

  body 
  {
  
  margin:0;
  padding: 0;
  font-family: 'Montserrat', sans-serif;
  }

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 10px;
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: none;
  border-radius: 10px;
  box-shadow: 5px 5px  #a6a6a6;
  position: absolute;
 top: 65%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 50%;
  text-align: center;
  margin-bottom: 10%;
  margin-top:-10%;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=date], input[type=textarea] {
  
  padding: 10px 40px 10px 10px;
  border-bottom: 0.5px solid white;
  border-left:none;
  border-top:none;
  border-right:none;
  background-color: white;
}

input[type=text]:focus, input[type=password]:focus, input[type=date]:focus, input[type=textarea]:focus {
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
  width: 60%;
  
}

.registerbtn:hover {
  opacity: 0.2;

}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: white;
  text-align: center;
  opacity: 0.5;
  border-radius: 20px;
  padding: 2px;
  color: black;
  width:50%;
  align-self: center;
  margin-left:25%;
}


.fullBackground {
  background-position: center center;
  background-attachment: scroll;
  background-size: cover;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  overflow-y: scroll; 
  overflow-x:hidden;
}
h1
{
  text-align: center;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #e6e6e6;
}
::-moz-placeholder { /* Firefox 19+ */
  color: #e6e6e6;
}
:-ms-input-placeholder { /* IE 10+ */
  color: #e6e6e6;
}
:-moz-placeholder { /* Firefox 18- */
  color: #e6e6e6;
}
select{
     background-color: white;
    -moz-appearance: none;
    appearance: none;
    padding: 7px 40px 7px 10px;
    border-color: white;
    color:white;
}
select:focus
{
  color: black;
}
textarea
{
   background-color: white;
   border-color: white;
}
textarea:focus
{
   background-color: #ddd;
   border-color: #ddd;
}
::-webkit-datetime-edit-year-field:not([aria-valuenow]),
::-webkit-datetime-edit-month-field:not([aria-valuenow]),
::-webkit-datetime-edit-day-field:not([aria-valuenow]) {
    color: transparent;
}
td
{
  padding-left:20px;
  padding-right: 20px;
  padding-top: 20px;
  text-align:left;
}
table
{
  margin:auto;
}
    .registerbtn:hover 
    {
      opacity: 0.9;
  }


</style>
<script type="text/javascript" src="proj.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
  <script src="js/fullclip.js"></script>
</head>
<body>

<div class="fullBackground">
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
  border: none;
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
<form name="myform" action="editServlet" onsubmit="return validation1();" method="post">
<% 
int id=Integer.parseInt(request.getParameter("id"));

List<String> list2=new editDao().showList(id);
%>


  <div class="container"> 
          <h1>Welcome To Air Go</h1>
          <hr>
          <table>
       <tr><td><label for="reg_id" ><b>id</b></label></td>
       <td><input type="text" placeholder="Enter Id" name="reg_id" required value="<%=list2.get(0)%>"></td></tr>
    
       <tr><td><label for="name"><b>Name</b></label></td>
       <td><input type="text" placeholder="Enter Name" name="name" required  value="<%=list2.get(1)%>"></td></tr>

       <tr><td><label for="email"><b>Email</b></label></td>
       <td><input type="text" placeholder="Enter Email" name="email" required value="<%=list2.get(2)%>"></td></tr>
    
       <tr><td><label for="address"><b>Address</b></label></td>
       <td><input type="text" placeholder="Enter address" name="address" required value="<%=list2.get(3)%>"></td></tr>
    
       <tr><td><label for="phone"><b>Phone number</b></label></td>
       <td><input type="text" placeholder="Enter phone no." name="phone" required value="<%=list2.get(4)%>"></td></tr>
    
       <tr><td><label >Date Of Birth</label></td>
<%  

System.out.print(list2.get(5)+"  .......... date ");
SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
//("MM/dd/yyyy");
      Date d=     dateFormat.parse(list2.get(5));
      dateFormat=new SimpleDateFormat("MM/dd/yyyy");
      
      String s1=dateFormat.format(d);
      d=dateFormat.parse(s1);
      
      
      s1=dateFormat.format(d);
      System.out.println(s1+"  -----MM/dd/yyyy----- date "+d);
%>
       <td><input type="Date" name="birth_date"
       value="yyyy-MM-dd"
              required value="<%=d%>" ></td></tr>
     
       <tr><td><h3>Gender</h3></td>
       <td><label class="gender">
       <input type="radio" checked="checked" value="M" name="gender"
        required value="<%=list2.get(6)%>">Male
       <span class="checkmark"></span>
    </label>
    <br>

    <label class="gender">
      <input type="radio" name="gender" value="F" required value="<%=list2.get(6)%>">Female
      <span class="checkmark"></span>
    </label></td></tr>

        
          <tr><td> <label>SSN Type</label></td>
            
        <td><select name="ssn_type">
          <option value="adhar">Aadhar</option>
          <option value="pan">Pan</option>
          <option value="passport">Passport</option>
          <option value="driving lisence">Driving Licence</option>
        </select></td></tr>
        
         <tr><td><label for="ssn"><b>SSN number</b></label></td>
        <td><input type="text" placeholder="Enter ssn no." name="ssn" required value="<%=list2.get(8)%>"></td></tr>
        
        
        <tr><td><label for="psw"><b>Password</b></label></td>
        <td><input type="password" placeholder="Enter Password" name="psw" required value="<%=list2.get(9)%>"></td></tr>
        </table>
       <button type="submit" class="registerbtn">Submit</button>
        

  </div>
</form>
</div>
<script>
    $('.fullBackground').fullClip({
      images: ['images/air1.jpg', 'images/air2.jpg', 'images/air4.jpg'],
      transitionTime: 2000,
      wait: 5000
    });
    </script>
    
</body>
</html>

    

