package cn.auto.service.impl;

import cn.auto.dao.auto_type.Auto_typeMapper;
import cn.auto.pojo.Auto_type;
import cn.auto.service.Auto_typeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("auto_typeServiceImpl")
public class Auto_typeServiceImpl implements Auto_typeService {
    @Resource
    private Auto_typeMapper auto_typeMapper;

    @Override
    public List<Auto_type> getType() {
        return auto_typeMapper.getType();
    }

    @Override
    public int addType(String name) {
        return auto_typeMapper.addType(name);
    }

    @Override
    public int deleteType(Integer Id) {
        return auto_typeMapper.deleteType(Id);
    }

    @Override
    public int updateType(Auto_type auto_type) {
        return auto_typeMapper.updateType(auto_type);
    }

    @Override
    public List<Auto_type> gettypeByName(String name) {
        return auto_typeMapper.gettypeByName(name);
    }
}
