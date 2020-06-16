package com.qfedu.pojo;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/11 11:23
 */

public class Car {
    private int id;

    // 汽车Id
    private int carId;

    // 汽车名字
    private String carName;

    // 汽车类型
    private String carType;

    // 汽车座位数
    private int carSitnum;

    // 所属车点Id
    private int cityId;

    // 租车价格
    private double carPrice;

    // 汽车数量
    private int carNumber;

    // 汽车图片地址
    private String carPicture;

    public Car() {
    }

    public Car(int id, int carId, String carName, String carType, int carSitnum, int cityId, double carPrice, int carNumber, String carPicture) {
        this.id = id;
        this.carId = carId;
        this.carName = carName;
        this.carType = carType;
        this.carSitnum = carSitnum;
        this.cityId = cityId;
        this.carPrice = carPrice;
        this.carNumber = carNumber;
        this.carPicture = carPicture;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", carId=" + carId +
                ", carName='" + carName + '\'' +
                ", carType='" + carType + '\'' +
                ", carSitnum=" + carSitnum +
                ", cityId=" + cityId +
                ", carPrice=" + carPrice +
                ", carNumber=" + carNumber +
                ", carPicture='" + carPicture + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public int getCarSitnum() {
        return carSitnum;
    }

    public void setCarSitnum(int carSitnum) {
        this.carSitnum = carSitnum;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
    }

    public int getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(int carNumber) {
        this.carNumber = carNumber;
    }

    public String getCarPicture() {
        return carPicture;
    }

    public void setCarPicture(String carPicture) {
        this.carPicture = carPicture;
    }
}
