package com.ymm.portal.service;


import com.ymm.commons.pojo.po.Orders;
import com.ymm.commons.pojo.po.Users;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface UserService {
    Users queryByUsernameOrPhone(Users user);
    Users checkLogin(Users user);

    void register(Users user);

    Users checkOldPass(Users user);
    Users selectUserAddressCartOrders(Users user);

    List<Order> getPayOrder(Users user);

    List<Order> getDeliverOrder(Users user);

    List<Orders> selectOrdersAndGoods(Users user);

    int countOrder(Users user);
}
