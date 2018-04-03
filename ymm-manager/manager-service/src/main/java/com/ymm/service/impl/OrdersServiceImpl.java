package com.ymm.service.impl;

import com.ymm.dao.OrdersMapper;
import com.ymm.pojo.dto.OrdersQuery;
import com.ymm.pojo.dto.Page;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.pojo.dto.SwitchCheck;
import com.ymm.service.OrdersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {


    @Autowired
    OrdersMapper ordersMapper;

    @Override
    public int updateOrdersStatus(SwitchCheck switchCheck) {
        return ordersMapper.updateOrdersStatus(switchCheck);
    }

    @Override
    public Integer UpdateOrders(Orders orders) {
        return ordersMapper.UpdateOrders(orders);
    }

    @Override
    public Integer AllUpdateDelStatusById(List<Long> ids) {
        int i =0;
        try {
            for(int j=0;j<ids.size();j++){
                Orders orders=new Orders();
                orders.setDeliver_status(2);
                orders.setOrder_id(ids.get(j));
                i+=ordersMapper.AllUpdateDelStatusById(orders);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int UpdateDelierStatusById(Integer id) {
        return ordersMapper.UpdateDelierStatusById(id);
    }

    @Override
    public List<Orders> selectAllOrders(@Param("page") Page page, @Param("ordersQuery") OrdersQuery ordersQuery) {
        List<Orders> ordersList=ordersMapper.selectAllOrders(page,ordersQuery);
        return ordersList;
    }

    @Override
    public int countOrders(OrdersQuery ordersQuery) {
        return ordersMapper.countOrders(ordersQuery);
    }
}
