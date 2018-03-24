package com.ymm.portal.pojo.po;

import java.io.Serializable;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/24 21:18
 * Version:1.0
 */
public class Cart implements Serializable {
    private Integer user_id;
    private Integer goods_id;
    private Integer amount;
    private String add_time;

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
        this.goods_id = goods_id;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getAdd_time() {
        return add_time;
    }

    public void setAdd_time(String add_time) {
        this.add_time = add_time;
    }
}
