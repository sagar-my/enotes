package com.DAO;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

public class Userservlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse res)
    {
        try {
             String name=req.getParameter("fullname");
    String email=req.getParameter("user_email");
    String Password=req.getParameter("user_password");
        UserDetails ud= new UserDetails();
        ud.setName(name);
        ud.setEmail(email);
        ud.setPassword(Password);
        
        UserDAO dao=new UserDAO(Dbconnect.getconn());
        boolean f=dao.AddUser(ud);
  HttpSession session;
    if(f){
        session=req.getSession();
        session.setAttribute("reg-sucess", "Registration Sucessfully");
        res.sendRedirect("register.jsp");
    }
    else{
        session=req.getSession();
        session.setAttribute("failed-msg", "Something went wrong on server");
        res.sendRedirect("register.jsp");
    }
        } catch (Exception e) {
            
            
        }
   
    }
}