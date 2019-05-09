package cn.auto.test;

import cn.auto.pojo.Administrator;
import cn.auto.pojo.User;
import cn.auto.pojo.User_auto;
import cn.auto.pojo.User_order;
import cn.auto.service.TranUserService;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TranTest {
    public static Logger logger = Logger.getLogger(TranTest.class);

    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationConfig.xml");
        TranUserService userService = (TranUserService) context.getBean("tranUserService");
        User user = new User();
        user.setMoney(10000000);
        user.setId(1);
        User_auto user_auto = new User_auto();
        user_auto.setId(1);
        Administrator administrator=new Administrator();
        user_auto.setAutoMoney(7200000);
        administrator.setId(1);
        if(userService.jiaoYi(user, user_auto,administrator)){
              logger.info("成功");
        }
    }
}