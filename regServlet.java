package com.mvc.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.RegisterBean;
import com.mvc.bean.regBean;
import com.mvc.dao.RegisterDao;
import com.mvc.dao.regDao;

@WebServlet("/regServlet")
public class regServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Copying all the input parameters in to local variables
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String birth_date = request.getParameter("birth_date");
		String gender = request.getParameter("gender");
		String ssn_type = request.getParameter("ssn_type");
		String ssn = request.getParameter("ssn");
		String psw = request.getParameter("psw");

		regBean regBean = new regBean();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date bd = null;
		try {
			bd = sd.parse(birth_date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Using Java Beans - An easiest way to play with group of related data
		regBean.setName(name);
		regBean.setEmail(email);
		regBean.setAddress(address);
		regBean.setPhone(phone);
		regBean.setBirth_date(bd);
		regBean.setGender(gender);
		regBean.setSsn_type(ssn_type);
		regBean.setSsn(ssn);
		regBean.setPsw(psw);

		regDao regDao = new regDao();

		// The core Logic of the Registration application is present here. We
		// are going to insert user data in to the database.
		boolean userRegistered = regDao.regUser(regBean);
		
		//System.out.println("target is "+userRegistered);

		if (userRegistered) // On success, you can display a
												// message to user on Home page
		{
			//System.out.println("succcess called ..............");
			request.getRequestDispatcher("login.jsp")
					.forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("errMessage", "user already present");
			request.getRequestDispatcher("register.jsp").forward(request,
					response);
		}
	}
}