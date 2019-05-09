package cn.auto.service;

import cn.auto.pojo.User_order;

import java.util.List;

public interface User_orderService {
    //查询所有订单
    List<User_order> getOrder();

    //根据用户Id 查询订单
    List<User_order> getOrderById(Integer userId);

    //添加订单
    int addOrder(User_order user_order);

    //删除订单
    int deleteOrder(Integer Id);
}
