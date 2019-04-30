package cn.auto.pojo;

public class Configuration {
    private Integer Id;         //配置编号
    private User_auto autoId;     //汽车编号获取信息
    private String engine;      //发动机
    private String gearbox;     //变速箱
    private Integer speed;      //最高时速
    private String displacement;//排量
    private String drive;       //驱动方式

    public User_auto getAutoId() {
        return autoId;
    }

    public void setAutoId(User_auto autoId) {
        this.autoId = autoId;
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getGearbox() {
        return gearbox;
    }

    public void setGearbox(String gearbox) {
        this.gearbox = gearbox;
    }

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public String getDisplacement() {
        return displacement;
    }

    public void setDisplacement(String displacement) {
        this.displacement = displacement;
    }

    public String getDrive() {
        return drive;
    }

    public void setDrive(String drive) {
        this.drive = drive;
    }

}
