package com.qfedu.service.serviceImpl;

import com.qfedu.dao.AdminDao;
import com.qfedu.pojo.*;
import com.qfedu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    // 管理员登陆
    public AdminUser adminLogin(String account) {
        return adminDao.adminLogin(account);
    }

    // 查询所有订单
    public List<OrderDto> AllListOrder() {
        List<OrderDto> orderList = adminDao.AllListOrder();
        for (OrderDto orderDto : orderList) {
            orderDto.setCarName(adminDao.getCar(orderDto.getcId()).getCarName());
            orderDto.setGetCityName(adminDao.getCity(orderDto.getGetId()).getCityName());
            orderDto.setBackCityName(adminDao.getCity(orderDto.getBackId()).getCityName());
        }
        return orderList;
    }

    // 根据模糊手机号，模糊查询所有符合条件的订单
    public List<OrderDto> fuzzyOrder(String tel) {
        List<OrderDto> orderList = adminDao.fuzzyOrder(tel);
        for (OrderDto orderDto : orderList) {
            orderDto.setCarName(adminDao.getCar(orderDto.getcId()).getCarName());
            orderDto.setGetCityName(adminDao.getCity(orderDto.getGetId()).getCityName());
            orderDto.setBackCityName(adminDao.getCity(orderDto.getBackId()).getCityName());
        }
        return orderList;
    }

    // 根据模糊订单号，模糊查询所有符合条件的订单
    public List<OrderDto> fuzzyOrderById(String orderId) {
        List<OrderDto> orderList = adminDao.fuzzyOrderById(orderId);
        for (OrderDto orderDto : orderList) {
            orderDto.setCarName(adminDao.getCar(orderDto.getcId()).getCarName());
            orderDto.setGetCityName(adminDao.getCity(orderDto.getGetId()).getCityName());
            orderDto.setBackCityName(adminDao.getCity(orderDto.getBackId()).getCityName());
        }
        return orderList;
    }

    // 查询指定状态的所有订单
    public List<OrderDto> appointStatusOrder(String status) {
        List<OrderDto> orderList = adminDao.appointStatusOrder(status);
        for (OrderDto orderDto : orderList) {
            orderDto.setCarName(adminDao.getCar(orderDto.getcId()).getCarName());
            orderDto.setGetCityName(adminDao.getCity(orderDto.getGetId()).getCityName());
            orderDto.setBackCityName(adminDao.getCity(orderDto.getBackId()).getCityName());
        }
        return orderList;
    }

    // 通过手机号查询用户所有订单
    public List<OrderDto> getOrderByTel(String tel) {
        List<OrderDto> orderList = adminDao.getOrderByTel(tel);
        for (OrderDto orderDto : orderList) {
            orderDto.setCarName(adminDao.getCar(orderDto.getcId()).getCarName());
            orderDto.setGetCityName(adminDao.getCity(orderDto.getGetId()).getCityName());
            orderDto.setBackCityName(adminDao.getCity(orderDto.getBackId()).getCityName());
        }
        return orderList;
    }

    // 通过订单编号查询订单详情
    public OrderDto getOrderById(int id) {
        OrderDto orderDto = adminDao.getOrderById(id);
        orderDto.setCarPicture(adminDao.getCar(orderDto.getcId()).getCarPicture());
        orderDto.setCarName(adminDao.getCar(orderDto.getcId()).getCarName());
        orderDto.setGetCityName(adminDao.getCity(orderDto.getGetId()).getCityName());
        orderDto.setBackCityName(adminDao.getCity(orderDto.getBackId()).getCityName());
        return orderDto;
    }

    // 获取订单时间，计算时间差
    public OrderText carUseTime(int orderId) {
        return adminDao.carUseTime(orderId);
    }

    // 确认处理订单信息，仅改变订单状态，不改变订单其它信息
    public void updateStatus(String status, int id, double oPrice) {
        adminDao.updateStatus(status, id, oPrice);
    }

    // 根据城市Id查询城市名
    public City getCity(int cityId) {
        return adminDao.getCity(cityId);
    }

    // 根据汽车ID查询汽车信息
    public Car getCar(int id) {
        return adminDao.getCar(id);
    }

    // 所有汽车信息或模糊查询车型
    public List<CarMain> allCar(String carName) {
        if (null == carName) {
            return adminDao.allCar();
        } else {
            return adminDao.fuzzyCarName(carName);
        }

    }

    // 获取所有车点
    public List<City> getCityAll() {
        return adminDao.getCityAll();
    }

    // 添加汽车信息
    public void goodsAdd(Car car) {
        adminDao.goodsAdd(car);
    }

    // 修改汽车信息
    public int modifyCarById(Car car) {
        return adminDao.modifyCarById(car);
    }

    // 获取汽车信息
    public Car getCarMsg(int id) {
        return adminDao.getCarMsg(id);
    }

    // 获取所有用户
    public List<UserDto> allUser(String  tel) {
        if (null == tel){
            List<UserDto> userList = adminDao.allUser();

            for (UserDto userDto : userList) {
                if (null == adminDao.userRentCarNum(userDto.getUserId())){
                    continue;
                }
                userDto.setRentCarNum(adminDao.userRentCarNum(userDto.getUserId()));
                userDto.setRentCarSumPrice(adminDao.userRentCarSumPrice(userDto.getUserId()));
            }
            return userList;
        } else {
            List<UserDto> userList = adminDao.fuzzyTel(tel);

            for (UserDto userDto : userList) {
                if (null == adminDao.userRentCarNum(userDto.getUserId())){
                    continue;
                }
                userDto.setRentCarNum(adminDao.userRentCarNum(userDto.getUserId()));
                userDto.setRentCarSumPrice(adminDao.userRentCarSumPrice(userDto.getUserId()));
            }

            return userList;
        }
    }


    // 用户租车次数
    public Integer userRentCarNum(int id) {
        return adminDao.userRentCarNum(id);
    }

    // 用户租车总金额
    public Integer userRentCarSumPrice(int id) {
        return adminDao.userRentCarSumPrice(id);
    }
}
