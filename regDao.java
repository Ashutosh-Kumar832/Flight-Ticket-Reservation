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
import com.mvc.bean.regBean;
import com.mvc.util.DBConnection;

public class regDao {
	Connection con = null;
	PreparedStatement preparedStatement = null;
	ResultSet rs;

	public boolean CheckLogin(Login login) throws SQLException {

		con = DBConnection.createConnection();
		preparedStatement = con
				.prepareStatement("select * from register_customer where reg_id=? and psw=?");

		preparedStatement.setInt(1, login.getLogin());
		preparedStatement.setString(2, login.getPass());

		rs=preparedStatement.executeQuery();

		if(rs.next())
			return true;
		else 
			return false;
	}
	
	public List<Login> showList(){
		return null;
	}
	
	boolean reg_user=true;

	public boolean regUser(regBean regBean) {
		String name = regBean.getName();
		String email = regBean.getEmail();
		String address = regBean.getAddress();
		String phone = regBean.getPhone();
		java.util.Date birth_date1 = regBean.getBirth_date();

		Date birth_date = new Date(birth_date1.getTime());

		String gender = regBean.getGender();
		String ssn_type = regBean.getSsn_type();
		String ssn = regBean.getSsn();
		String psw = regBean.getPsw();
		con = DBConnection.createConnection();
		try {
			preparedStatement=con.prepareStatement("select * from register_customer where email=?");
			preparedStatement.setString(1, email);
			rs=preparedStatement.executeQuery();
			//System.out.println("email is "+email);
			if(rs.next()){
				System.out.println("false ........."); 
				reg_user=false;
			}
				// return "user name not exist";
			   //out.println("user name already exist");
			else{
         
			con = DBConnection.createConnection();
			String query = "insert into register_customer(name,email,address,phone,birth_date,gender,ssn_type,ssn,psw) values (?,?,?,?,?,?,?,?,?)"; // Insert
																						// user
																																					// into
			preparedStatement = con.prepareStatement(query); // Making use of
																// prepared
																// statements
																// here to
																// insert bunch
																// of data
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, address);
			preparedStatement.setString(4, phone);
			preparedStatement.setDate(5, birth_date);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, ssn_type);
			preparedStatement.setString(8, ssn);
			preparedStatement.setString(9, psw);

			int i = preparedStatement.executeUpdate();

			//if (i != 0) // Just to ensure data has been inserted into the
				// database
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return  reg_user;
														// message from here.
	}

}