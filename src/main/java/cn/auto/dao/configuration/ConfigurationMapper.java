package cn.auto.dao.configuration;

import cn.auto.pojo.Configuration;
import cn.auto.pojo.User_auto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConfigurationMapper {

    //根据汽车编号查询汽车配置信息
    List<Configuration> getCon(@Param("autoId") Integer autoId);

    //新增配置信息
    int addCon(@Param("configuration") Configuration configuration);

    //修改配置信息
    int updateCon(@Param("configuration") Configuration configuration);

    //删除配置信息
    int deleteCon(@Param("Id") Integer Id);
}
