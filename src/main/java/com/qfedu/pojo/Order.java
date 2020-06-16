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

    // 客户预定日期
    private String reserveDate;

    // 客户还车日期
    private String returnDate;

    // 订单处理日期
    private String disposeDate;


    public Order() {
    }


    public Order(int userId, List<Car> cars, int orderId, int cId, String carName, double oPrice, int getId, String getCityName, int backId, String backCityName, String status, String reserveDate, String returnDate, String disposeDate) {
        this.userId = userId;
        this.cars = cars;
        this.orderId = orderId;
        this.cId = cId;
        this.carName = carName;
        this.oPrice = oPrice;
        this.getId = getId;
        this.getCityName = getCityName;
        this.backId = backId;
        this.backCityName = backCityName;
        this.status = status;
        this.reserveDate = reserveDate;
        this.returnDate = returnDate;
        this.disposeDate = disposeDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<Car> getCars() {
        return cars;
    }

    public void setCars(List<Car> cars) {
        this.cars = cars;
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

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
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

    public String getGetCityName() {
        return getCityName;
    }

    public void setGetCityName(String getCityName) {
        this.getCityName = getCityName;
    }

    public int getBackId() {
        return backId;
    }

    public void setBackId(int backId) {
        this.backId = backId;
    }

    public String getBackCityName() {
        return backCityName;
    }

    public void setBackCityName(String backCityName) {
        this.backCityName = backCityName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReserveDate() {
        return reserveDate;
    }

    public void setReserveDate(String reserveDate) {
        this.reserveDate = reserveDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    public String getDisposeDate() {
        return disposeDate;
    }

    public void setDisposeDate(String disposeDate) {
        this.disposeDate = disposeDate;
    }
}
