package cn.auto.service.impl;

import cn.auto.dao.configuration.ConfigurationMapper;
import cn.auto.pojo.Configuration;
import cn.auto.pojo.User_auto;
import cn.auto.service.ConfigurationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("configurationServiceImpl")
public class ConfigurationServiceImpl implements ConfigurationService {

    @Resource
    private ConfigurationMapper configurationMapper;
    @Override
    public List<Configuration> getCon(Integer autoId) {
        return configurationMapper.getCon(autoId);
    }

    @Override
    public int addCon(Configuration configuration) {
        return configurationMapper.addCon(configuration);
    }

    @Override
    public int updateCon(Configuration configuration) {
        return configurationMapper.updateCon(configuration);
    }

    @Override
    public int deleteCon(Integer Id) {
        return configurationMapper.deleteCon(Id);
    }
}
