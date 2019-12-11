package com.qfedu.pojo;

import java.util.List;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/11 10:37
 */

public class Order {
    // 用户ID
    private int userId;

    private List<Car> cars;

    // 订单Id
    private int orderId;

    // 汽车Id
    private int cId;
    private String carName;

    // 订单金额
    private double oPrice;

    // 取车地点
    private int getId;
    private String getCityName;

    // 还车地点
    private int backId;
    private String backCityName;

    // 订单状况
    private String status;


    public Order() {
    }


    public Order(int userId, int orderId, int cId, String carName, double oPrice, int getId, String getCityName, int backId, String backCityName, String status) {
        this.userId = userId;
        this.orderId = orderId;
        this.cId = cId;
        this.carName = carName;
        this.oPrice = oPrice;
        this.getId = getId;
        this.getCityName = getCityName;
        this.backId = backId;
        this.backCityName = backCityName;
        this.status = status;
    }

    public Order(int userId, int cId, double oPrice, int getId, int backId, String status) {
        this.userId = userId;
        this.cId = cId;
        this.oPrice = oPrice;
        this.getId = getId;
        this.backId = backId;
        this.status = status;
    }


    public List<Car> getCars() {
        return cars;
    }

    public void setCars(List<Car> cars) {
        this.cars = cars;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getGetCityName() {
        return getCityName;
    }

    public void setGetCityName(String getCityName) {
        this.getCityName = getCityName;
    }

    public String getBackCityName() {
        return backCityName;
    }

    public void setBackCityName(String backCityName) {
        this.backCityName = backCityName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public double getoPrice() {
        return oPrice;
    }

    public void setoPrice(double oPrice) {
        this.oPrice = oPrice;
    }

    public int getGetId() {
        return getId;
    }

    public void setGetId(int getId) {
        this.getId = getId;
    }

    public int getBackId() {
        return backId;
    }

    public void setBackId(int backId) {
        this.backId = backId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
