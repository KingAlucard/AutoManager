package cn.auto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class AdminController {

    //后台主界面
    @RequestMapping("/index.html")
    public String index() {
        return "index";
    }
    //主界面图片
    @RequestMapping("/welcome.html")
    public String welcome() {
        return "welcome";
    }



}
