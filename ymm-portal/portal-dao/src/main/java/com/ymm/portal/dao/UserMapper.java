package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Users;

public interface UserMapper {
    Users queryByUsernameOrPhone(Users user);
    Users checkLogin(Users user);

    void register(Users user);
}
