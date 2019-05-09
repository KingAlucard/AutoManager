package cn.auto.service;

import cn.auto.pojo.Administrator;

import java.util.List;

public interface AdministratorService {
    //查询所有管理员信息
    List<Administrator> getAdmin();

    //添加管理员信息。
    int addAdmin(Administrator administrator);

    //修改管理员信息
    int updateAdmin(Administrator administrator);

    //删除管理员信息
    int deleteAdmin(Integer Id);
}
