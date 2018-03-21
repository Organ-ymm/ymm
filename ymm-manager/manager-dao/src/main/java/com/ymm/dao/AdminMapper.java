package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;
import com.ymm.pojo.vo.AdminQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface AdminMapper {
    Admin selectAdminByUsername(Admin admin);
    Admin selectAdminById(int id);
    List<Admin> selectAllAdmin(@Param("page")Page page, @Param("query")AdminQuery query);
    int countAdmin(@Param("query")AdminQuery query);

    void addAdmin(Admin admin);
}
