package com.qfedu.pojo;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/11 11:35
 */

public class City {
    // 城市Id
    private int cityId;

    // 城市名字
    private String cityName;

    // 父Id
    private int pid;

    public City() {
    }

    public City(int cityId, String cityName, int pid) {
        this.cityId = cityId;
        this.cityName = cityName;
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "City{" +
                "cityId=" + cityId +
                ", cityName='" + cityName + '\'' +
                ", pid=" + pid +
                '}';
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
}
