
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">
                           <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                            <h4>Admin Login</h4>
                        </div>
                        <div class="card-body">
                            <form action="a.jsp" method="post">
                                <div class="form-group">
                                    <label>Enter Your  Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="admin_email" >
                                </div>
                                <div class="form-group">
                                    <label>Enter Password </label>
                                    <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="admin_password">
                                </div>
                               
                                <button type="submit" class="btn btn-primary badge-pill btn-block"> Admin Login</button>
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
