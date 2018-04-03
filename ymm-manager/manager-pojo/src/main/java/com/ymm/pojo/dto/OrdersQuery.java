package com.ymm.pojo.dto;

import com.ymm.commons.pojo.po.Orders;

import java.io.Serializable;

public class OrdersQuery extends Orders implements Serializable{
    private String ordersText;

    private Integer deliver_status;

    public String getOrdersText() {
        return ordersText;
    }

    public void setOrdersText(String ordersText) {
        this.ordersText = ordersText;
    }

    @Override
    public Integer getDeliver_status() {
        return deliver_status;
    }

    @Override
    public void setDeliver_status(Integer deliver_status) {
        this.deliver_status = deliver_status;
    }
}
