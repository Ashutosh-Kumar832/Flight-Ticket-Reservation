<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
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
  margin-right: 10px;
  cursor: pointer;
  float:right;
}
</style>
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
<a href="logout.jsp" class="logout">Log Out</a>
<br>
<br>
<form action="fileCancel.jsp" onsubmit="return validate();" name='log'>
  
<h1><p><center><strong>Ticket Cancelation</strong></center></p></h1>
  <div class="container">
    <label for="uname"><b>Booking ID</b></label>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
    <input type="text" name='uname' ><br>

    

<tr>
        
	<form action="date.php">
 	<td><strong>Booking Date:</strong></td>
<br>
 
        <td><input type="date" name=""date"></td>
     
 </tr>

<br>
<tr>
      
 <br>
	<form action="date.php">
 	<td><strong>Journey Date:</strong></td>
<br>
 
        <td><input type="date" name=""date"></td>
     
 </tr>


<br>
 <tr>
<br>
        
 	<td><strong>From:</strong></td><br>
 
        <td><input type="text" name=""railway"></td>
     
 </tr>
     
<tr>
<br>
     
	<td><strong>To:</strong></td><br>
<td><input type="text" name="txt2"></td>
            
 </tr>
<br>
<tr>
        
 	<td><strong>Total Fare:</strong></td><br>
 
        <td><input type="text" name=""railway"></td>
     
 </tr>

<br>
<tr>
        
 	<td><strong>Cancellation charges:</strong></td><br>
 
        <td><input type="text" name=""railway"></td>
     
 </tr>

<br>
<tr>
        
 	<td><strong>Refund Amount:</strong></td><br>
 
        <td><input type="text" name=""railway"></td>
     
 </tr>

<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <button type="submit">Submit</button>&nbsp;&nbsp

  </div>
</form>
<script>

  
function validate()
{
      var name=document.log.uname.value;
      var pass=document.log.psw.value;
     
      if(name==" " || pass=="")
            {
            alert("Enter Details");
            return false      
            }
      else
            {
      alert('Successful');
      return true;
            }
}
</script>


</body>

</html>