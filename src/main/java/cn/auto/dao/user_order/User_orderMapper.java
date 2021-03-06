package cn.auto.dao.user_order;

import cn.auto.pojo.User_order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface User_orderMapper {
    //查询所有订单
    List<User_order> getOrder();

    //根据用户Id 查询订单
    List<User_order> getOrderById(@Param("userId") Integer userId);

    //添加订单
    int addOrder(@Param("user_order") User_order user_order);

    //删除订单
    int deleteOrder(@Param("Id") Integer Id);


}
