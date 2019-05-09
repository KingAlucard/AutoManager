package cn.auto.controller;


import cn.auto.pojo.Configuration;
import cn.auto.service.ConfigurationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class ConfigController {
    @Resource
    private ConfigurationService configurationService;

    //车辆配置查询
    @RequestMapping("/configurationSelete.html")
    public String configurationSelete(Model model,@RequestParam(value = "autoId",required = false) Integer autoId) {
        List<Configuration> list = configurationService.getCon(autoId);
            model.addAttribute("list",list);
        return "configurationSelete";
    }

}