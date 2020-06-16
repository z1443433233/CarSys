package com.qfedu.pojo;

public class UserDto {
    // 用户Id
    private int userId;

    // 用户电话
    private String tel;

    // 用户密码
    private String password;

    // 用户邮箱
    private String email;

    // 用户邀请码
    private String invitation;

    // 帐号状态
    private int status;

    // 用户总租车次数
    private int rentCarNum;

    // 用户总租车金额
    private double rentCarSumPrice;

    public UserDto() {
    }

    public UserDto(int userId, String tel, String password, String email, String invitation, int status, int rentCarNum, double rentCarSumPrice) {
        this.userId = userId;
        this.tel = tel;
        this.password = password;
        this.email = email;
        this.invitation = invitation;
        this.status = status;
        this.rentCarNum = rentCarNum;
        this.rentCarSumPrice = rentCarSumPrice;
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

    public int getRentCarNum() {
        return rentCarNum;
    }

    public void setRentCarNum(int rentCarNum) {
        this.rentCarNum = rentCarNum;
    }

    public double getRentCarSumPrice() {
        return rentCarSumPrice;
    }

    public void setRentCarSumPrice(double rentCarSumPrice) {
        this.rentCarSumPrice = rentCarSumPrice;
    }
}
