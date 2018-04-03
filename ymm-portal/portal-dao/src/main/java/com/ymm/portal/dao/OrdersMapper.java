package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Orders;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 17:46
 * Version:1.0
 */
public interface OrdersMapper {

    int addOrder(Orders order);

    Orders getOrderByUserId(int user_id);

    int updateOrderByOid(long order_id);
}
