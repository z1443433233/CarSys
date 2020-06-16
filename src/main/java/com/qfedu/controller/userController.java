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

    /**
     * 用户登录的方法，登录成功后会把用户的登录信息存放到session中
     *
     * @param user 用户对象，存放的有用户的基本信息
     * @param model 数据转发前端
     * @return 返回值为String类型，返回到登录成功或失败的页面
     */
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

    /**
     * 跳转找回密码页面
     *
     * @return 返回值为String类型，跳转到页面
     */
    @RequestMapping("/findPassword")
    public String findPassword(){
        return "findPassword";
    }

    /**
     * 用户忘记密码，通过邮箱和手机号找回密码
     *
     * @param user user对象，前端传输的用户输入数据，包含的是账号和密码
     * @return 返回值类型为JsonBean，其中包含了code状态码和info详情
     */
    @RequestMapping("/getUserByEmailAndTel")
    @ResponseBody
    public JsonBean getUserByEmailAndTel(User user) {
        JsonBean bean = null;

        // 通过邮箱和手机号查找用户信息
        User user1 = userService.getUserByEmailAndTel(user);

        if (null == user1){
            bean = JsonUtils.createJsonBean(-1, "手机号或邮箱错误，请核实后重试");
            return bean;

        }
        bean = JsonUtils.createJsonBean(1, user1);

        return bean;
    }

    /**
     * 用户退出登录的方法
     * @param req request请求
     * @return 返回值为String类型，返回到页面
     */
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

    /**
     * 通过用户Id查询到用户的个人信息
     *
     * @param userId 用户的Id
     * @return 返回值为User对象，包含了用户的账号、密码、邮箱
     */
    @RequestMapping("/getUserById")
    @ResponseBody
    public User getUserById (int userId) {
        return userService.getUserById(userId);
    }


    /**
     * 用户在登录界面点击注册跳转到注册界面
     *
     * @return 返回值为String类型，跳转到insert页面
     */
    @RequestMapping("/register")
    public String register() {
        return "insert";
    }

    /**
     * 新用户注册的方法
     *
     * @param user user对象，包含前端发送用户的注册信息
     * @param model 后端向前端发送数据信息
     * @return 返回值为String类型，跳转到注册成功或失败的页面
     */
    @RequestMapping("/insert")
    public String insert(User user, Model model) {
        User user1 = userService.login(user.getTel());

        if (null == user1){
            userService.insert(user);
            return "login";
        } else {
            model.addAttribute("msg", "该账号已被注册");
            model.addAttribute("user", user);
            return "insert";
        }
    }

    /**
     * 用户修改密码
     *
     * @param user user对象，包含了用户的密码
     * @param req request请求
     * @return 返回值为JsonBean对象，包含了code状态码和info详情
     */
    @RequestMapping("/updatePassword")
    @ResponseBody
    public JsonBean updatePassword(User user,HttpServletRequest req){
        HttpSession session = req.getSession(false);

        JsonBean bean = null;

        if (user.getPassword() != null){
            if (user.getPassword().length() < 6 || user.getPassword().length() > 12){
                bean = JsonUtils.createJsonBean(-1,"密码应为6~12位数字或字母，请确认后重试");
                return bean;
            }
        }

        User user1 = (User) session.getAttribute("users");

        int userId = user1.getUserId();

        user.setUserId(userId);
        userService.updateUser(user);

        if (0 != user1.getUserId() || null != user1.getTel() || null != user1.getPassword() || null != user1.getEmail()) {
            // 使上一个 session 失效
            session.invalidate();
        }

        User user2 = userService.getUserById(userId);

        HttpSession session1 = req.getSession();

        session1.setAttribute("users", user2);

        bean = JsonUtils.createJsonBean(1, "密码修改成功");

        return bean;
    }

    /**
     * 用户修改手机号或邮箱
     *
     * @param user user对象，存放的是用户要修改的手机号或邮箱
     * @param req request请求
     * @return 返回值为String类型，修改后跳转到用户个人信息页面
     */
    @RequestMapping("/updateUser")
    public String updateUser(User user,HttpServletRequest req) {
        HttpSession session = req.getSession(false);

        User user1 = (User) session.getAttribute("users");

        int userId = user1.getUserId();

        user.setUserId(userId);
        userService.updateUser(user);

        if (0 != user1.getUserId() || null != user1.getTel() || null != user1.getPassword() || null != user1.getEmail()) {
            // 使上一个 session 失效
            session.invalidate();
        }

        User user2 = userService.getUserById(userId);

        HttpSession session1 = req.getSession();

        session1.setAttribute("users", user2);

        return "myinfo";
    }

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


        if (null == condition.get("pageNum")){
            map.put("pageNum", "1");
        } else {
            map.put("pageNum", condition.get("pageNum"));
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

        return userService.getStop(0);
    }


    @RequestMapping("/getStop")
    @ResponseBody
    public JsonBean getStop(int cityId) {
        JsonBean bean = null;

        List<City> cityList = userService.getStop(cityId);

        if (cityList.size() > 0){
            bean = JsonUtils.createJsonBean(1, cityList);
        } else {
            bean = JsonUtils.createJsonBean(-1, "错误");
        }
        return bean;
    }

    @RequestMapping("/getStopList")
    @ResponseBody
    public List<City> getStopList(int cityId) {
        return userService.getStop(cityId);
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

    // 提交订单
    @RequestMapping("/orderInsert")
    @ResponseBody
    public JsonBean orderInsert(Order order) {
        JsonBean bean = null;

        int i = userService.insertOrder(order);
        if (i > 0){
            bean = JsonUtils.createJsonBean(1,"下单成功");

            return bean;
        }

        bean = JsonUtils.createJsonBean(-1, "错误");

        return bean;
    }

    // 订单详情
    @RequestMapping("/orderMsg")
    @ResponseBody
    public JsonBean orderMsg(Order order){
        JsonBean bean = null;
        Order order1 = userService.orderMsg(order.getOrderId());
        if (order1 != null){
            bean = JsonUtils.createJsonBean(1,order1);

        } else {
            bean = JsonUtils.createJsonBean(-1, "订单查询失败");
        }
        return bean;
    }

    //用户还车
    @RequestMapping("/updateOrderStatus")
    @ResponseBody
    public JsonBean updateOrderStatus(Order order) {

        JsonBean bean = null;

        order.setStatus("处理中");

        int i = userService.updateOrderStatus(order);
        if (i > 0) {
            bean = JsonUtils.createJsonBean(1,"还车成功，请等待处理");
            return bean;
        }else {
            bean = JsonUtils.createJsonBean(-1, "还车失败，请重试");
            return bean;
        }
    }

    // 删除已还车的订单
    @RequestMapping("/deleteOrder")
    public String deleteOrder(Order order) {
        userService.deleteByOrderId(order);

        System.out.println(order.getOrderId());


        return "redirect:/user/orderTable";
    }
}
