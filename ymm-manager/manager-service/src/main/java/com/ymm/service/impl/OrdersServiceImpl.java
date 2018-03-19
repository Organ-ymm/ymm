package com.ymm.service.impl;

import com.ymm.dao.OrdersMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Orders;
import com.ymm.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    OrdersMapper ordersMapper;

    @Override
    public List<Orders> selectAllOrders(Page page) {
       // System.out.println("******************我们的爱情到这刚刚好**************");
        return ordersMapper.selectAllOrders(page);
    }

    @Override
    public int countOrders() {
        System.out.println("你真的不要我了吗");
        return ordersMapper.countOrders();
    }
}
