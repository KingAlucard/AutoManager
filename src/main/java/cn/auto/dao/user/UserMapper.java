package cn.auto.dao.user;

import cn.auto.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //查询所有用户
    List<User> getUser();

    //使用用户名模糊查询用户
    List<User> userByName(@Param("userName") String userName);

    //判断用户名不能重复
    List<User> getuserNoName(@Param("UserName") String UserName);

    //添加用户
    int addUser(@Param("user") User user);

    //修改用户信息
    List<User> updateUser(@Param("user") User user);

    //删除用户信息
    int deleteUser(@Param("Id") Integer Id);

}
