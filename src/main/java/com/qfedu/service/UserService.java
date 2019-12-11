package com.qfedu.service;

import com.qfedu.pojo.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/8 15:03
 */

@Transactional
public interface UserService {
    void insert(User user);

    User getUserById(int userId);

    User login(String tel);

    void updateUser(User user);

    Page list(Map<String,String> condition);

    List<City> getStop(Integer cityId);

    City getCity(int cityId);

    List<Car> getCarByCityIdOrderByPrice(int stopId);

    List<Car> getCarByCityIdOrderByNumber(int stopId);

    Car getCar(int id);

    void insertOrder(Order order);

    void deleteByOrderId(Order order);

    void updateOrderStatus(Order order);
}
