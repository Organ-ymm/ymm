package com.ymm.portal.service;

import com.ymm.commons.pojo.po.Orders;
import com.ymm.portal.pojo.po.Address;

import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 18:19
 * Version:1.0
 */
public interface OrdersService {

    void addOrder(int user_id, String receiver_address, String receiver_name, long receiver_phone,double order_money);
    void addOrder(Orders order);
}
