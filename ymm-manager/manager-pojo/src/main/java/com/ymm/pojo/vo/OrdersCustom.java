package com.ymm.pojo.vo;
import com.ymm.commons.pojo.po.Orders;

import java.io.Serializable;

public class OrdersCustom extends Orders implements Serializable {
   private Orders orders;

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
