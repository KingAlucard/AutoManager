package cn.auto.dao.administrator;

import cn.auto.pojo.Administrator;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdministratorMapper {
    //查询所有管理员信息
    List<Administrator> getAdmin();

    //添加管理员信息。
    int addAdmin(@Param("administrator") Administrator administrator);

    //修改管理员信息
    int updateAdminByMoney(@Param("Id") Integer Id,@Param("autoMoney") double autoMoney);
    //修改管理员金额
    int updateAdmin(@Param("administrator") Administrator administrator);

    //删除管理员信息
    int deleteAdmin(@Param("Id") Integer Id);
}
