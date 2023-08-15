package com.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
 import java.sql.Timestamp;

public class PostDAO {

    private Connection conn;

    public PostDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean AddNotes(String ti, String co, int ui) {
        boolean f = false;
        try {
            String qu = "insert into post(Title,content,uid) values(?,?,?)";
            PreparedStatement ps = conn.prepareStatement(qu);
            ps.setString(1, ti);
            ps.setString(2, co);
            ps.setInt(3, ui);

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
        }
        return f;
    }

    public List<post> getData(int id) {
        List<post> list = new ArrayList<post>();
        
        try {
            String qu = "SELECT * FROM post where uid=? order by id DESC";
            PreparedStatement ps = conn.prepareStatement(qu);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
             post po= new post();
                po.setId(rs.getInt("id"));
                po.setTitle(rs.getString("Title"));
                po.setContent(rs.getString("content"));
                po.setPdate(rs.getTimestamp("date"));
                list.add(po);

            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return list;
    }
    public post getDataById(int noteId){
        post p=null;
        try {
          String qu = "SELECT * FROM post where id=?";
          PreparedStatement ps = conn.prepareStatement(qu);
            ps.setInt(1, noteId);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                p=new post();
                p.setId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setContent(rs.getString(3));
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return p;
    }
    public boolean PostUpdate(int nid,String ti, String co){
        boolean f=false;
        
        try {
        String qu="update post set Title=?,content=? where id=?";
        PreparedStatement ps = conn.prepareStatement(qu);
        ps.setString(1, ti);
        ps.setString(2, co);
        ps.setInt(3, nid);
      int i=  ps.executeUpdate();
        if(i==1){
            f=true;
        }
        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public boolean  DeleteNotes(int nid){
        boolean f=false;
        try {
            String qu="delete from post where id=?";
            PreparedStatement ps = conn.prepareStatement(qu);
        ps.setInt(1, nid);
       int x= ps.executeUpdate();
       if(x==1){
           f=true;
       }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
        
    }
}
