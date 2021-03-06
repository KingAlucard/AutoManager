package cn.auto.pojo;

public class User_auto {

    private Integer id;         //汽车编号
    private String autoName;    //汽车名称
    private String production;  //汽车出厂日期
    private Integer autoTypeId; //汽车品牌
    private Integer autoConfig; //汽车配置
    private String autoColor;   //汽车颜色
    private double autoMoney;   //汽车价格
    private String autoImg;     //汽车图片路径
    private Integer adminAuto; //商店所有权
    private Integer userAuto;   //用户所有权
    private Administrator adminId;   //g管理员的Id

    public Administrator getAdminId() {
        return adminId;
    }

    public void setAdminId(Administrator adminId) {
        this.adminId = adminId;
    }

    public Integer getAutoTypeId() {
        return autoTypeId;
    }

    public void setAutoTypeId(Integer autoTypeId) {
        this.autoTypeId = autoTypeId;
    }

    public Integer getAutoConfig() {
        return autoConfig;
    }

    public void setAutoConfig(Integer autoConfig) {
        this.autoConfig = autoConfig;
    }

    public double getAutoMoney() {
        return autoMoney;
    }

    public void setAutoMoney(double autoMoney) {
        this.autoMoney = autoMoney;
    }

    public Integer getAdminAuto() {
        return adminAuto;
    }

    public void setAdminAuto(Integer adminAuto) {
        this.adminAuto = adminAuto;
    }

    public Integer getUserAuto() {
        return userAuto;
    }

    public void setUserAuto(Integer userAuto) {
        this.userAuto = userAuto;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAutoName() {
        return autoName;
    }

    public void setAutoName(String autoName) {
        this.autoName = autoName;
    }

    public String getProduction() {
        return production;
    }

    public void setProduction(String production) {
        this.production = production;
    }


    public String getAutoColor() {
        return autoColor;
    }

    public void setAutoColor(String autoColor) {
        this.autoColor = autoColor;
    }


    public String getAutoImg() {
        return autoImg;
    }

    public void setAutoImg(String autoImg) {
        this.autoImg = autoImg;
    }

}
