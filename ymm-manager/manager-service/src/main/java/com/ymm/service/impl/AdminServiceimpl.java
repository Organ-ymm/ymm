package com.ymm.service.impl;

import com.ymm.dao.AdminMapper;
import com.ymm.pojo.po.Admin;
import com.ymm.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceimpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;

    @Override
    public Admin selectAdminByUsername(Admin admin) {
        Admin admin1 = adminMapper.selectAdminByUsername(admin);
        return admin1;
    }

    @Override
    public List<Admin> selectAdminById(int[] ids) {

        return null;
    }

    @Override
    public List<Admin> selectAllAdmin() {
        List<Admin> admins = adminMapper.selectAllAdmin();
        return admins;
    }
}
