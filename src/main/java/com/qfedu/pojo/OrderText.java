package com.qfedu.pojo;

import java.util.Date;


public class OrderText {
    // 订单号
    private int orderId;

    // 预定时间
    private Date reserveDate;

    // 还车时间
    private Date returnDate;

    // 管理员处理订单时间
    private Date disposeDate;

    // 预定时间与还车时间的时间差
    private int carUseTime;

    // 根据时间差计算订单金额
    private double extraPrice;

    public OrderText() {
    }

    public OrderText(int orderId, Date reserveDate, Date returnDate, Date disposeDate, int carUseTime, double extraPrice) {
        this.orderId = orderId;
        this.reserveDate = reserveDate;
        this.returnDate = returnDate;
        this.disposeDate = disposeDate;
        this.carUseTime = carUseTime;
        this.extraPrice = extraPrice;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getReserveDate() {
        return reserveDate;
    }

    public void setReserveDate(Date reserveDate) {
        this.reserveDate = reserveDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public Date getDisposeDate() {
        return disposeDate;
    }

    public void setDisposeDate(Date disposeDate) {
        this.disposeDate = disposeDate;
    }

    public int getCarUseTime() {
        return carUseTime;
    }

    public void setCarUseTime(int carUseTime) {
        this.carUseTime = carUseTime;
    }

    public double getExtraPrice() {
        return extraPrice;
    }

    public void setExtraPrice(double extraPrice) {
        this.extraPrice = extraPrice;
    }
}
