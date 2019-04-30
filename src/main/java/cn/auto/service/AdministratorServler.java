package cn.auto.service;

import cn.auto.pojo.Administrator;

import java.util.List;

public interface AdministratorServler {
    //查询所有管理员信息
    List<Administrator> SelectAdmin();
}
