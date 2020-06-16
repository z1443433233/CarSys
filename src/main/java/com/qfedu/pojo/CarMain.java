package com.qfedu.pojo;

public class CarMain {
    private int id;

    // 车型
    private String carName;

    // 所属车点
    private String cityName;

    // 汽车类型
    private String carType;

    // 车车座位数
    private int carSitNum;

    // 汽车数量
    private int carNumber;

    // 租金/天
    private double carPrice;

    // 汽车图片地址
    private String carPicture;

    public CarMain() {
    }

    public CarMain(int id, String carName, String cityName, String carType, int carSitNum, int carNumber, double carPrice, String carPicture) {
        this.id = id;
        this.carName = carName;
        this.cityName = cityName;
        this.carType = carType;
        this.carSitNum = carSitNum;
        this.carNumber = carNumber;
        this.carPrice = carPrice;
        this.carPicture = carPicture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public int getCarSitNum() {
        return carSitNum;
    }

    public void setCarSitNum(int carSitNum) {
        this.carSitNum = carSitNum;
    }

    public int getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(int carNumber) {
        this.carNumber = carNumber;
    }

    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
    }

    public String getCarPicture() {
        return carPicture;
    }

    public void setCarPicture(String carPicture) {
        this.carPicture = carPicture;
    }
}
