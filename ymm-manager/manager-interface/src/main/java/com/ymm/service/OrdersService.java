package com.ymm.service;

import com.ymm.pojo.dto.OrdersQuery;
import com.ymm.pojo.dto.Page;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.pojo.dto.SwitchCheck;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrdersService {
    List<Orders> selectAllOrders(@Param("page") Page page, @Param("ordersQuery") OrdersQuery ordersQuery);
    int countOrders(@Param("ordersQuery") OrdersQuery ordersQuery);
    int UpdateDelierStatusById(Integer id);
    Integer AllUpdateDelStatusById(List<Long> ids);
    Integer UpdateOrders(Orders orders);
    int updateOrdersStatus(SwitchCheck switchCheck);
}
