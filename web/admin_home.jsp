

<%@page import="com.DAO.UserDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
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

        </nav>
        <div class="container-fluid pb-2">

           
            
            <div class="card bg-light pt-4 py-3">
                <div class="card-body text-center">

                    <h1>
                        Welcome....! Admin...
                    </h1>

                </div>
                <div>
                   
               
                            <h3>Details of Users</h3>
                            <div class="container-fluid text-center">
                                <table class="table table-striped mt-4">
                                    <thead class="bg-dark text-white">
                                        <tr>
                                            <th scope="col">User_Id</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Email</th>
                                            
                                        </tr>
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","");

PreparedStatement pst=con.prepareStatement("select * from user_detail");


ResultSet rs=pst.executeQuery();
while(rs.next())
{
out.print("<tr>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("</tr>");
}
                                            %>
                                        
                                    </thead>
                                </table>
                                
                            </div>             

                        </div> 
                    </div>

                </div>

            </div>
            <%@include file="all_component/footer.jsp"%>



        </div>


    </body>
</html>
