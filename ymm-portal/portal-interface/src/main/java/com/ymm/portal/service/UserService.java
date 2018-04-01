package com.ymm.portal.service;

import com.ymm.commons.pojo.po.Users;

public interface UserService {
    Users queryByUsernameOrPhone(Users user);
    Users checkLogin(Users user);

    void register(Users user);

    Users checkOldPass(Users user);
    Users selectUserAddressCartOrders(Users user);
}
