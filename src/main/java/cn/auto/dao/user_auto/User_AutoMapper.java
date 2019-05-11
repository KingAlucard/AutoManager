package cn.auto.dao.user_auto;

import cn.auto.pojo.Auto_type;
import cn.auto.pojo.User_auto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface User_AutoMapper {
    //查询所有汽车
    List<User_auto> getAuto();

    //根据品牌查询所有汽车
    List<User_auto> getAutoByType(@Param("autoTypeId") Integer autoTypeId);

    //根据名称模糊查询汽车////////
    List<User_auto> getAutoByName(@Param("autoName") String autoName);

    //添加汽车
    int addAuto(@Param("user_auto") User_auto user_auto);

    //删除汽车
    int deleteAuto(@Param("Id") Integer Id);

    //修改汽车
    int updateAuto(@Param("user_auto") User_auto user_auto);

}
