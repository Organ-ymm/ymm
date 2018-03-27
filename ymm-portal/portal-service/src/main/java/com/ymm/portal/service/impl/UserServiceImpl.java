package com.ymm.portal.service.impl;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.dao.UserMapper;
import com.ymm.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
