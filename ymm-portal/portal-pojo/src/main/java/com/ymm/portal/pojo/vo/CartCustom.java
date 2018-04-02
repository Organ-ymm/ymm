package com.ymm.portal.pojo.vo;

import com.ymm.portal.pojo.po.Cart;

import java.io.Serializable;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/24 21:24
 * Version:1.0
 */
public class CartCustom extends Cart implements Serializable {
    private Double subTotal;
    private String goods_sn;
    private String goods_name;
    private Integer goods_number;
    private Double market_price;
    private Double shop_price;
    private Double promote_price;
    private String goods_brief;
    private String goods_thumb;
    private Integer is_hot;
    private Integer give_integral;

    public Double getSubTotal() {
        return getAmount() * shop_price;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }

    public String getGoods_sn() {
        return goods_sn;
    }

    public void setGoods_sn(String goods_sn) {
        this.goods_sn = goods_sn;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public Integer getGoods_number() {
        return goods_number;
    }

    public void setGoods_number(Integer goods_number) {
        this.goods_number = goods_number;
    }

    public Double getMarket_price() {
        return market_price;
    }

    public void setMarket_price(Double market_price) {
        this.market_price = market_price;
    }

    public Double getShop_price() {
        return shop_price;
    }

    public void setShop_price(Double shop_price) {
        this.shop_price = shop_price;
    }

    public Double getPromote_price() {
        return promote_price;
    }

    public void setPromote_price(Double promote_price) {
        this.promote_price = promote_price;
    }

    public String getGoods_brief() {
        return goods_brief;
    }

    public void setGoods_brief(String goods_brief) {
        this.goods_brief = goods_brief;
    }

    public String getGoods_thumb() {
        return goods_thumb;
    }

    public void setGoods_thumb(String goods_thumb) {
        this.goods_thumb = goods_thumb;
    }

    public Integer getIs_hot() {
        return is_hot;
    }

    public void setIs_hot(Integer is_hot) {
        this.is_hot = is_hot;
    }

    public Integer getGive_integral() {
        return give_integral;
    }

    public void setGive_integral(Integer give_integral) {
        this.give_integral = give_integral;
    }
}
