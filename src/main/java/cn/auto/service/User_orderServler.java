package cn.auto.service;

import cn.auto.pojo.User_order;

import java.util.List;

public interface User_orderServler {
    //查询所有订单
    List<User_order> SelectOrder();

    //根据用户Id 查询订单
    List<User_order> SelectOrderById(Integer userId);

    //添加订单
    int findAddOrder(User_order user_order);

    //删除订单
    int findDeleteOrder(Integer Id);
}
