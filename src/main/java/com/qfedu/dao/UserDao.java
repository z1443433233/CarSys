package com.qfedu.dao;

import com.qfedu.pojo.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/8 15:02
 */

@Repository
public interface UserDao {

    // 新用户注册的方法
    void insert(User user);

    // 登录验证的方法
    User login(String tel);

    // 用户修改个人信息
    void updateUser(User user);

    // 通过邮箱和手机号验证用户信息找回密码
    User getUserByEmailAndTel(User user);

    // 通过用户Id获取用户信息
    User getUserById(int userId);

    // 通过汽车Id获取汽车信息
    Car getCar(int id);

    // 通过取车点的Id，查询到取车点的所有汽车信息，并且根据每种汽车的租金价格进行升序排序
    List<Car> getCarByCityIdOrderByPrice(int stopId);

    // 通过取车点的Id，查询到取车点的所有汽车信息，并根据每种汽车的数量进行升序排序
    List<Car> getCarByCityIdOrderByNumber(int stopId);

    // 通过停车点Id获取停车点信息
    City getCity(int cityId);

    // 通过用户Id获取用户的所有订单
    List<Order> getOrder(Map<String,Object> condition);

    // 通过订单ID查询订单详情
    Order orderMsg(int id);

    // 分页查询用户订单
    List<Order> list(Map<String,Object> condition);

    // 计算用户订单总数
    int listCount(Map<String,Object> condition);

    // 通过城市的id与pid 对应，获取停车点
    List<City> getStop(Integer cityId);

    // 添加订单
    int insertOrder(Order order);

    // 删除订单
    void deleteByOrderId(Order order);

    // 更新订单
    int updateOrderStatus(Order order);
}
