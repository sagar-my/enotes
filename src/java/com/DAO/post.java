
package com.DAO;

import java.sql.Date;
 import java.sql.Timestamp;
public class post {
    private int id;
    private String title;
    private String content;
    private Timestamp pdate;
    private UserDetails User;

    public post(int id, String title, String content, Date pdate, UserDetails User) {
        super();
        this.id = id;
        this.title = title;
        this.content = content;
        
        this.User = User;
    }
    public post(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getPdate() {
        return pdate;
    }

    public void setPdate(Timestamp pdate) {
        this.pdate = pdate;
    }

    
    

    public UserDetails getUser() {
        return User;
    }

    public void setUser(UserDetails User) {
        this.User = User;
    }
    
}
