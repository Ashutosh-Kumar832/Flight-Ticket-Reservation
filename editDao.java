
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

public class editDao {
	Connection con = null;
	PreparedStatement preparedStatement = null;
	ResultSet rs;
	List<String> list1;
	
	public List<String> showList(int id) throws SQLException{
		con = DBConnection.createConnection();
		String query ="select * from register_customer where reg_id=?";
																																				// user
		preparedStatement = con.prepareStatement(query); // Making use of
		preparedStatement.setInt(1, id);
        rs=preparedStatement.executeQuery();
  
		list1=new ArrayList<>();
		
		while(rs.next()){
        list1.add(rs.getString(1));
        list1.add(rs.getString(2));
        list1.add(rs.getString(3));
        list1.add(rs.getString(4));
        list1.add(rs.getString(5));
        list1.add(rs.getString(6));
        list1.add(rs.getString(7));
        list1.add(rs.getString(8));
        list1.add(rs.getString(9));
        list1.add(rs.getString(10));
		}
		
		return list1;
	}
	
	
	public String regUser(regBean regBean) {
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

		try {
			con = DBConnection.createConnection();
			String query ="update register_customer set name=?,email=?,address=?,phone=?,birth_date=?,gender=?,ssn_type=?,ssn=?,psw=? where  reg_id= ?";
																																					// user
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