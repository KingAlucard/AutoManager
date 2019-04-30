package cn.auto.service;

import cn.auto.pojo.User_auto;

import java.util.List;

public interface User_AutoServler {
    //查询所有汽车
    List<User_auto> SelectAuto();

    //根据品牌查询所有汽车
    List<User_auto> SelectAutoByType(Integer TypeId);

    //根据名称模糊查询汽车
    List<User_auto> SelectAutoByName(String autoName);

    //添加汽车
    int findAddAuto(User_auto user_auto);

    //删除汽车
    int findDeleteAuto(Integer Id);

    //修改汽车
    List<User_auto> findUpdateAuto();
}
