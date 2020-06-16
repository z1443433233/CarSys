package com.qfedu.service;

import com.qfedu.pojo.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface AdminService {
    // 管理员登录
    AdminUser adminLogin(String account);

    // 查询所有订单
    List<OrderDto> AllListOrder();

    // 模糊查询符合条件的订单
    List<OrderDto> fuzzyOrder(String tel);

    // 模糊查询订单号的所有订单
    List<OrderDto> fuzzyOrderById(String orderId);

    // 获取所有指定状态的订单
    List<OrderDto> appointStatusOrder(String status);

    // 查询用户所有订单
    List<OrderDto> getOrderByTel(String tel);

    // 查询指定订单
    OrderDto getOrderById(int id);

    // 获取订单时间，计算时间差
    OrderText carUseTime(int orderId);

    // 确认处理订单信息，改变订单状态和订单金额，不改变订单其它信息
    void updateStatus(String status, int id, double oPrice);

    // 查停车还车点
    City getCity(int cityId);

    // 查车型
    Car getCar(int id);

    // 所有汽车信息
    List<CarMain> allCar(String carName);

    // 所有车点
    List<City> getCityAll();

    // 添加汽车信息
    void goodsAdd(Car car);

    // 修改汽车信息
    int modifyCarById(Car car);

    // 查询单个汽车信息
    Car getCarMsg(int id);

    // 查询所有用户
    List<UserDto> allUser(String tel);



    // 用户租车次数
    Integer userRentCarNum(int id);

    // 用户租车总金额
    Integer userRentCarSumPrice(int id);
}
