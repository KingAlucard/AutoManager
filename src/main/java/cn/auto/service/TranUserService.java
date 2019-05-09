package cn.auto.service;

import cn.auto.pojo.Administrator;
import cn.auto.pojo.User;
import cn.auto.pojo.User_auto;
import org.apache.ibatis.annotations.Param;


public interface TranUserService {
    boolean jiaoYi(@Param("user") User user, @Param("user_auto") User_auto user_auto, @Param("administrator") Administrator administrator);
}
