package cn.auto.dao.auto_type;

import cn.auto.pojo.Auto_type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Auto_typeMapper {
    //查询所有品牌
    List<Auto_type> selectType();

    //新增品牌
    int findAddType(@Param("auto_type") Auto_type auto_type);

    //删除品牌
    int findDeleteType(@Param("Id") Integer Id);

    //修改品牌
    List<Auto_type> findUpdateType(@Param("auto_type") Auto_type auto_type);

    //判断品牌名称不能重复
    List<Auto_type> typeByName(@Param("name") String name);
}
