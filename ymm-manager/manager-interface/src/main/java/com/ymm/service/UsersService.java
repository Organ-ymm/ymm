package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Users;
import com.ymm.pojo.vo.UsersQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsersService {

    List<Users> listUsersByPage(Page page, UsersQuery usersQuery);

    int batchUpdateDel(List<Integer> ids);

    Integer countUsers(UsersQuery usersQuery);
}