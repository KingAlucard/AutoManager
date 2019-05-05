package cn.auto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("/login.html")
    public String  getLogin(){
        return "userLogin";
    }

    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping("/add.html")
    public  String getAdd(){
        return "userAdd";
    }
}
