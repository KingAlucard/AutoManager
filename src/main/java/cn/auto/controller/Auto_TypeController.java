package cn.auto.controller;

import cn.auto.pojo.Auto_type;
import cn.auto.pojo.Configuration;
import cn.auto.service.Auto_typeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class Auto_TypeController {
    @Resource
    private Auto_typeService auto_typeService;



    //品牌新增界面
    @RequestMapping("/autoTypeAdd.html")
    public String autoTypeAdd() {
        return "autoTypeAdd";
    }
    //品牌修改界面
    @RequestMapping("/autoTypeUpdate.html")
    public String autoTypeUpdate(Model model,@RequestParam(value = "name")String name,@RequestParam(value = "Id")Integer Id) {

        Auto_type auto_type = new Auto_type();
        auto_type.setId(Id);
        auto_type.setName(name);
        model.addAttribute("auto_type",auto_type);

        return "autoTypeUpdate";
    }



    //品牌查询
    @RequestMapping("/autoTypeSelete.html")
    public String autoTypeSelete(Model model) {
        List<Auto_type> list = auto_typeService.getType();
        model.addAttribute("list",list);
        return "autoTypeSelete";
    }
    //品牌删除
    @RequestMapping("/autoTypeDel.html")
    public String auto_TypeDel(Model model,@RequestParam(value = "Id") Integer Id){
        int colse = auto_typeService.deleteType(Id);
        List<Auto_type> list = auto_typeService.getType();
        model.addAttribute("list",list);
        return "autoTypeSelete";
    }

    //品牌新增
    @RequestMapping("/autoTypeAddType.html")
    public String autoTypeAddType(String name) {
        int colse = auto_typeService.addType(name);
        return "autoTypeSelete";
    }

    //品牌修改
    @RequestMapping("/autoTypeUpdateType.html")
    public String autoTypeUpdateType(Model model,Auto_type auto_type) {
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>名称名称："+auto_type.getName());
        int colse = auto_typeService.updateType(auto_type);
        return "autoTypeSelete";
    }
}
