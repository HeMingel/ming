package cn.ming.domain;

import java.io.Serializable;

/**
 * Created by Ming on 2017-5-4.
 */
public class User implements Serializable {
    private int id;
    private String username;
    private String password;
    private String nextUrl;


    public String getNextUrl() {
        return nextUrl;
    }

    public void setNexturl(String nextUrl) {
        this.nextUrl = nextUrl;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
