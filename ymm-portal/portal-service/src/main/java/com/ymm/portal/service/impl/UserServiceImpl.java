package com.ymm.portal.service.impl;

import com.ymm.commons.dto.Page;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.dao.UserMapper;
import com.ymm.portal.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public Users queryByUsernameOrPhone(Users user) {
        Users user1 = userMapper.queryByUsernameOrPhone(user);
        return user1;
    }

    @Override
    public Users checkLogin(Users user) {
        Users user1 = userMapper.checkLogin(user);
        return user1;
    }

    @Override
    public void register(Users user) {
       userMapper.register(user);
    }

    @Override
    public Users checkOldPass(Users user) {
        Users user2 =userMapper.checkOldPass(user);
        return user2;
    }

    @Override
    public Users selectUserAddressCartOrders(Users user) {
        Users user1 = userMapper.selectUserAddressCartOrders(user);
        return user1;
    }

    @Override
    public List<Order> getPayOrder(Users user) {
      List<Order> orders = userMapper.getPayOrder(user);
        return orders;
    }

    @Override
    public List<Order> getDeliverOrder(Users user) {
     List<Order> orders =  userMapper.getDeliverOrder(user);
        return orders;
    }

    @Override
    public List<Orders> selectOrdersAndGoods(Users user,Page page) {
        List<Orders> orders = userMapper.selectOrdersAndGoods(user,page);
        return orders;
    }

    @Override
    public int countOrder(Users user) {
        int i = userMapper.countOrder(user);
        return i;
    }
}
