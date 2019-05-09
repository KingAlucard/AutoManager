package cn.auto.service;

import cn.auto.pojo.Auto_type;

import java.util.List;

public interface Auto_typeService {
    //查询所有品牌
    List<Auto_type> getType();

    //新增品牌
    int addType(Auto_type auto_type);

    //删除品牌
    int deleteType(Integer Id);

    //修改品牌
    List<Auto_type> updateType(Auto_type auto_type);

    //判断品牌名称不能重复
    List<Auto_type> gettypeByName(String name);
}
