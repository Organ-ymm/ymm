package com.ymm.dao;


import com.ymm.pojo.dto.OrdersQuery;

import com.ymm.pojo.dto.Page;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.pojo.dto.SwitchCheck;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrdersMapper {
    //List<Orders> selectAllOrders(Map<String,Object> map);
    int countOrders(@Param("ordersQuery") OrdersQuery ordersQuery);

    List<Orders> selectAllOrders(@Param("page") Page page, @Param("ordersQuery") OrdersQuery ordersQuery);
    Integer UpdateDelierStatusById(Integer id);
    Integer AllUpdateDelStatusById(Orders orders);
    Integer UpdateOrders(Orders orders);
    int updateOrdersStatus(SwitchCheck switchCheck);
}
