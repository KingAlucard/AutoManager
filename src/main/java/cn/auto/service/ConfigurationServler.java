package cn.auto.service;

import cn.auto.pojo.Configuration;

import java.util.List;

public interface ConfigurationServler {
    //根据汽车编号查询汽车配置信息
    List<Configuration> SelectCon(Integer AutoId);

    //新增配置信息
    int findAddCon(Configuration configuration);

    //修改配置信息
    List<Configuration> findUpdateCon(Configuration configuration);
}
