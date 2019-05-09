package cn.auto.service;

import cn.auto.pojo.Configuration;
import cn.auto.pojo.User_auto;

import java.util.List;

public interface ConfigurationService {
    //根据汽车编号查询汽车配置信息
    List<Configuration> getCon(User_auto AutoId);

    //新增配置信息
    int addCon(Configuration configuration);

    //修改配置信息
    List<Configuration> updateCon(Configuration configuration);

    //删除配置信息
    int deleteCon(Integer Id);
}
