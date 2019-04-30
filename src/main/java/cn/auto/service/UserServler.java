package cn.auto.service;

import cn.auto.pojo.User;

import java.util.List;

public interface UserServler {
    //查询所有用户
    List<User> SelectUser();

    //使用用户名模糊查询用户
    List<User> SelectUserByName(String userName);

    //判断用户名不能重复
    List<User> UserNoName(String UserName);

    //添加用户
    int findAddUser(User user);

    //修改用户信息
    List<User> findUpdateUser(User user);

    //删除用户信息
    int findDeleteUser(Integer Id);

}
