
package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Loginservlet extends HttpServlet {


  public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
    {
String email=request.getParameter("uemail");
String password=request.getParameter("upassword");
    UserDetails us=new UserDetails();
    us.setEmail(email);
    us.setPassword(password);
    
    UserDAO dao=new UserDAO(Dbconnect.getconn());
  UserDetails user= dao.loginUser(us);
   
   if(user!=null){
       HttpSession session=request.getSession();
       session.setAttribute("userD", user);
       response.sendRedirect("home.jsp");
   }
   else{
       HttpSession session=request.getSession();
       session.setAttribute("login-failed", "Invalid Username and password");
       response.sendRedirect("login.jsp");
   }
}
}
