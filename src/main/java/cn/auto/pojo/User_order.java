package cn.auto.pojo;

public class User_order {
    private Integer id;         //订单编号
    private Integer userId;        //用户编号
    private Integer autoId;   //汽车编号
    private String orderTime;   //订单时间
    private double money;       //订单价格

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getAutoId() {
        return autoId;
    }

    public void setAutoId(Integer autoId) {
        this.autoId = autoId;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "User_order{" +
                "id=" + id +
                ", userId=" + userId +
                ", autoId=" + autoId +
                ", orderTime='" + orderTime + '\'' +
                ", money=" + money +
                '}';
    }
}
