
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i>

                            <h4>Login Page</h4>
                        </div>

                        <%                            String invalidmsg = (String) session.getAttribute("login-failed");
                            if (invalidmsg != null) {%>
                        <div class="alert alert-danger" role="alert">
                            <%=invalidmsg%>
                        </div>
                        <%
                                session.removeAttribute("login-failed");
                            }
                        %>
                        <%
                            String withoutLogin = (String) session.getAttribute("Login-error");
                            if (withoutLogin != null) {%>
                        <div class="alert alert-danger" role="alert">
                            <%=withoutLogin%>
                        </div>

                        <%
                                session.removeAttribute("Login-error");
                            }
                        %>
                        <%
                       String lgmsg= (String)session.getAttribute("logoutmsg");
                       if(lgmsg!=null)
                       {%>
                        <div class="alert alert-success" role="alert">
                            <%=lgmsg%>
                        </div>
                           
                       <%
                       session.removeAttribute("logoutmsg");
                       }
                        
                        %>
                        <div class="card-body">
                            <form action="Loginservlet" method="post">
                                <div class="form-group">
                                    <label>Enter Email </label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"> Enter Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="upassword" >
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
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

