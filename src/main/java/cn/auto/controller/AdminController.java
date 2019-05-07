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
    //车辆新增
    @RequestMapping("/autoAdd.html")
    public String autoAdd() {
        return "autoAdd";
    }
    //车辆查询
    @RequestMapping("/autoSelect.html")
    public String autoSelect() {
        return "autoSelect";
    }
    //品牌新增
    @RequestMapping("/autoTypeAdd.html")
    public String autoTypeAdd() {
        return "autoTypeAdd";
    }
    //品牌查询
    @RequestMapping("/autoTypeSelete.html")
    public String autoTypeSelete() {
        return "autoTypeSelete";
    }
    //品牌修改
    @RequestMapping("/autoTypeUpdate.html")
    public String autoTypeUpdate() {
        return "autoTypeUpdate";
    }
    //车辆修改
    @RequestMapping("/autoUpdate.html")
    public String autoUpdate() {
        return "autoUpdate";
    }
    //车辆配置新增
    @RequestMapping("/configurationAdd.html")
    public String configurationAdd() {
        return "configurationAdd";
    }
    //车辆配置查询
    @RequestMapping("/configurationSelete.html")
    public String configurationSelete() {
        return "configurationSelete";
    }
    //车辆配置修改
    @RequestMapping("/configurationUpdate.html")
    public String configurationUpdate() {
        return "configurationUpdate";
    }
    //用户查询
    @RequestMapping("/userSelete.html")
    public String userSelete() {
        return "userSelete";
    }
}
