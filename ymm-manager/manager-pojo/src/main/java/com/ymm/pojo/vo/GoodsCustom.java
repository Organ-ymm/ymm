package com.ymm.pojo.vo;

import com.ymm.commons.pojo.po.Goods;

import java.io.Serializable;

public class GoodsCustom extends Goods implements Serializable {
   private String cat_name;
   private String brand_name;

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }
}
