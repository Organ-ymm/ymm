package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;

import java.util.List;

public interface AdminService {
    Admin selectAdminByUsername(Admin admin);
    Admin selectAdminById(int id);
    List<Admin> selectAllAdmin(Page page,String adminQueryName);
    int countAdmin(String adminQueryName);
}
