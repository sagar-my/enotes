
<%@page import="com.DAO.post"%>
<%@page import="com.DAO.Dbconnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%
    UserDetails user4 = (UserDetails) session.getAttribute("userD");
    if (user4 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("Login-error", "Please Login....");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Notes</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>

        <%
            Integer noteid = Integer.parseInt(request.getParameter("note_id"));
            PostDAO post = new PostDAO(Dbconnect.getconn());
            post p = post.getDataById(noteid);
        %>
        <div class="container-fluid">
            <%@include file="all_component/navbar.jsp" %>
            <h1 class="text-center">Add Your Notes</h1>

            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="NotesEditServlet" method="post">

                            <input type="hidden" value="<%=noteid%>" name="noteid">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Title</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required="required"
                                       value="<%=p.getTitle()%>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Content</label>
                                <textarea rows="9" cols="" class="form-control" name="content" required="required"><%=p.getContent()%></textarea>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Add Notes</button>
                            </div>
                        </form>

                    </div>

                </div>

            </div>
        </div>
        <%@include file="all_component/footer.jsp"%>
    </body>
</html>
