
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
                            <h4>Registration</h4>
                        </div>



                        <%
                            String regmsg = (String) session.getAttribute("reg-sucess");
                            if (regmsg != null) {%>
                        <div class="alert alert-success" role="alert">
                            <%= regmsg%> ,, Login<a href="login.jsp">Click Here</a>
                        </div>
                        <%
                        session.removeAttribute("reg-sucess");
                            }
                        %>


                        <%
                            String failedmsg = (String) session.getAttribute("failed-msg");
                            if (failedmsg != null) {%>
                        <div class="alert alert-danger" role="alert">
                            <%= failedmsg%>
                        </div>
                        <%
                         session.removeAttribute("failed-msg");
                            }
                        %>

                        <div class="card-body">
                            <form action="Userservlet" method="post">
                                <div class="form-group">
                                    <label>Enter Full Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="fullname" >
                                </div>
                                <div class="form-group">
                                    <label>Enter Email </label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user_email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"> Enter Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="user_password" >
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
                            </form> 
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="all_component/footer.jsp"%>
</body>
</html>
