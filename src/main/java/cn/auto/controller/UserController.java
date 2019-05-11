package cn.auto.controller;

import cn.auto.pojo.User;
import cn.auto.pojo.User_auto;
import cn.auto.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;
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


    //用户查询
    @RequestMapping("/userSelete.html")
    public String userSelete(Model model, @RequestParam(value = "phone",required = false) String phone) {
        List<User> list = userService.getUserByPhone(phone);
        model.addAttribute("list",list);
        return "userSelete";
    }
    //用户删除
    @RequestMapping("/userDel.html")
    public String userDel(Model model, @RequestParam(value = "Id") Integer Id) {
        int colse = userService.deleteUser(Id);

        List<User> list = userService.getUserByPhone(null);
        model.addAttribute("list",list);
        return "userSelete";
    }

    //车辆新增
    @RequestMapping("/autoAddAuto.html")
    public String autoAddAuto() {

        return "userSelete";
    }
    //车辆修改
    @RequestMapping("/autoUpdateAuto.html")
    public String autoUpdateAuto() {

        return "userSelete";
    }

}
