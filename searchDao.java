package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.searchBean;
import com.mvc.util.DBConnection;

public class searchDao {
	List<searchBean> list;
	public List<searchBean> CheckLogin(searchBean  sbean) throws SQLException {
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet rs;
		
		con = DBConnection.createConnection();
		preparedStatement = con
				.prepareStatement("select * from flight_details where leaving_from=? and going_to=?");

		preparedStatement.setString(1, sbean.getLeaving_from());
		preparedStatement.setString(2, sbean.getGoing_to());

		rs=preparedStatement.executeQuery();
       list=null;
       list=new ArrayList<>();
       searchBean bean1;
		while(rs.next())
		{
			bean1=null;
			bean1=new searchBean();
			bean1.setFlight_number(rs.getString(1));
			bean1.setFlight_name(rs.getString(2));
			bean1.setLeaving_from(rs.getString(3));
			bean1.setGoing_to(rs.getString(4));
			bean1.setDeparture_date(rs.getDate(5));
			bean1.setDeparture_time(rs.getTime(6));
			bean1.setNo_of_seats(rs.getInt(7));
			bean1.setFare(rs.getFloat(8));
			
			bean1.getFlight_name();
			//.getFlight_number();
			
			
			list.add(bean1);			
		}
		return list;
	}
	public List fetchData()
	{
		Connection con = null;
		PreparedStatement preparedStatement = null;
		List ob = new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			PreparedStatement ps = con
					.prepareStatement("select leaving_from from flight_details");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ob.add(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ob;
	}
	public List fetchData1()

	{

		Connection con = null;
		PreparedStatement preparedStatement = null;
		List ob = new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			PreparedStatement ps = con
					.prepareStatement("select going_to from flight_details");

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
