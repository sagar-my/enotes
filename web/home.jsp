
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user2 = (UserDetails) session.getAttribute("userD");
    if (user2 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("Login-error", "Please Login....");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page </title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>

        <div class="container-fluid pb-2">
            <%@include file="all_component/navbar.jsp" %>
            <div class="card bg-light pt-4 py-3">
                <div class="card-body text-center">
                    <img alt="" src="img/r.jpg" class="img-fluid mx-auto" style="max-width: 300px;">
                    <h1>
                        START TAKING YOUR NOTES
                    </h1>
                    <a href="addNotes.jsp" class="btn btn-outline-primary">Start here</a> 
                </div>

            </div>

        </div>
        <%@include file="all_component/footer.jsp"%>
    </body>
</html>
