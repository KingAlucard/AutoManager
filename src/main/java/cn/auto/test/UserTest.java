package cn.auto.test;

import cn.auto.pojo.User;
import cn.auto.service.UserService;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class UserTest {
    public  static Logger logger=Logger.getLogger(UserTest.class);
    @Test
    public  void test(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService =(UserService) context.getBean("userService");
        List<User> users = userService.selectUser();
        for (User user: users) {
            logger.info(user.toString());
        }
    }
    @Test
    public  void test1(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService =(UserService) context.getBean("userService");
        List<User> users = userService.selectUserByName("三");
        for (User user: users) {
            logger.info(user.toString());
        }
    }
    @Test
    public  void test2(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService = (UserService) context.getBean("userService");
        boolean userNoName = userService.userNoName("张三1");
        logger.info(userNoName);
    }
    @Test
    public void test3() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService = (UserService) context.getBean("userService");
        User user=new User();
        user.setAddress("广州");
        user.setBank("12345678978945612312");
        user.setBankPwd("123456");
        user.setCardId("430456123789456123");
        user.setDateTime("2019-05-03");
        user.setPassWord("123123");
        user.setPhone("13645678945");
        user.setUserName("小栾");

        int addUser = userService.findAddUser(user);
        if(addUser>0){
            logger.info("新增成功");
        }
    }
    @Test
    public void test4() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService = (UserService) context.getBean("userService");
        User user=new User();
        user.setAddress("广州");
        user.setBank("12345678978945612312");
        user.setBankPwd("123456");
        user.setCardId("430456123789456123");
        user.setDateTime("2019-05-03");
        user.setMoney(1500000);
        user.setPassWord("123123");
        user.setPhone("13645678945");
        user.setUserName("小q");
        user.setId(2);
        int updateUser = userService.findUpdateUser(user);
        if(updateUser>0){
            logger.info("修改成功");
        }
    }
    @Test
    public  void test5(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService = (UserService) context.getBean("userService");
        int delete = userService.findDeleteUser(2);
        if(delete>0){
            logger.info("删除成功");
        }
    }
    @Test
    public  void test6(){
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationConfig.xml");
        UserService userService = (UserService) context.getBean("userService");
        List<User> userById = userService.getUserById(1);
        for (User user: userById) {
            logger.info(user);
        }
    }
}
