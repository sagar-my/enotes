

<%@page import="com.DAO.UserDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Notes  Page</title>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
            <a class="navbar-brand" href="index.jsp"><i class="fa fa-book" aria-hidden="true"></i> E-Notes</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

           

        </nav>
        <div class="container-fluid pb-2">

            <div class="card bg-light pt-4 py-3">
                <div class="card-body text-center">

                    <h1>
                       View All Notes......
                    </h1>

                </div>
                <div>
                  
                            <div class="container-fluid text-center">
                                <table class="table table-striped mt-4">
                                    <thead class="bg-dark text-white">
                                        <tr>
                                            
                                            
                                        </tr>
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","");

PreparedStatement pst=con.prepareStatement("select * from post");


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
