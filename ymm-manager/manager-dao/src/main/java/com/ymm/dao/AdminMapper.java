package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface AdminMapper {
    Admin selectAdminByUsername(Admin admin);
    Admin selectAdminById(int id);
    List<Admin> selectAllAdmin(Map<String,Object> map);
    int countAdmin(String adminQueryName);
}
