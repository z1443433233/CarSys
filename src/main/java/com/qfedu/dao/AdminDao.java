package com.qfedu.dao;

import com.qfedu.pojo.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {

    // 管理员登录
    AdminUser adminLogin(String account);

    // 查询所有订单
    List<OrderDto> AllListOrder();

    // 模糊查询手机号的所有订单
    List<OrderDto> fuzzyOrder(String tel);

    // 模糊查询订单号的所有订单
    List<OrderDto> fuzzyOrderById(String orderId);

    // 获取所有指定状态的订单
    List<OrderDto> appointStatusOrder(String status);

    // 查询用户所有订单
    List<OrderDto> getOrderByTel(String tel);

    // 获取指定订单信息
    OrderDto getOrderById(int id);

    // 获取订单时间，计算时间差
    OrderText carUseTime(int orderId);

    // 确认处理订单信息，仅改变订单状态，不改变订单其它信息
    void updateStatus(String status, int id, double oPrice);

    // 查停车还车点
    City getCity(int cityId);

    // 查车型
    Car getCar(int id);

    // 所有汽车信息
    List<CarMain> allCar();

    // 模糊查询车型
    List<CarMain> fuzzyCarName(String carName);

    // 所有车点
    List<City> getCityAll();

    // 添加汽车信息
    void goodsAdd(Car car);

    // 修改汽车信息
    int modifyCarById(Car car);

    // 查询单个汽车信息
    Car getCarMsg(int id);

    // 查询所有用户
    List<UserDto> allUser();

    // 模糊查询手机号
    List<UserDto> fuzzyTel(String tel);

    // 用户租车次数
    Integer userRentCarNum(int id);

    // 用户租车总金额
    Integer userRentCarSumPrice(int id);
}
