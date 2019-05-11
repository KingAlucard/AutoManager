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
    public List<User> getUser() {
        return userMapper.getUser();
    }

    @Override
    public List<User> getUserByPhone(String phone) {
        return userMapper.getUserByPhone(phone);
    }

    @Override
    public List<User> getUserById(Integer Id) {
        return userMapper.getUserById(Id);
    }

    @Override
    public List<User> userByName(String userName) {
        return userMapper.userByName(userName);
    }


    @Override
    public boolean getuserNoName(String UserName) {
        List<User> list = userMapper.getuserNoName(UserName);
        if(list.size() == 0 ){
            return false;
        }
        return  true;
    }


    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int deleteUser(Integer Id) {
        return userMapper.deleteUser(Id);
    }

}
