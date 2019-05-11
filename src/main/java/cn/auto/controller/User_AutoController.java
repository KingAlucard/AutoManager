package cn.auto.controller;

import cn.auto.pojo.Configuration;
import cn.auto.pojo.User_auto;
import cn.auto.service.User_AutoService;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class User_AutoController {
    @Resource
    private User_AutoService user_autoService;

    //车辆新增界面
    @RequestMapping("/autoAdd.html")
    public String autoAdd() {
        return "autoAdd";
    }
    //车辆修改界面
    @RequestMapping("/autoUpdate.html")
    public String autoUpdate() {
        return "autoUpdate";
    }




    //车辆查询
    @RequestMapping("/autoSelect.html")
    public String autoSelect(Model model, @RequestParam(value = "autoTypeId",required = false) Integer autoTypeId) {
        List<User_auto> list = user_autoService.getAutoByType(autoTypeId);
        model.addAttribute("list",list);
        return "autoSelect";
    }

    //车辆删除
    @RequestMapping("/autoDel.html")
    public String autoDel(Model model,@RequestParam(value = "Id") Integer Id){
        int colse = user_autoService.deleteAuto(Id);
        List<User_auto> list = user_autoService.getAutoByType(null);
        model.addAttribute("list",list);
        return "autoSelect";
    }
}
