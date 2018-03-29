package com.ymm.portal.service.impl;

import com.ymm.commons.pojo.po.Orders;
import com.ymm.portal.dao.OrdersMapper;
import com.ymm.portal.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 19:02
 * Version:1.0
 */
@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    private OrdersMapper ordersMapper;

    @Override
    public void addOrder(Orders order) {
        order.setDeliver_status(0);
        order.setPay_status(0);
        Date date =new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String order_time=sdf.format(date);
        order.setOrder_time(order_time);
        SimpleDateFormat sdf1=new SimpleDateFormat("yyyyMMddHHmmss");
        StringBuilder order_id1=new StringBuilder(sdf1.format(date));
        int order_id2=(int)(Math.random()*9+1)*1000;
        long order_id=Long.parseLong((order_id1.append(order_id2)).toString());
        order.setOrder_id(order_id);
        try {
            ordersMapper.addOrder(order);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
