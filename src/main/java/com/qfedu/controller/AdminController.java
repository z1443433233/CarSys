package com.qfedu.controller;

import com.qfedu.pojo.AdminUser;
import com.qfedu.pojo.Car;
import com.qfedu.pojo.OrderDto;
import com.qfedu.pojo.OrderText;
import com.qfedu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    // 跳转后台页面
    @RequestMapping("/adminJsp")
    public String adminJsp(){
        return "background/login1";
    }

    // 管理员登录
    @RequestMapping("/login")
    public String backgroundLogin(AdminUser adminUser, Model model){
        AdminUser admin = adminService.adminLogin(adminUser.getAccount());

        if (null != admin && admin.getPassword().equals(adminUser.getPassword())) {
            return "background/frame";
        } else {
            model.addAttribute("cuowu", "账号或密码错误");
            return "background/login1";
        }
    }

    // API
    @RequestMapping("/API")
    public String backgroundAPI(){
        return "background/tgls/pdAPI";
    }

    // 跳转添加汽车信息页
    @RequestMapping("/goodsAdd")
    public String goodsAdd(Model model){
        model.addAttribute("cityAll", adminService.getCityAll());
        return "background/tgls/goodsManage/goods_add";
    }

    // 查询所有汽车信息
    @RequestMapping("/goodsList")
    public String goodsList(Model model, String carName){
        model.addAttribute("carList", adminService.allCar(carName));
        return "background/tgls/goodsManage/goods_list";
    }

    // 查询所有客户信息
    @RequestMapping("/baseList")
    public String baseList(String tel,Model model) {
        model.addAttribute("userList", adminService.allUser(tel));

        return "background/tgls/base/base_list";
    }

    // 查询所有订单
    @RequestMapping("/baseListOrder")
    public String baseListOrder(Model model) {

        model.addAttribute("orderList",adminService.AllListOrder());

        return "background/tgls/base/base_list_order";
    }

    // 模糊查询手机号的所有订单
    @RequestMapping("/baseListOrderByTel")
    public String baseListOrderByTel(String tel, Model model){
        model.addAttribute("orderList", adminService.fuzzyOrder(tel));

        return "background/tgls/base/base_list_order";
    }

    // 模糊查询订单号的所有订单
    @RequestMapping("/baseListOrderById")
    public String baseListOrderById(String orderId, Model model){
        model.addAttribute("orderList", adminService.fuzzyOrderById(orderId));

        return "background/tgls/base/base_list_order";
    }

    // 获取所有指定状态的订单
    @RequestMapping("/appointStatusOrder")
    public String appointStatusOrder(String status, Model model){
        model.addAttribute("orderList", adminService.appointStatusOrder(status));

        return "background/tgls/base/base_list_order";
    }


    // 客户详情
    @RequestMapping("/baseMain")
    public String baseMain() {
        return "background/tgls/base/base_main";
    }

    // 订单详情
    @RequestMapping("/baseMainOrder")
    public String baseMainOrder(int id, Model model) {
        model.addAttribute("orderMsg", adminService.getOrderById(id));

        return "background/tgls/base/base_modify";
    }

    // 确认处理订单信息，改变订单状态和订单的金额，订单其它信息不改变
    @RequestMapping("/updateStatus")
    public String updateStatus(String status, int id, Model model){
        // 获取订单信息
        OrderDto orderById = adminService.getOrderById(id);

        // 获取该订单的汽车信息
        Car car = adminService.getCar(orderById.getcId());

        // 获取订单的预定和还车时间，类型为Date，可计算时间差，进而计算额外租金
        OrderText orderText = adminService.carUseTime(id);

        // 设置该订单的额外租金
        orderById.setExtraPrice((orderText.getReturnDate().getTime() - orderText.getReserveDate().getTime()) / (1000 * 60 * 60 * 24) * car.getCarPrice());

        System.out.println(orderById.getExtraPrice());

        // 更新订单信息
        adminService.updateStatus(status, id, orderById.getoPrice() + orderById.getExtraPrice());

        // 重新获取订单信息发送给前端
        model.addAttribute("orderMsg", adminService.getOrderById(id));

        return "background/tgls/base/base_modify";
    }


    // 添加汽车信息
    @RequestMapping("/goodsAddMsg")
    public String goodsAddMsg(Car car){
        adminService.goodsAdd(car);
        return "redirect:/admin/goodsList";
    }

    // 查询单个汽车信息
    @RequestMapping("/goodsGetById")
    public String goodsGetById(int id, Model model){

        model.addAttribute("carMsg", adminService.getCarMsg(id));

        model.addAttribute("cityAll", adminService.getCityAll());
        return "background/tgls/goodsManage/goods_modify";
    }

    // 修改汽车信息
    @RequestMapping("/goodsModify")
    public String goodsModify(Car car){
        adminService.modifyCarById(car);

        return "redirect:/admin/goodsList";
    }

}
