package cn.auto.pojo;

public class Administrator {
    private Integer id;  //编号
    private String userName;  //管理员账户
    private String passWord;    //管理员密码
    private double money;   //管理员金额
    private double autoMoney;   //汽车价格

    public double getAutoMoney() {
        return autoMoney;
    }

    public void setAutoMoney(double autoMoney) {
        this.autoMoney = autoMoney;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }
}
