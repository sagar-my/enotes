
<%@page import="com.DAO.admin"%>


<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import=" java.sql.Timestamp" %>
<%@page import="javax.servlet.ServletException" %>

<%@page import ="java.io.IOException" %>
<%@page import ="java.io.PrintWriter" %>
<%@page import ="javax.servlet.ServletException" %>

<%@page import ="javax.servlet.http.HttpServlet" %>
<%@page import =" javax.servlet.http.HttpServletResponse" %>
<%@page import ="javax.servlet.http.HttpServletRequest" %>
<%@page import ="javax.servlet.http.HttpSession" %>
<%
String admin_email=request.getParameter("admin_email");
String admin_password=request.getParameter("admin_password");
//   admin ad=new admin();
//    ad.setEmail(admin_email);
//    ad.setPassword(admin_password);
    
    
  if(admin_email.equals("sagar.chaudhary25008@gmail.com")&& admin_password.equals("sagar@123")){
			 
			request.getRequestDispatcher("admin_home.jsp").include(request, response);
		}else{
			out.print("InValid Id or PAssword");
			
		}
		
   %>