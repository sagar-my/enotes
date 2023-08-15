
<%@page import="java.util.List"%>
<%--<%@page import="com.DAO.post"%>
<%@page import="com.DAO.Dbconnect"%>--%>
<%@page import="com.DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user3 = (UserDetails) session.getAttribute("userD");
    try {

        if (user3 == null) {
            response.sendRedirect("login.jsp");
            session.setAttribute("Login-error", "Please Login....");
        }
    } catch (Exception ett) {

    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Notes</title>
        <%@include file="all_component/allcss.jsp"%>
        <style type="text/css">
            .back-img{
                background-color: #E0E0E0; 
                width: 100%;
                height: 80vh;
                background-size: cover;
            }
            .br{
                border-radius: 13px;
            }

        </style>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <%            String msg = (String) session.getAttribute("updateMsg");
            if (msg != null) {
        %>
        <div class="alert alert-success" role="alert"><%=msg%></div>
        <%
                session.removeAttribute("updateMsg");
            }
        %>


        <%
            String wrongmsg = (String) session.getAttribute("wrongmsg");
            if (wrongmsg != null) {
        %>
        <div class="alert alert-danger" role="alert"><%=wrongmsg%></div>
        <%
                session.removeAttribute("wrongmsg");
            }
        %>
        <div class="container-fluid bg-light">
            <h2 class="text-center">All Notes:</h2>
            <div class="row">
                <div class="col-md-12">

                    <%
                        if (user3 != null) {
                            PostDAO ob = new PostDAO(Dbconnect.getconn());
                            List<post> post1 = ob.getData(user3.getId());
                            for (post po : post1) {%>

                    <div class="card back-img  mt-3">

                        <img alt="" src="img/r.jpg" class="card-img-top mt-2 br mx-auto" style="max-width: 100px;">
                        <div class="card-body p-4">
                            <h5 class="card-title"><%= po.getTitle()%>
                            </h5>
                            <p class="text-dark"><%= po.getContent()%></p>
                            <p>
                                <b class="text-info"> Published By: <%= user3.getName()%> </b></br> <b class="text-info"></b>
                            </p>
                            <p>
                                <b class="text-dark"> Published Date: <%= po.getPdate()%> </b></br> <b class="text-success"></b>
                            </p>
                            <div class="container text-center mt-2">
                                <a href="deleteServlet?note_id=<%=po.getId()%>"class="btn btn-danger">Delete</a>


                                <a href="edit.jsp?note_id=<%=po.getId()%>"class="btn btn-primary">Edit</a>
                            </div>
                        </div>
                    </div>


                    <%}
                        }

                    %>

                </div>

            </div>
        </div>
    </body>
</html>
