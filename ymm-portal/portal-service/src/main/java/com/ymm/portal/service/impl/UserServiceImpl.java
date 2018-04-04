package com.ymm.portal.service.impl;

import com.ymm.commons.pojo.po.Address;
import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.dao.UserMapper;
import com.ymm.portal.service.UserService;
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
    public List<Orders> selectOrdersAndGoods(Users user) {
        List<Orders> orders = userMapper.selectOrdersAndGoods(user);
        return orders;
    }

    @Override
    public int countOrder(Users user) {
        int i = userMapper.countOrder(user);
        return i;
    }

    @Override
    public List<Address> addressList(Users user) {
        List<Address> addresses = userMapper.addressList(user);
        return addresses;
    }

    @Override
    public void addAddress(Address address) {
        userMapper.addAddress(address);

    }

    @Override
    public void updateAddress(Address address) {
        userMapper.updateAddress(address);

    }

    @Override
    public Address getAddress(Address address) {
        Address address1 = userMapper.getAddress(address);
        return address1;
    }

    @Override
    public void delAddress(Address address) {
        userMapper.delAddress(address);

    }
}
