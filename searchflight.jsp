<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.mvc.bean.searchBean"%>

<%@ page import="com.mvc.dao.searchDao"%>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
                <title>search flight</title>
                <link rel="stylesheet" href="css/style.css">
                <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
                <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
                <link href="https://fonts.googleapis.com/css?family=Charm" rel="stylesheet">
                <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
                     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">           
</head>
<body>
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
                <h1>Air Go</h1>
                <div class="main-agileinfo">
                <div class="sap_tabs">                                  
                 <div id="horizontalTab">
                     <ul class="resp-tabs-list">
                                                                                
                       <li class="resp-tab-item"><span>Search Flight</span></li>
                                                                                                                                
                         </ul>     
                          <div class="clearfix"> </div>       
                            <div class="resp-tabs-container">
                                                                                
                              <div class="tab-1 resp-tab-content oneway">
                               <form action="scheduleflight.jsp">
                               <div class="from">
                                  <h3>From</h3>
                                   <!--<input type="text" name="city" class="city1" placeholder="Type Departure City" required="">-->
                                                                                                                                <select name="leaving_from">
                                                                                                                                      <%
                                                                                                                                searchDao srchDao = new searchDao();
                                                                                                                                List ob= srchDao.fetchData();
                                                                                                                                Iterator it=ob.iterator();
                                                                                                                                while(it.hasNext())
                                                                                                                                {
                                                                                                                                %>
                                                                                                                                <option> <%=it.next() %></option><%} %>
                                                                                                                                      </select>

                                                                                                                </div>
                                                                                                                <div class="to">
                                                                                                                                <h3>To</h3>
                                                                                                                                <!--<input type="text" name="city" class="city2" placeholder="Type Destination City" required="">-->
                                                                                                                                <select id="going_to" name="going_to">
                                                                                                                                         <%
                                                                                                                                searchDao srch1Dao = new searchDao();
                                                                                                                                List ob1= srch1Dao.fetchData1();
                                                                                                                                Iterator it1=ob1.iterator();
                                                                                                                                while(it1.hasNext())
                                                                                                                                {
                                                                                                                                %>
                                                                                                                                <option> <%=it1.next() %></option><%} %>
                                                                                                                                    </select>

                                                                                                                </div>
                                                                                                                <div class="clear"></div>
                                                                                                                <div class="date">
                                                                                                                                <div class="depart">
                                                                                                                                                <h3>Depart Date</h3>
                                                                                                                                                <input class="date" id="datepicker2" name="trip-start" type="Text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
                                                                                                                                                                
                                                                                                                                </div>
                                                                                                                </div>
                                                                                                                <div class="time">
                                                                                                                                <div class="depart">
                                                                                                                                                <h3>Depart Time</h3>
                                                                                                                                                
                                                                                                                                                  <input class="time" type="time" name="Text" style="width: 100%; padding-top: 7px; padding-bottom: 7px; font-family: 'Montserrat', sans-serif; font-size: 15px;">
                                                                                                                                                
                                                                                                                                </div>
                                                                                                                </div>
                                                                                                                <div class="clear"></div>
                                                                                                                <div class="numofppl">
                                                                                                                                <div class="adults">
                                                                                                                                                <h3>Seats</h3>
                                                                                                                                                <div class="quantity"> 
                                                                                                                                                                <div class="quantity-select">                           
                                                                                                                                                                                <div class="entry value-minus">&nbsp;</div>
                                                                                                                                                                                <div class="entry value"><span>1</span></div>
                                                                                                                                                                                <div class="entry value-plus active">&nbsp;</div>
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                </div>
                                                                                                                                
                                                                                                                                <div class="clear"></div>
                                                                                                                </div>
                                                                                                                <div class="clear"></div>
                                                                                                                <input type="submit" value="Show Flights">
                                                                                                                <br>
                                                                                                                <div class="detail" style="font-size:16px ;margin: 10px; 
                                                                                                                background-color:  #bfbfbf;
                                                                                                                border-radius: 3px; font-family: 'Montserrat', sans-serif"; padding : 5px;>
                                                                                                                <%  
                                                                                                  List<searchBean> list1= (List<searchBean> )request.getAttribute("list1");
                                                                                                   if(list1==null)
                                                                                                   {
                                                                                                %>

                                                                                                <h2> <center>No Record Found</center></h2>
                                                                                                <% }
                                                                                                   else {
                                                                                                                    out.println("<table border='1' align='center' size='5' widht='100%'");
                                                                                                                    		  
                                                                                                                    out.println("<th>");
                                                                                                                    
                                                                                                                    out.println("<td><b>Flight number</bold></td>");
                                                                                                                    out.println("<td><strong>Flight name</strong></td>");
                                                                                                                     out.println("<td><strong>Leaving from</strong></td>");
                                                                                                                     out.println("<td><strong>Going to</strong></td>");
                                                                                                                    out.println("<td><strong>Departure date</strong></td>");
                                                                                                                    out.println("<td><strong>Departure time</strong></td>");
                                                                                                                    out.println("<td><strong>No of seats</strong></td>");
                                                                                                                    out.println("<td><strong>Fare</strong></td>");
                                                                                                                    out.println("<td></td>");
                                                                                                                    out.println("</th>");
                                                                                                                   for(searchBean s:list1 ){
                                                                                                   
																													

                                                                                                                	   out.println("<tr>");
                                                                                                                	  
                                                                                                                	   out.println("<td>"+s.getFlight_number()+"</td>");
                                                                                                out.println("<td>"+s.getFlight_name()+"</td>");
                                                                                               out.println("<td>"+s.getLeaving_from()+"</td>");
                                                                                                out.println("<td>"+s.getGoing_to()+"</td>");
                                                                                               out.println("<td>"+s.getDeparture_date()+"</td>");
                                                                                                out.println("<td>"+s.getDeparture_time()+"</td>");
                                                                                                out.println("<td>"+s.getNo_of_seats()+"</td>");
                                                                                                out.println("<td>"+s.getFare()+"</td>");
                                                                                                out.println("<td><a href='booking.jsp'>Book</a></td>");
                                                                                                    out.println("</tr>");
                                                                                                  %>       
                                                                                                <%  
                                                                                                }
                                                                                                   out.println("</table>");
                                                                                                }
                                                                                                   
                                                                                                   %>
                                                                                                </div>
                                                                                                </form>               
                                                                                                                                
                                                                                </div>
                                                                                
                                                                </div>                                                                                   
                                                </div>
                                </div>
                </div>
                
                                <script src="js/jquery.min.js"> </script>
                                <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                                <script type="text/javascript">
                                                $(document).ready(function () {
                                                                $('#horizontalTab').easyResponsiveTabs({
                                                                                type: 'default', //Types: default, vertical, accordion           
                                                                                width: 'auto', //auto or any width like 600px
                                                                                fit: true   // 100% fit in a container
                                                                });
                                                });                           
                                </script>
                                <!--//script for portfolio-->
                                                                <!-- Calendar -->
                                                                <link rel="stylesheet" href="css/jquery-ui.css" />
                                                                <script src="js/jquery-ui.js"></script>
                                                                  <script>
                                                                                                  $(function() {
                                                                                                                $( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
                                                                                                  });
                                                                  </script>
                                                <!-- //Calendar -->
                                                <!--quantity-->
                                                                                                                                                <script>
                                                                                                                                                $('.value-plus').on('click', function(){
                                                                                                                                                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
                                                                                                                                                                divUpd.text(newVal);
                                                                                                                                                });

                                                                                                                                                $('.value-minus').on('click', function(){
                                                                                                                                                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
                                                                                                                                                                if(newVal>=1) divUpd.text(newVal);
                                                                                                                                                });
                                                                                                                                                </script>
                                                                                                                                <!--//quantity-->
<script type="text/javascript">
  $(function() {
    $('#datetimepicker3').datetimepicker({
      pickDate: false
    });
  });
</script>



</body>
</html>
