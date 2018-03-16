package com.ymm.service.impl;

import com.ymm.dao.UsersMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Users;
import com.ymm.pojo.vo.UsersQuery;
import com.ymm.service.UsersService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UsersServiceImpl implements UsersService {

    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UsersMapper uMapper;

    /*@Override
    public List<Users> listUsersByPage(Page page) {
        List<Users> usersList=null;
        try {
            usersList=uMapper.listUsersByPage(page);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usersList;
    }*/

    @Override
    public List<Users> listUsersByPage(Page page, UsersQuery usersQuery) {
        Map<String ,Object> map=new HashMap<>();
        map.put("page",page);
        map.put("usersQuery",usersQuery);
        List<Users> usersList=uMapper.listUsersByPage(map);
        return usersList;
    }

    @Override
    public Integer countUsers(UsersQuery usersQuery) {
        int count=uMapper.countUsers(usersQuery);
        return count;
    }

    /**
     * 批量“删除”用户，修改用户的状态status为0
    */
    @Override
    public int batchUpdateDel(List<Integer> ids) {
        int i=0;
        try {
            for(int j=0;j<ids.size();j++){
                Users user=new Users();
                user.setStatus(0);
                user.setUser_id(ids.get(j));
                i=uMapper.batchUpdateDel(user)+1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

}
