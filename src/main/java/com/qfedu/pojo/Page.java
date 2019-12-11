package com.qfedu.pojo;

import java.util.List;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/9 10:16
 */

public class Page {

    private List<Order> result;

    private List<Car> cars;

    private List<City> cities;

    private int userId;

    // 总行数
    private int total;

    // 每页的第一条数据开始下标
    private int startIndex;

    // 每页容纳的行数
    private int pageSize;

    // 当前页数
    private int pageNum;

    // 最大页数
    private int pageMaxNum;

    public Page() {
    }

    public Page(int pageNum, int pageSize) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.startIndex = (this.pageNum - 1) * this.pageSize;
    }

    @Override
    public String toString() {
        return "Page{" +
                "result=" + result +
                ", cars=" + cars +
                ", cities=" + cities +
                ", userId=" + userId +
                ", total=" + total +
                ", startIndex=" + startIndex +
                ", pageSize=" + pageSize +
                ", pageNum=" + pageNum +
                ", pageMaxNum=" + pageMaxNum +
                '}';
    }

    public List<City> getCities() {
        return cities;
    }

    public void setCities(List<City> cities) {
        this.cities = cities;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<Order> getResult() {
        return result;
    }

    public void setResult(List<Order> result) {
        this.result = result;
    }

    public List<Car> getCars() {
        return cars;
    }

    public void setCars(List<Car> cars) {
        this.cars = cars;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageMaxNum() {
        return pageMaxNum;
    }

    public void setPageMaxNum(int pageMaxNum) {
        this.pageMaxNum = pageMaxNum;
    }
}
