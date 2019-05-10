package cn.auto.service.impl;

import cn.auto.dao.user.UserMapper;
import cn.auto.pojo.User;
import cn.auto.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    public UserMapper userMapper;
    @Override
    public List<User> selectUser() {
        return userMapper.getUser();
    }

    @Override
    public List<User> getUserById(Integer Id) {
        return userMapper.getUserById(Id);
    }

    @Override
    public List<User> selectUserByName(String userName) {
        return userMapper.userByName(userName);
    }

    @Override
    public boolean userNoName(String UserName) {
        List<User> list = userMapper.getuserNoName(UserName);
        if(list.size()==0){
            return true;
        }
        return  false;
    }

    @Override
    public int findAddUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int findUpdateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int findDeleteUser(Integer Id) {
        return userMapper.deleteUser(Id);
    }
}
