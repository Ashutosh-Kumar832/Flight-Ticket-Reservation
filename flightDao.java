package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import com.mvc.bean.RegisterBean;
import com.mvc.bean.flightBean;
import com.mvc.bean.regBean;
import com.mvc.util.DBConnection;
 
public class flightDao {
 
 public String flightUser(flightBean flightBean)
 {

	String Flight_number= flightBean.getFlight_number();
	String Flight_franchise= flightBean.getFlight_Franchise();
	String From_loction =flightBean.getFrom_location();
	String To_loction =flightBean.getTo_location();
        String Start_time = flightBean.getStart_time();
        String End_time = flightBean.getEnd_time();
        String Fare =flightBean.getFare();
	 
//int i=0;
 Connection con = null;
 PreparedStatement preparedStatement = null;


 try
 {
 con = DBConnection.createConnection();
 //String query = "insert into users(SlNo,fullName,Email,userName,password,country) values (NULL,?,?,?,?,?)"; // Insert
	
	 String query = "insert into flightBooking (flight_number,flight_franchise,from_loction,to_loction,start_time,end_time,fare) values(?,?,?,?,?,?,?)";
	 preparedStatement = con.prepareStatement(query);
	 preparedStatement.setString(1, Flight_number);
		preparedStatement.setString(2, Flight_franchise);
		preparedStatement.setString(3, From_loction);
		preparedStatement.setString(4, To_loction);
		preparedStatement.setString(5, Start_time);
		preparedStatement.setString(6, End_time);
		preparedStatement.setString(7, Fare);
		

		int i = preparedStatement.executeUpdate();

		if (i != 0) // Just to ensure data has been inserted into the
					// database
			return "SUCCESS";
	} catch (SQLException e) {
		e.printStackTrace();
	}

	return "Oops.. Something went wrong there..!"; // On failure, send a
													// message from here.
}
}

