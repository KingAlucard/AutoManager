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

    @RequestMapping("/welcome.html")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("/autoAdd.html")
    public String autoAdd() {
        return "autoAdd";
    }

    @RequestMapping("/autoDelete.html")
    public String autoDelete() {
        return "autoDelete";
    }

    @RequestMapping("/autoSelect.html")
    public String autoSelect() {
        return "autoSelect";
    }

    @RequestMapping("/autoTypeDelete.html")
    public String autoTypeDelete() {
        return "autoTypeDelete";
    }

    @RequestMapping("/autoTypeAdd.html")
    public String autoTypeAdd() {
        return "autoTypeAdd";
    }

    @RequestMapping("/autoTypeSelete.html")
    public String autoTypeSelete() {
        return "autoTypeSelete";
    }

    @RequestMapping("/autoTypeUpdate.html")
    public String autoTypeUpdate() {
        return "autoTypeUpdate";
    }

    @RequestMapping("/autoUpdate.html")
    public String autoUpdate() {
        return "autoUpdate";
    }

    @RequestMapping("/configurationAdd.html")
    public String configurationAdd() {
        return "configurationAdd";
    }

    @RequestMapping("/configurationDelete.html")
    public String configurationDelete() {
        return "configurationDelete";
    }

    @RequestMapping("/configurationSelete.html")
    public String configurationSelete() {
        return "configurationSelete";
    }

    @RequestMapping("/configurationUpdate.html")
    public String configurationUpdate() {
        return "configurationUpdate";
    }

    @RequestMapping("/userDelete.html")
    public String userDelete() {
        return "userDelete";
    }

    @RequestMapping("/userSelete.html")
    public String userSelete() {
        return "userSelete";
    }
}
