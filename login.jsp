<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>

<style type="text/css">
  

@import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
.login-block
{
background: #DE6262;  /* fallback for old browsers */
background: -webkit-linear-gradient(to bottom,  #000099, #1ab2ff);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to bottom,  #000099, #1ab2ff); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
float:left;
width:100%;
height:100%;
padding : 80px 0;
}
.banner-sec
{
   background-size:cover; 
   min-height:500px; 
   border-radius: 0 10px 10px 0; 
   padding:0;
}
.container
{
  background:#fff; 
  border-radius: 10px; 
  box-shadow:15px 20px 0px rgba(0,0,0,0.1);
  margin-bottom: 13%;
  margin-top: 13%;
}
.carousel-inner
{
  border-radius:0 10px 10px 0;
}
.carousel-caption
{
  text-align:left;
  left:5%;
}
.login-sec
{
  padding: 30px 30px; 
  position:relative;
}
.login-sec .copy-text
{
  position:absolute; width:80%; 
  bottom:20px; 
  font-size:13px; 
  text-align:center;
}
.login-sec .copy-text i
{
  color:#FEB58A;
}
.login-sec .copy-text a
{
  color:#E36262;
}
.login-sec h2
{
  margin-bottom:30px; 
  font-weight:800; 
  font-size:30px; 
  color: #ff944d;
}
.login-sec h2:after
{
  content:" "; 
  width:100px; 
  height:5px; 
  background:#FEB58A; 
  display:block; 
  margin-top:20px; 
  border-radius:3px; 
  margin-left:auto;
  margin-right:auto;
}
.btn-login
{
  background: #ff944d; 
  color:#fff; 
  font-weight:600;
  width:90%;
  margin-top: 10%;
  
}
.banner-text
{
  width:70%; 
  position:absolute; 
  bottom:40px; 
  padding-left:20px;
}
.banner-text h2
{
  color:#fff; 
  font-weight:600;
}
.banner-text h2:after
{
  content:" "; 
  width:100px; 
  height:5px; 
  background:#FFF; 
  display:block; 
  margin-top:20px; 
  border-radius:3px;
}
.banner-text p
{
  color:#fff;
}
.signup 
{
  margin-top: 10%;

}

</style>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="D:\project\login.css" rel="stylesheet" id="login">

<section class="login-block">
    <div class="container">
  <div class="row">
    <div class="col-md-4 login-sec">
        <h2 class="text-center">Login Now</h2>
               <form class="login-form" name=f1 method=post action="Home.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase">Username</label>
    <input type="text" name="loginid" class="form-control" placeholder="">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase">Password</label>
    <input type="password" name="password" class="form-control" placeholder="">
  </div>
  
  
    <div class="form-check">
   
    <button type="submit" value=submit class="btn btn-login">Submit</button>
  </div>
  <div class="signup" align="center">
     <p>Don't have an account? <a href="register.jsp" target="_blank">Register here</a>.</p>
  </div>
</form>
    </div>
    <div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                 <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
            <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="images/air1.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>WELCOME TO AIR GO</h2>
        </div>  
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="images/air2.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>WELCOME TO AIR GO</h2>
        </div>  
    </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="images/air3.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
             <h2>WELCOME TO AIR GO</h2>
        </div>  
    </div>
  </div>
            </div>     
        
    </div>
  </div>
</div>
</section>
</body>
</html>
