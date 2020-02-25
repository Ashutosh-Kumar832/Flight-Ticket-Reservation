<%@page import="com.mvc.dao.regDao"%>
<%@page import="com.mvc.dao.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>home page</title>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Charm" rel="stylesheet">

</head>
<body>



<style type="text/css">
  
.carousel-item {
  height: 100vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#mainNav {
  border-bottom: 1px solid rgba(33, 37, 41, 0.1);
  background-color: #fff;

  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}

#mainNav .navbar-brand {
  font-weight: 700;
  text-transform: uppercase;
  color: #F05F40;
  font-size: 20px;
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

#mainNav .navbar-brand:focus, #mainNav .navbar-brand:hover {
  color: #f05f40;
  font-size: 20px;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus {
  font-size: .9rem;
  font-weight: 700;
  text-transform: uppercase;
  color: #212529;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link:hover,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus:hover {
  color: #F05F40;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link.active,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus.active {
  color: #F05F40 !important;
  background-color: transparent;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link.active:hover,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus.active:hover {
  background-color: transparent;
}

@media (min-width: 992px) {
  #mainNav {
    border-color: transparent;
    background-color: transparent;
  }
  #mainNav .navbar-brand {
    color: white;
     font-size: 40px;
     font-family: 'Charm', cursive;
  }
  #mainNav .navbar-brand:focus, #mainNav .navbar-brand:hover {
     color:  white;
     font-size: 40px;
     font-family: 'Charm', cursive;
  }
  #mainNav .navbar-nav > li.nav-item > a.nav-link {
    padding: 0.5rem 1rem;
  }
  #mainNav .navbar-nav > li.nav-item > a.nav-link,
  #mainNav .navbar-nav > li.nav-item > a.nav-link:focus {
    color: rgba(255, 255, 255, 1);
    margin: 2px;
  }
  #mainNav .navbar-nav > li.nav-item > a.nav-link:hover,
  #mainNav .navbar-nav > li.nav-item > a.nav-link:focus:hover {
    color: black;
    border-style: solid;
    border-color: white;
    border-radius: 5px;
    background-color: white;
    margin: 2px;
  }
  #mainNav.navbar-shrink {
    border-bottom: 1px solid rgba(33, 37, 41, 0.1);
    background-color: #fff;
  }
  #mainNav.navbar-shrink .navbar-brand {
    color: #F05F40;
  }
  #mainNav.navbar-shrink .navbar-brand:focus, #mainNav.navbar-shrink .navbar-brand:hover {
    color: #f05f40;
  }
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link,
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link:focus {
    color: #212529;
  }
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link:hover,
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link:focus:hover {
    color: #F05F40;
  }
}

</style>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<%  
 int id=1;
String pass="1234";

 Login login=new Login();
login.setLogin(id);
login.setPass(pass);
regDao dao=new regDao();

%>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger">Air Go</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="searchflight.jsp?id=<%=id %>">Search Flight</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="cancelticket.jsp">Cancel Tickets</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="booking.jsp">Book Tickets</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="edit.jsp?id=<%=id %>">Edit Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="logout.jsp">Log out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/-4-KfFh2eIU/1920x1080')">
        <div class="carousel-caption d-none d-md-block" >
          <h2 class="display-4"><strong>Welcome To Air Go</strong></h2>
         <p style="font-size: 20px;"><strong>To Travel is to Live</strong></p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/CvGHUJ2qA14/1920x1080')">
        <div class="carousel-caption d-none d-md-block" style="border-color:black;">
          <h2 class="display-4"><strong>Travel</strong></h2>
          <p style="font-size: 20px;"><strong>Work, Travel, Save, Repeat</strong></p>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/LaDAwnGqOGo/1920x1080')">
        <div class="carousel-caption d-none d-md-block"  style="border-color:black;">
          <h2 class="display-4"><strong>Fun</strong></h2>
          <p style="font-size: 20px;"><strong>The world is a book and those who do not travel read only one page.</strong></p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
</header>


</body>
</html>
 