

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
    <a class="navbar-brand" href="index.jsp"><i class="fa fa-book" aria-hidden="true"></i> E-Notes</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
            </li>
           
        </ul>
        
        


         <a href="home.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa fa-lock" aria-hidden="true"></i> Admin Logout</a>
        



    </div>
      

</nav>
    </body>
</html>
