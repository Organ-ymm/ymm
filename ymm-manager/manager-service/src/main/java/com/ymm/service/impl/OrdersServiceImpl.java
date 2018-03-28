package com.ymm.service.impl;

import com.ymm.dao.OrdersMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    OrdersMapper ordersMapper;

    @Override
    public int updateOrdersDelstuById(Integer id) {
        System.out.println("*******************************************************ssbbb");
        return ordersMapper.updateOrdersDelstuById(id);
    }

    @Override
    public int updateOrders(Orders orders) {
        return ordersMapper.updateOrders(orders);
    }

    @Override
    public List<Orders> selectAllOrders(Page page) {

        return ordersMapper.selectAllOrders(page);
    }

    @Override
    public int countOrders() {
        System.out.println("你真的不要我了吗");
        return ordersMapper.countOrders();
    }
}
