package domain;

/**
 * Created by 一翎飞仙 on 2016/9/18.
 */
//车站管理
public class Station {
    private int id;//车站代码
    private String name;//车站名
    private String pinyin;//拼音码
    private String bureau;//所属铁路局
    private int level;//车站等级
    private String administrative;//所属行政区域
    private String address;//联系地址
//    构造方法

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPinyin() {
        return pinyin;
    }

    public void setPinyin(String pinyin) {
        this.pinyin = pinyin;
    }

    public String getBureau() {
        return bureau;
    }

    public void setBureau(String bureau) {
        this.bureau = bureau;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int leave) {
        this.level = leave;
    }

    public String getAdministrative() {
        return administrative;
    }

    public void setAdministrative(String administrative) {
        this.administrative = administrative;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


}
