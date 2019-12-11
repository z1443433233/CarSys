package com.qfedu.Interceptor;

import com.qfedu.pojo.User;
import com.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @author ZhangHaoYang
 * @Date 2019/11/14 9:03
 */

public class Interceptor implements HandlerInterceptor{

    @Autowired
    private UserService userService;

    /** 进入到控制器之前执行
     * @param request
     * @param response
     * @param handler
     * 对调用方法的包装
     * @return 如果返回true，则请求继续执行
     * @throws Exception
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();

        User users = (User) session.getAttribute("users");


        if (null == users) {
            response.sendRedirect(request.getContextPath()+"/user/login1");
            return false;
        } else if (null == userService.login(users.getTel())) {
            response.sendRedirect(request.getContextPath()+"/user/login1");
            return false;
        } else if (!userService.login(users.getTel()).getPassword().equals(users.getPassword())) {
            response.sendRedirect(request.getContextPath()+"/user/login1");
            return false;
        }


        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

