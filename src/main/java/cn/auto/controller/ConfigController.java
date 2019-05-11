package cn.auto.controller;


import cn.auto.pojo.Configuration;
import cn.auto.service.ConfigurationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.POST;
import java.util.List;

@Controller
@RequestMapping("/user")
public class ConfigController {

    @Resource
    private ConfigurationService configurationService;




    //车辆配置新增
    @RequestMapping("/configurationAdd.html")
    public String configurationAdd() {
        return "configurationAdd";
    }
    //车辆配置修改界面
    @RequestMapping("/configurationUpdate.html")
    public String configurationUpdate(Model model,
                                      @RequestParam(value = "id")Integer id,
                                      @RequestParam(value = "autoId")Integer autoId,
                                      @RequestParam(value = "engine")String engine,
                                      @RequestParam(value = "gearbox")String gearbox,
                                      @RequestParam(value = "speed")Integer speed,
                                      @RequestParam(value = "displacement")String displacement,
                                      @RequestParam(value = "drive")String drive) {
        Configuration configuration = new Configuration();

        configuration.setSpeed(speed);
        configuration.setGearbox(gearbox);
        configuration.setEngine(engine);
        configuration.setDrive(drive);
        configuration.setDisplacement(displacement);
        configuration.setAutoId(autoId);
        configuration.setId(id);



        model.addAttribute("configuration",configuration);
        return "configurationUpdate";
    }



    //车辆配置查询
    @RequestMapping("/configurationSelete.html")
    public String configurationSelete(Model model, @RequestParam(value = "autoId",required = false) Integer autoId) {
            List<Configuration> list = configurationService.getCon(autoId);
            model.addAttribute("list",list);
            return "configurationSelete";
    }
    //车辆配置删除
    @RequestMapping("/configurationDel.html")
    public String configurationDel(@RequestParam(value = "Id") Integer Id,Model model){
        int colse = configurationService.deleteCon(Id);
        List<Configuration> list = configurationService.getCon(null);
        model.addAttribute("list",list);
        return "configurationSelete";
    }
    //车辆配置添加
    @RequestMapping(value = "/configurationAddcon.html",method = RequestMethod.POST)
    public String configurationAdd(Model model,Configuration configuration){
        System.out.println(configuration.toString());
        int colse = configurationService.addCon(configuration);

        List<Configuration> list = configurationService.getCon(null);
        model.addAttribute("list",list);
        return "configurationSelete";
    }

    //车辆配置修改
    @RequestMapping("/configurationUpdateCon.html")
    public String configurationUpdateCon(Configuration configuration) {

        int colse = configurationService.updateCon(configuration);
        return "configurationSelete";
    }

}
