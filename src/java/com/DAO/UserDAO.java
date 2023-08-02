
package com.DAO;
import java.sql.*;

public class UserDAO {

    private Connection conn;

    public UserDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean AddUser(UserDetails ud) {
        boolean f = false;
        try {
            String query = "insert into user_detail(Fullname,email,password) values(?,?,?)";
            java.sql.PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, ud.getName());
             pst.setString(2, ud.getEmail());
              pst.setString(3, ud.getPassword());
                    int i=   pst.executeUpdate();
                      if(i==1){
                          f=true;
                      }
        } catch (Exception ex) {
            System.out.println(ex);
            ex.printStackTrace();
            
        }
        return f;
    }
public UserDetails loginUser(UserDetails us)
{
   UserDetails user=null;
    try {
        String query="SELECT * FROM user_detail WHERE email=? and password=?";
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1, us.getEmail());
        ps.setString(2, us.getPassword());
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            user =new UserDetails();
            user.setId(rs.getInt("Id"));
            user.setName(rs.getString("Fullname"));
            user.setEmail(rs.getString("email"));
            user.setPassword("password");
        }
       
    } catch (Exception e) {
        e.printStackTrace();
    }
    
        
    return user;
}
}