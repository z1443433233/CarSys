package com.qfedu.pojo;

public class OrderDto {
    // 订单Id
    private int orderId;

    // 用户ID
    private int userId;

    // 用户电话号
    private String tel;

    // 汽车信息
    private int cId;
    private String carName;
    private String carPicture;

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

    // 通过订单时间差计算出订单的额外租金
    private double extraPrice;

    public OrderDto() {
    }

    public OrderDto(int orderId, int userId, String tel, int cId, String carName, String carPicture, double oPrice, int getId, String getCityName, int backId, String backCityName, String status, String reserveDate, String returnDate, String disposeDate, double extraPrice) {
        this.orderId = orderId;
        this.userId = userId;
        this.tel = tel;
        this.cId = cId;
        this.carName = carName;
        this.carPicture = carPicture;
        this.oPrice = oPrice;
        this.getId = getId;
        this.getCityName = getCityName;
        this.backId = backId;
        this.backCityName = backCityName;
        this.status = status;
        this.reserveDate = reserveDate;
        this.returnDate = returnDate;
        this.disposeDate = disposeDate;
        this.extraPrice = extraPrice;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

    public String getCarPicture() {
        return carPicture;
    }

    public void setCarPicture(String carPicture) {
        this.carPicture = carPicture;
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

    public double getExtraPrice() {
        return extraPrice;
    }

    public void setExtraPrice(double extraPrice) {
        this.extraPrice = extraPrice;
    }
}
