package com.ymm.dao;

import com.ymm.pojo.po.Admin;

import java.util.List;

public interface AdminMapper {
    Admin selectAdminByUsername(Admin admin);
    Admin selectAdminById(int[] ids);
    List<Admin> selectAllAdmin();
}
