package com.ymm.portal.pojo.vo;

import com.ymm.commons.pojo.po.Goods;

import java.io.Serializable;

/**
 * Description:
 * Author: zy
 * Date: 2018/4/4 19:47
 * Version:1.0
 */
public class SearchGoodsCustom extends Goods implements Serializable{
    private int goods_id;
    private String goods_name;
    private String goods_brief;
    private Double shop_price;
    private String goods_thumb;
    private String cat_name;

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getGoods_brief() {
        return goods_brief;
    }

    public void setGoods_brief(String goods_brief) {
        this.goods_brief = goods_brief;
    }

    public Double getShop_price() {
        return shop_price;
    }

    public void setShop_price(Double shop_price) {
        this.shop_price = shop_price;
    }

    public String getGoods_thumb() {
        return goods_thumb;
    }

    public void setGoods_thumb(String goods_thumb) {
        this.goods_thumb = goods_thumb;
    }

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }
}
