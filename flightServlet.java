package com.mvc.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 



import javax.servlet.http.HttpSession;

import com.mvc.bean.RegisterBean;
import com.mvc.bean.flightBean;
import com.mvc.dao.RegisterDao;
import com.mvc.dao.flightDao;

@WebServlet("/flightServlet")
public class flightServlet extends HttpServlet {
 
 public flightServlet() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 //Copying all the input parameters in to local variables
HttpSession h1 = request.getSession();
HttpSession h2 = request.getSession();
HttpSession h3 = request.getSession();
HttpSession h4 = request.getSession();
HttpSession h5 = request.getSession();
HttpSession h6 = request.getSession();
HttpSession h7 = request.getSession();
HttpSession h8 = request.getSession();
//HttpSession h2 = request.getSession();
//HttpSession httpSession1 = request.getSession();
 String flight_number = request.getParameter("flight_number");
 String flight_franchise = request.getParameter("flight_franchise");
 String from_location = request.getParameter("from_location");
 String to_location = request.getParameter("to_location");
 String start_time = request.getParameter("start_time");
String end_time = request.getParameter("end_time");
String fare = request.getParameter("fare");
int random = (int )(Math. random() * 50 + 1);
String book_id = Integer.toString(random);
 flightBean fBean = new flightBean();
 //Using Java Beans - An easiest way to play with group of related data
 fBean.setFlight_number(flight_number);
 fBean.setFlight_Franchise(flight_franchise);
 fBean.setFrom_location(from_location);
 fBean.setTo_location(to_location);
 fBean.setStart_time(start_time); 
 fBean.setEnd_time(end_time); 
 fBean.setFare(fare); 
 h1.setAttribute("Flight_Number", flight_number);
 h2.setAttribute("Flight_Franchise", request.getParameter("flight_franchise"));
 h3.setAttribute("From_Location", from_location);
 h4.setAttribute("To_Location", to_location);
 h5.setAttribute("Start_Time", start_time);
 h6.setAttribute("End_Time", end_time);
 h7.setAttribute("Fare", fare);
 h8.setAttribute("Booking_Id", book_id);
 flightDao fDao = new flightDao();
 
 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
 String flightRegistered = fDao.flightUser(fBean);
 
 if(flightRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
 {
 request.getRequestDispatcher("/payment.jsp").forward(request, response);
 }
 else   //On Failure, display a meaningful message to the User.
 {
 request.setAttribute("errMessage", flightRegistered);
 request.getRequestDispatcher("/booking.jsp").forward(request, response);
 }
 }
}