package cn.auto.service.impl;

import cn.auto.dao.administrator.AdministratorMapper;
import cn.auto.dao.user.UserMapper;
import cn.auto.dao.user_order.User_orderMapper;
import cn.auto.pojo.Administrator;
import cn.auto.pojo.User;
import cn.auto.pojo.User_auto;
import cn.auto.pojo.User_order;
import cn.auto.service.TranUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("tranUserService")
public class TranUserServiceImpl implements TranUserService {
    @Resource
    public UserMapper userMapper;
    @Resource
    public AdministratorMapper administratorMapper;
    @Resource
    public User_orderMapper user_orderMapper;
    @Override
    public boolean jiaoYi(User user, User_auto user_auto,Administrator administrator) {
        User_order user_order=null;
        // 先判断用户金额是否符合购车
        if (user.getMoney() >= user_auto.getAutoMoney()) {
            //用户金额-汽车金额
            user.setMoney(user.getMoney() - user_auto.getAutoMoney());
            //调用修改用户金额的方法
            int result = userMapper.updateUser(user);
            // 如果扣款成功就调用修改管理员金额的方法
            if (result > 0) {
                // 管理员的金额+汽车金额
                administrator.setMoney(administrator.getMoney() + user_auto.getAutoMoney());
                int administrators = administratorMapper.updateAdminByMoney(administrator.getId(),user_auto.getAutoMoney());
                if (administrators>0) {

                    //用户金额成功修改后就新增一条订单信息
                    user_order=new User_order();
                    user_order.setUserId(user.getId());
                    user_order.setAutoId(user_auto.getId());
                    user_order.setMoney(user_auto.getAutoMoney());
                    int addOrder = user_orderMapper.addOrder(user_order);
                    System.out.println("==================>"+user_order.getAutoId());
                    if (addOrder>0){
                        return  true;
                    }
                }

            }
        }
        return false;
    }
}
