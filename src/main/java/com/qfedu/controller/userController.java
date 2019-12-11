package com.qfedu.controller;

import com.qfedu.common.JsonBean;
import com.qfedu.pojo.*;
import com.qfedu.service.UserService;
import com.qfedu.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ZhangHaoYang
 * @Date 2019/11/9 10:19
 */

@Controller
@RequestMapping("/user")
public class userController {

    @Autowired
    private UserService userService;

    // 用户登录方法
    @RequestMapping("/login")
    public String login(User user, Model model, HttpSession session) {
        User userLogin = userService.login(user.getTel());

        if (null != userLogin && userLogin.getPassword().equals(user.getPassword())) {
            session.setAttribute("users", userLogin);
            return "loginSuccess";
        } else {
            model.addAttribute("msg", "手机号或密码错误，请检查后重试");
            return "login";
        }
    }

    // 用户退出登录的方法
    @RequestMapping("/logout")
    public String logOut(HttpServletRequest req) {
        // 关闭 session
        HttpSession session = req.getSession(false);

        // 判断 session 是否已关闭
        if (null != session) {
            // 使上一个 session 失效
            session.invalidate();
        }

        return "login";
    }

    @RequestMapping("/getUserById")
    @ResponseBody
    public User getUserById (int userId) {
        return userService.getUserById(userId);
    }


    // 用户在登录界面点击注册跳转到注册界面
    @RequestMapping("/register")
    public String register() {
        return "insert";
    }

    // 新用户注册
    @RequestMapping("/insert")
    public String insert(User user) {
        userService.insert(user);
        return "login";
    }

    // 用户修改个人信息
    @RequestMapping("/updateUser")
    @ResponseBody
    public int updateUser(User user,HttpServletRequest req) {
        HttpSession session = req.getSession(false);

        User user1 = (User) session.getAttribute("users");
        int userId = user1.getUserId();

        if (0 != user1.getUserId() || null != user1.getTel() || null != user1.getPassword() || null != user1.getEmail()) {
            // 使上一个 session 失效
            session.invalidate();
        }

        user.setUserId(userId);
        userService.updateUser(user);

        User user2 = userService.getUserById(userId);

        HttpSession session1 = req.getSession();

        session1.setAttribute("users", user2);

        if (user1.getTel().equals(user2.getTel()) || user1.getEmail().equals(user2.getEmail()) ||
                user1.getPassword().equals(user2.getPassword())) {
            return 1;
        } else {
            return -1;
        }
    }

    // 跳转登陆界面的方法
    @RequestMapping("/login1")
    public String login1() {
        return "login";
    }

    // 用户首页跳转到登录页
    @RequestMapping("/login2")
    public String login2() {
        return "login";
    }

    // 用户从首页跳转到注册页
    @RequestMapping("/register1")
    public String register1() {
        return "insert";
    }


    // 用户订单查询
    @RequestMapping("/orderTable")
    public String orderTable(Model model, HttpServletRequest req, @RequestParam Map<String, String> condition) {

        HttpSession session = req.getSession(false);

        User user = (User) session.getAttribute("users");

        Map<String, String> map = new HashMap<String, String>();

        map.put("userId", String.valueOf(user.getUserId()));

        map.put("pageSize", "5");

        if (null == map.get("pageNum")) {
            map.put("pageNum", "1");
        }

        Page list = userService.list(map);
        list.setPageMaxNum(list.getTotal() / list.getPageSize() + 1);
        model.addAttribute("list", list);



        return "mymain";
    }

    // 跳转用户个人信息页的方法
    @RequestMapping("/myInfo")
    public String myInfo() {
        return "myinfo";
    }

    // 跳转短租子租页面的方法
    @RequestMapping("/shortrent")
    public String shortrent(Model model) {
        List<City> cityList = userService.getStop(0);

        model.addAttribute("cityList", cityList);

        return "shortrent";
    }

    @RequestMapping("/getCity")
    public String getCity(Model model) {
        List<City> cityList = userService.getStop(0);

        model.addAttribute("cityList", cityList);

        return "shortrent";
    }



    @RequestMapping("/getCity1")
    @ResponseBody
    public List<City> getCity1() {
        List<City> cityList = userService.getStop(0);

        return cityList;
    }


    @RequestMapping("/getStop")
    @ResponseBody
    public List<City> getStop(int cityId) {
        List<City> cityList = userService.getStop(cityId);
        return cityList;
    }


    // 短租自驾页面选取好取车点和还车点后跳转到选车页面，默认按汽车租金价格进行升序排序
    @RequestMapping("/shortsort")
    public String shortsort(HttpServletRequest request, Model model) {

        // 取车地点城市的取车点id
        String getStopId = request.getParameter("getStopId");

        // 还车地点的城市的换车点id
        String backStopId = request.getParameter("backStopId");

        // 根据取车点的id，查询出取车点的所有汽车信息
        List<Car> carList = userService.getCarByCityIdOrderByPrice(Integer.parseInt(getStopId));

        // 获取取车点对象
        City getStopCity = userService.getCity(Integer.parseInt(getStopId));

        // 获取还车点对象
        City backStopCity = userService.getCity(Integer.parseInt(backStopId));

        model.addAttribute("getStopCity", getStopCity);
        model.addAttribute("backStopCity", backStopCity);
        model.addAttribute("type", "money");

        model.addAttribute("carList", carList);


        return "shortsort";
    }

    @RequestMapping("/sortByMoneyOrHeat")
    public String sortByMoneyOrHeat(SortData sortData, Model model) {
        if (sortData.getType().equals("money")) {
            List<Car> carList = userService.getCarByCityIdOrderByPrice(sortData.getGetStopCityId());
            model.addAttribute("carList", carList);
        } else {
            List<Car> carList = userService.getCarByCityIdOrderByNumber(sortData.getGetStopCityId());
            model.addAttribute("carList", carList);
        }

        City getStopCity = userService.getCity(sortData.getGetStopCityId());
        City backStopCity = userService.getCity(sortData.getBackStopCityId());

        model.addAttribute("getStopCity",getStopCity);
        model.addAttribute("backStopCity",backStopCity);
        model.addAttribute("type", sortData.getType());

        return "shortsort";
    }

    // 确认订单信息
    @RequestMapping("/orderSubmit")
    public String orderSubmit(SortData sortData, Model model) {

        Car car = userService.getCar(sortData.getCarId());

        City getStopCity = userService.getCity(sortData.getGetStopCityId());
        City backStopCity = userService.getCity(sortData.getBackStopCityId());

        model.addAttribute("car", car);
        model.addAttribute("getStopCity",getStopCity);
        model.addAttribute("backStopCity",backStopCity);

        return "ordersubmit";
    }


    @RequestMapping("/orderInsert")
    public String orderInsert(Order order) {

        userService.insertOrder(order);

        return "redirect:/user/orderTable";
    }

    //用户还车
    @RequestMapping("/updateOrderStatus")
    public String updateOrderStatus(Order order) {

        order.setStatus("已归还");

        userService.updateOrderStatus(order);

        return "redirect:/user/orderTable";
    }

    // 删除已还车的订单
    @RequestMapping("/deleteOrder")
    public String deleteOrder(Order order) {
        userService.deleteByOrderId(order);

        System.out.println(order.getOrderId());


        return "redirect:/user/orderTable";
    }
}
