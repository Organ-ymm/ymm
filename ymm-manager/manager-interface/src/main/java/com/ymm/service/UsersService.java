package com.ymm.service;

import com.ymm.commons.pojo.po.Users;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.vo.UsersQuery;

import java.util.List;

public interface UsersService {

    List<Users> listUsersByPage(Page page, UsersQuery usersQuery);

    Integer batchUpdateDel(List<Integer> ids);

    Integer countUsers(UsersQuery usersQuery);

    Integer addUser(Users user);

    Integer batchRegain(List<Integer> ids);

    Integer singleUpdateDel(Integer id);

    Integer delUser(Integer id);

    Integer singleRegain(Integer id);

    Users verifyUsername(String username);

    Integer updateUser(Users user);
}
