package com.qfedu.dao;

import com.qfedu.pojo.Car;
import com.qfedu.pojo.City;
import com.qfedu.pojo.Order;
import com.qfedu.pojo.User;
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

    void updateUser(User user);

    User getUserById(int userId);

    // 通过汽车Id获取汽车信息
    Car getCar(int id);

    // 通过取车点的Id，查询到取车点的所有汽车信息，并且根据每种汽车的租金价格进行升序排序
    List<Car> getCarByCityIdOrderByPrice(int stopId);

    // 通过取车点的Id，查询到取车点的所有汽车信息，并根据每种汽车的数量进行升序排序
    List<Car> getCarByCityIdOrderByNumber(int stopId);

    // 通过停车点Id获取停车点信息
    City getCity(int cityId);

    List<Order> getOrder(Map<String,Object> condition);

    List<Order> list(Map<String,Object> condition);

    int listCount(Map<String,Object> condition);

    // 通过城市的id与pid 对应，获取停车点
    List<City> getStop(Integer cityId);

    void insertOrder(Order order);

    void deleteByOrderId(Order order);

    void updateOrderStatus(Order order);
}
