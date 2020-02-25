package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class RegisterDao {

	
	
	public String registerUser(RegisterBean registerBean) {
		String fullName = registerBean.getFullName();
		String email = registerBean.getEmail();
		String userName = registerBean.getUserName();
		String password = registerBean.getPassword();
		String cname = registerBean.getCountry();

		Connection con = null;
		PreparedStatement preparedStatement = null;

		try {
			con = DBConnection.createConnection();
			String query = "insert into users(SlNo,fullName,Email,userName,password,country) values (NULL,?,?,?,?,?)"; // Insert
			preparedStatement = con.prepareStatement(query); // Making use of
																// prepared
																// statements
																// here to
																// insert bunch
																// of data
			preparedStatement.setString(1, fullName);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(4, password);
			preparedStatement.setString(5, cname);

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

	public List fetchData()

	{

		Connection con = null;
		PreparedStatement preparedStatement = null;
		List ob = new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			PreparedStatement ps = con
					.prepareStatement("select cntry_name from country");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ob.add(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ob;
	}

}