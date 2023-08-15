
package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class deleteServlet extends HttpServlet {

  
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Integer noteid = Integer.parseInt(request.getParameter("note_id"));
       PostDAO dao=new PostDAO(Dbconnect.getconn());
      boolean f= dao.DeleteNotes(noteid);
      HttpSession session=null;
      
      if(f){
          session=request.getSession();
          session.setAttribute("updateMsg", "Note Delete Successfully...");
          response.sendRedirect("ShowNotes.jsp");
      }
      else{
               session=request.getSession();
               session.setAttribute("wrongmsg", "Something went wrong on server");
               response.sendRedirect("ShowNotes.jsp");
            }
    }

  

   

}
