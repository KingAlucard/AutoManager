package cn.auto.service;

import cn.auto.pojo.User;

import java.util.List;

public interface UserService {
    //查询所有用户
    List<User> getUser();
    //根据Id查询用户信息
    List<User> getUserById(Integer Id);
    //使用用户名模糊查询用户
    List<User> userByName(String userName);

    //判断用户名不能重复
    List<User> getuserNoName(String UserName);

    //添加用户
    int addUser(User user);

    //修改用户信息
    List<User> updateUser(User user);

    //删除用户信息
    int deleteUser(Integer Id);

}
