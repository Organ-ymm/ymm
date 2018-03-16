package com.ymm.service;

import com.ymm.pojo.po.Admin;

import java.util.List;

public interface AdminService {
    Admin selectAdminByUsername(Admin admin);
    List<Admin> selectAdminById(int[] ids);
    List<Admin> selectAllAdmin();
}
