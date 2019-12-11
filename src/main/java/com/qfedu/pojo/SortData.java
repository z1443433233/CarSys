package com.qfedu.pojo;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/12 20:22
 */

public class SortData {
    private int getStopCityId;

    private int backStopCityId;

    private int carId;

    private String type;

    public SortData() {
    }

    public SortData(int getStopCityId, int backStopCityId, int carId, String type) {
        this.getStopCityId = getStopCityId;
        this.backStopCityId = backStopCityId;
        this.carId = carId;
        this.type = type;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getGetStopCityId() {
        return getStopCityId;
    }

    public void setGetStopCityId(int getStopCityId) {
        this.getStopCityId = getStopCityId;
    }

    public int getBackStopCityId() {
        return backStopCityId;
    }

    public void setBackStopCityId(int backStopCityId) {
        this.backStopCityId = backStopCityId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "SortData{" +
                "getStopCityId=" + getStopCityId +
                ", backStopCityId=" + backStopCityId +
                ", carId=" + carId +
                ", type='" + type + '\'' +
                '}';
    }
}
