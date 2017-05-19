package cn.ming.mvc.controller;

import cn.ming.domain.ResponseObj;
import cn.ming.domain.User;
import cn.ming.service.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Ming on 2017-5-3.
 */
@Controller
@RequestMapping("/ming")
public class LoginController {
    @Autowired
    private UserServiceImpl userService;
    private ResponseObj responseObj;
    /**
     * 网站首页
     * @return
     */
    @RequestMapping("/firstPage")
    public String FirstPage(){
        return "firstPage";
    }

    /**
     * 跳转登陆界面
     * @return
     */
    @RequestMapping("/login")
    public String loginPage(){
        return "login";
    }

    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/loginPage",  method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public Object homePage(HttpServletRequest request, HttpServletResponse response, User user,
                           HttpSession session){
        Object result=userService.getLogin(request,response,user,session);
        return result;
    }
}
