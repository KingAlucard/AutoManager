package cn.auto.dao.administrator;

import cn.auto.pojo.Administrator;

import java.util.List;

public interface AdministratorManpper {
    //查询所有管理员信息
    List<Administrator> SelectAdmin();

    //添加管理员信息
    int findAddAdmin(Administrator administrator);

    //修改管理员信息
    List<Administrator> findupdateAdmin(Administrator administrator);

    //删除管理员信息
    int findDeleteAdmin(Integer Id);
}
