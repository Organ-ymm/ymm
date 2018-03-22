package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Orders;

import java.util.List;

public interface OrdersService {
    List<Orders> selectAllOrders(Page page);
    int countOrders();
    int updateOrdersDelstuById(Integer id);
    int updateOrders(Orders orders);
}
