package cn.auto.dao.administrator;

import cn.auto.pojo.Administrator;

import java.util.List;

public interface AdministratorManpper {
    //查询所有管理员信息
    List<Administrator> SelectAdmin();
}
