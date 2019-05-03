package cn.auto.dao.user_auto;

import cn.auto.pojo.User_auto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface User_AutoMapper {
    //查询所有汽车
    List<User_auto> selectAuto();

    //根据品牌查询所有汽车
    List<User_auto> selectAutoByType(@Param("TypeId") Integer TypeId);

    //根据名称模糊查询汽车
    List<User_auto> selectAutoByName(@Param("autoName") String autoName);

    //添加汽车
    int findAddAuto(@Param("user_auto") User_auto user_auto);

    //删除汽车
    int findDeleteAuto(@Param("Id") Integer Id);

    //修改汽车
    List<User_auto> findUpdateAuto(@Param("user_auto") User_auto user_auto);
}
