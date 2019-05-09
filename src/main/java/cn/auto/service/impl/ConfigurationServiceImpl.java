package cn.auto.service.impl;

import cn.auto.pojo.Configuration;
import cn.auto.pojo.User_auto;
import cn.auto.service.ConfigurationService;

import java.util.List;

public class ConfigurationServiceImpl implements ConfigurationService {

    @Override
    public List<Configuration> getCon(User_auto AutoId) {
        return null;
    }

    @Override
    public int addCon(Configuration configuration) {
        return 0;
    }

    @Override
    public List<Configuration> updateCon(Configuration configuration) {
        return null;
    }

    @Override
    public int deleteCon(Integer Id) {
        return 0;
    }
}
