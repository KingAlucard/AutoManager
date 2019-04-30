package cn.auto.pojo;

public class User_order {
    private Integer Id;         //订单编号
    private User userId;        //用户编号
    private User_auto autoId;   //汽车编号
    private String orderTime;   //订单时间
    private String money;       //订单价格

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public User_auto getAutoId() {
        return autoId;
    }

    public void setAutoId(User_auto autoId) {
        this.autoId = autoId;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }
}
