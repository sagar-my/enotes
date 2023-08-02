package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session=request.getSession();
            session.removeAttribute("userD");
            
            HttpSession session2=request.getSession();
            session.setAttribute("logoutmsg", "Logout Successfully...");
            response.sendRedirect("login.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
