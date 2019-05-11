package cn.auto.service.impl;

import cn.auto.dao.user_auto.User_AutoMapper;
import cn.auto.pojo.User_auto;
import cn.auto.service.User_AutoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("user_AutoServiceImpl")
public class User_AutoServiceImpl implements User_AutoService {

    @Resource
    private User_AutoMapper user_autoMapper;
    @Override
    public List<User_auto> getAuto() {
        return user_autoMapper.getAuto();
    }

    @Override
    public List<User_auto> getAutoByType(Integer autoTypeId) {
        return user_autoMapper.getAutoByType(autoTypeId);
    }

    @Override
    public List<User_auto> getAutoByName(String autoName) {
        return user_autoMapper.getAutoByName(autoName);
    }

    @Override
    public int addAuto(User_auto user_auto) {
        return user_autoMapper.addAuto(user_auto);
    }

    @Override
    public int deleteAuto(Integer Id) {
        return user_autoMapper.deleteAuto(Id);
    }

    @Override
    public int updateAuto(User_auto user_auto) {
        return user_autoMapper.updateAuto(user_auto);
    }
}
