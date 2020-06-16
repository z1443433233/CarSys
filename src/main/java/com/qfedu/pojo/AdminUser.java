package com.qfedu.pojo;

public class AdminUser {
    private int adminId;

    private String account;

    private String password;

    public AdminUser() {
    }

    public AdminUser(int adminId, String account, String password) {
        this.adminId = adminId;
        this.account = account;
        this.password = password;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
