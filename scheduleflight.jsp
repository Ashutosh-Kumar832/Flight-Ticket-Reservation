<%@page import="java.util.List"%>
<%@page import="com.mvc.bean.searchBean"%>
<%@page import="com.mvc.dao.searchDao"%>
<%  
String goingto=request.getParameter("going_to");
String leavingfrom=request.getParameter("leaving_from");
searchDao dao=new searchDao();

searchBean sbean=new searchBean();
sbean.setGoing_to(goingto);
sbean.setLeaving_from(leavingfrom);

List<searchBean> list1=dao.CheckLogin(sbean);

request.setAttribute("list1",list1);

request.getRequestDispatcher("searchflight.jsp").forward(request,response);

%>