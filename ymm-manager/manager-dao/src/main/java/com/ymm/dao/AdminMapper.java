package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;
import com.ymm.pojo.vo.AdminQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {
    Admin selectAdminByUsername(Admin admin);
    Admin selectAdminById(int id);
    List<Admin> selectAllAdmin(@Param("page") Page page, @Param("query") AdminQuery query);
    int countAdmin(@Param("query") AdminQuery query);

    void addAdmin(Admin admin);

    void changeStatus(Admin admin);

    void saveEdit(Admin admin);

    void delAdmin(Admin admin);

    void delBatch(@Param("ids") List<Integer> ids);
}
