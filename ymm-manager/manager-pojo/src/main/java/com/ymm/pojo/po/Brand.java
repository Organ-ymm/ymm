package com.ymm.pojo.po;

import java.io.Serializable;
import java.util.Date;

public class Brand implements Serializable {
    private int brand_id;//品牌号
    private String brand_name;//品牌名称
    private int cat_id;
    private String logo;//图片信息
    private Date add_time;//加入时间
    private String country;//所属国家
    private String brand_desc;//品牌描述
    private int status;//状态

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Date getAdd_time() {
        return add_time;
    }

    public void setAdd_time(Date add_time) {
        this.add_time = add_time;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getBrand_desc() {
        return brand_desc;
    }

    public void setBrand_desc(String brand_desc) {
        this.brand_desc = brand_desc;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public Brand() {}
}
