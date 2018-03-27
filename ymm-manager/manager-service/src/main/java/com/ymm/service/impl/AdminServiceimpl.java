package com.ymm.service.impl;

import com.ymm.dao.AdminMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;
import com.ymm.pojo.vo.AdminQuery;
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
    public Admin selectAdminById(int id) {
        Admin admin = adminMapper.selectAdminById(id);
        return admin;
    }

    @Override
    public List<Admin> selectAllAdmin(Page page, AdminQuery query) {
        List<Admin> admins = adminMapper.selectAllAdmin(page,query);
        return admins;
    }

    @Override
    public int countAdmin(AdminQuery query) {
        int count = adminMapper.countAdmin(query);
        return count;
    }

    @Override
    public void addAdmin(Admin admin) {
        adminMapper.addAdmin(admin);
    }

    @Override
    public void changeStatus(Admin admin) {
        adminMapper.changeStatus(admin);
    }

    @Override
    public void saveEdit(Admin admin) {
        adminMapper.saveEdit(admin);
    }

    @Override
    public void delAdmin(Admin admin) {
      adminMapper.delAdmin(admin);
    }

    @Override
    public void delBatch(List<Integer> ids) {
       adminMapper.delBatch(ids);

    }
}
