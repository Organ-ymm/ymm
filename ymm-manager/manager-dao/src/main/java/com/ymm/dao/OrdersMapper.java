package com.ymm.dao;


import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Orders;

import java.util.List;

public interface OrdersMapper {
    List<Orders> selectAllOrders(Page page);
    int countOrders();
    int updateOrdersDelstuById(Integer id);
    int insertOrders(Orders orders);
    int updateOrders(Orders orders);
}
