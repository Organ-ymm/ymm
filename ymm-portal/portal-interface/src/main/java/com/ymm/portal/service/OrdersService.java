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

    int addOrder(Orders order);

    Orders getOrderByUserId(int user_id);

    int updateOrderByOid(long order_id);
}
