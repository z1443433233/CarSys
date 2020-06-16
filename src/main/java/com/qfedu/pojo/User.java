package com.qfedu.pojo;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/9 10:04
 */

public class User {
    private int userId;

    private String tel;

    private String password;

    private String email;

    private String invitation;

    private int status;

    public User() {
    }

    public User(int userId, String tel, String password, String email, String invitation, int status) {
        this.userId = userId;
        this.tel = tel;
        this.password = password;
        this.email = email;
        this.invitation = invitation;
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInvitation() {
        return invitation;
    }

    public void setInvitation(String invitation) {
        this.invitation = invitation;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
