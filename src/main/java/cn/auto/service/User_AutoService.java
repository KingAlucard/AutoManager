package cn.auto.service;

import cn.auto.pojo.Auto_type;
import cn.auto.pojo.User_auto;

import java.util.List;

public interface User_AutoService {
    //查询所有汽车
    List<User_auto> getAuto();

    //根据品牌查询所有汽车
    List<User_auto> getAutoByType(Integer TypeId);

    //根据名称模糊查询汽车////////
    List<User_auto> getAutoByName(String autoName);

    //添加汽车
    int addAuto(User_auto user_auto);

    //删除汽车
    int deleteAuto(Integer Id);

    //修改汽车
    int updateAuto(User_auto user_auto);
}
