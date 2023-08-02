package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddnotesServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int uid=Integer.parseInt(request.getParameter("uid"));
String title=request.getParameter("title");
String content=request.getParameter("content");

PostDAO dao=new PostDAO(Dbconnect.getconn());
boolean f=dao.AddNotes(title, content, uid);
if(f){
    System.out.println("Data insert Successfully");
    response.sendRedirect("ShowNotes.jsp");
}
else{
    System.out.println("Data not insert Successfully");
}
    }
}
