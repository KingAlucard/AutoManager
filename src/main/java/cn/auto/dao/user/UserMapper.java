package cn.auto.dao.user;

import cn.auto.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //查询所有用户
    List<User> selectUser();

    //使用用户名模糊查询用户
    List<User> selectUserByName(@Param("userName") String userName);

    //判断用户名不能重复
    List<User> userNoName(@Param("UserName") String UserName);

    //添加用户
    int findAddUser(@Param("user") User user);

    //修改用户信息
    List<User> findUpdateUser(@Param("user") User user);

    //删除用户信息
    int findDeleteUser(@Param("Id") Integer Id);

}
