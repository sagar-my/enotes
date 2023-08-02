package com.DAO;
import java.sql.*;

public class Dbconnect {
    private static Connection conn;
    public static Connection getconn(){
       try{
            if(conn==null){
            Class.forName("com.mysql.jdbc.Driver");
           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","");
        }
       }
        catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
}