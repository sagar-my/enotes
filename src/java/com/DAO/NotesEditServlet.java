package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NotesEditServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Integer noteid = Integer.parseInt(request.getParameter("noteid"));
            String Title = request.getParameter("title");
            String Content = request.getParameter("content");
PostDAO dao=new PostDAO(Dbconnect.getconn());
boolean f=dao.PostUpdate(noteid, Title, Content);

if(f){
//    System.out.println("data udate Successfully");
    HttpSession session=request.getSession();
    session.setAttribute("updateMsg", "Notes Update Successfully");
    response.sendRedirect("ShowNotes.jsp");
}
else{
    System.out.println("data not update");
}
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
    }
}
