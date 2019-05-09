package cn.auto.service.impl;

import cn.auto.dao.user_order.User_orderMapper;
import cn.auto.pojo.User_order;
import cn.auto.service.User_orderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("user_orderService")
public class User_orderServiceImpl implements User_orderService{
    @Resource
    public User_orderMapper user_orderMapper;

    @Override
    public List<User_order> getOrder() {
        return user_orderMapper.getOrder();
    }

    @Override
    public List<User_order> getOrderById(Integer userId) {
        return user_orderMapper.getOrderById(userId);
    }

    @Override
    public int addOrder(User_order user_order) {
        return user_orderMapper.addOrder(user_order);
    }

    @Override
    public int deleteOrder(Integer Id) {
        return user_orderMapper.deleteOrder(Id);
    }
}
