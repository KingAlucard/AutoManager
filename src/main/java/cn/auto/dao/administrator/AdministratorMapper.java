package cn.auto.dao.administrator;

import cn.auto.pojo.Administrator;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdministratorMapper {
    //查询所有管理员信息
    List<Administrator> selectAdmin();

    //添加管理员信息。
    int findAddAdmin(@Param("administrator") Administrator administrator);

    //修改管理员信息
    List<Administrator> findupdateAdmin(@Param("administrator") Administrator administrator);

    //删除管理员信息
    int findDseleteAdmin(@Param("Id") Integer Id);
}
