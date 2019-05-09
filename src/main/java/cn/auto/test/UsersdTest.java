package cn.auto.test;

import cn.auto.pojo.Configuration;
import cn.auto.service.ConfigurationService;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class UsersdTest {
    private static Logger logger = Logger.getLogger(UsersdTest.class);
    @Test
    public void aVoid(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationConfig.xml");
        ConfigurationService configurationService = (ConfigurationService) context.getBean("configurationServiceImpl");
        List<Configuration> users = configurationService.getCon(null);
        for (Configuration ss : users) {
            logger.info(ss.getDisplacement());
        }
    }
}
