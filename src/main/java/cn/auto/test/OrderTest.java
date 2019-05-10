package cn.auto.test;

import cn.auto.pojo.User_order;
import cn.auto.service.User_orderService;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class OrderTest {
    public  static Logger logger=Logger.getLogger(OrderTest.class);
    @Test
    public  void test(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        User_orderService orderService =(User_orderService) context.getBean("user_orderService");
        List<User_order> user_orders = orderService.selectOrder();
        logger.info("===================>"+user_orders.size());
        for (User_order user: user_orders) {
            logger.info(user.toString());
        }
    }
    @Test
    public  void test1(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        User_orderService orderService =(User_orderService) context.getBean("user_orderService");
        List<User_order> user_orders = orderService.selectOrderById(1);
        logger.info("===================>"+user_orders.size());
        for (User_order user: user_orders) {
            logger.info(user.toString());
        }
    }
    @Test
    public  void test2(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        User_orderService orderService =(User_orderService) context.getBean("user_orderService");
        User_order user_order=new User_order();
        user_order.setMoney(1000000);
        user_order.setAutoId(2);
        user_order.setUserId(1);
      int  user_orders = orderService.findAddOrder(user_order);
        if(user_orders>0){
            logger.info("新增成功");
        }
    }
    @Test
    public  void test3(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        User_orderService orderService =(User_orderService) context.getBean("user_orderService");
        int deleteOrder = orderService.findDeleteOrder(2);
        if(deleteOrder>0){
            logger.info("删除成功");
        }
    }
}
