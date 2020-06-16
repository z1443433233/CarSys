package com.qfedu.service.serviceImpl;

import com.qfedu.dao.UserDao;
import com.qfedu.pojo.*;
import com.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/8 15:03
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void insert(User user) {
        userDao.insert(user);
    }

    public User getUserById(int userId) {
        return userDao.getUserById(userId);
    }

    public User login(String tel) {
        return userDao.login(tel);
    }

    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    public Page list(Map<String, String> condition) {
        // 获取 pageNum
        int pageNum = Integer.parseInt(condition.get("pageNum"));

        // 获取 pageSize
        int pageSize = Integer.parseInt(condition.get("pageSize"));

        int userId = Integer.parseInt(condition.get("userId"));

        // 新建一个 Page 对象，把获取到的 pageNum 和 pageSize 放入到新 Page 对象中，并计算出开始下标 startIndex
        Page page = new Page(pageNum, pageSize);

        // 新建一个 HashMap，用来传递数据，并把获取到的 condition 放入其中
        Map<String, Object> conditionTemp = new HashMap<String, Object>(condition);

        // 把计算好的 startIndex 放到 conditionTemp 中
        conditionTemp.put("startIndex",page.getStartIndex());

        // 因为 condition 中的 pageSize 是 String类型的，但是在 Sql 语句中使用需要 int 类型，因为用 int 类型的 pageSize 覆盖掉原有的 String 类型
        conditionTemp.put("pageSize", pageSize);

        // 因为 condition 中的 userId 是 String类型的，但是在 Sql 语句中使用需要 int 类型，因为用 int 类型的 userId 覆盖掉原有的 String 类型
        conditionTemp.put("userId", userId);

        List<Order> orderList = userDao.list(conditionTemp);


        for (Order order : orderList) {
            order.setCarName(userDao.getCar(order.getcId()).getCarName());
            order.setGetCityName(userDao.getCity(order.getGetId()).getCityName());
            order.setBackCityName(userDao.getCity(order.getBackId()).getCityName());
        }

        // 查询用户所有订单
        page.setResult(orderList);

        // 查询出符合条件的数据数量
        page.setTotal(userDao.listCount(conditionTemp));

        return page;
    }

    public List<City> getStop(Integer cityId) {
        return userDao.getStop(cityId);
    }

    public City getCity(int cityId) {
        return userDao.getCity(cityId);
    }

    public List<Car> getCarByCityIdOrderByPrice(int stopId) {
        return userDao.getCarByCityIdOrderByPrice(stopId);
    }

    public List<Car> getCarByCityIdOrderByNumber(int stopId) {
        return userDao.getCarByCityIdOrderByNumber(stopId);
    }

    public Car getCar(int id) {
        return userDao.getCar(id);
    }

    public int insertOrder(Order order) {
        return userDao.insertOrder(order);
    }

    public void deleteByOrderId(Order order) {
        userDao.deleteByOrderId(order);
    }

    public int updateOrderStatus(Order order) {
        return userDao.updateOrderStatus(order);
    }

    public Order orderMsg(int id) {
        Order order = userDao.orderMsg(id);

        order.setCarName(userDao.getCar(order.getcId()).getCarName());
        order.setGetCityName(userDao.getCity(order.getGetId()).getCityName());
        order.setBackCityName(userDao.getCity(order.getBackId()).getCityName());


        return order;
    }


    public User getUserByEmailAndTel(User user) {
        return userDao.getUserByEmailAndTel(user);
    }

}
