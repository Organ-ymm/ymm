package com.ymm.service.impl;

import com.ymm.commons.pojo.po.Users;
import com.ymm.dao.UsersMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.vo.UsersQuery;
import com.ymm.service.UsersService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UsersServiceImpl implements UsersService {

    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UsersMapper uMapper;

    /**
     * 显示所有符合分页和查询条件的用户
     * */
    @Override
    public List<Users> listUsersByPage(Page page, UsersQuery usersQuery) {
        Map<String ,Object> map=new HashMap<>();
        map.put("page",page);
        map.put("usersQuery",usersQuery);
        List<Users> usersList=uMapper.listUsersByPage(map);
        return usersList;
    }

    /**
     * 计算用户的数量
     * */
    @Override
    public Integer countUsers(UsersQuery usersQuery) {
        int count=uMapper.countUsers(usersQuery);
        return count;
    }

    /**
     * 添加用户时，用户名的验证
     * */
    @Override
    public Users verifyUsername(String username) {
        Users users=new Users();
        users.setUsername(username);
        Users user=uMapper.verifyUsername(users);
        return user;
    }

    /**
     * 添加用户
    */
    @Override
    public Integer addUser(Users user) {
        int i=0;
        user.setStatus(1);
        user.setRank_points(0);
        user.setRank_id(0);
        Date date =new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String reg_time=sdf.format(date);
        user.setReg_time(reg_time);
        i=uMapper.addUser(user);
        return i;
    }

    /**
     * 单个“删除”用户，修改用户的状态status为0
     * */
    @Override
    public Integer singleUpdateDel(Integer id) {
        int i=0;
        try{
            Users user=new Users();
            user.setStatus(0);
            user.setUser_id(id);
            i=uMapper.updateState(user);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 单个恢复用户，修改用户的状态status为1
     * */
    @Override
    public Integer singleRegain(Integer id) {
        int i=0;
        try{
            Users user=new Users();
            user.setUser_id(id);
            user.setStatus(1);
            i=uMapper.updateState(user);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 批量“删除”用户，修改用户的状态status为0
    */
    @Override
    public Integer batchUpdateDel(List<Integer> ids) {
        int i=0;
        try {
            for(int j=0;j<ids.size();j++){
                Users user=new Users();
                user.setStatus(0);
                user.setUser_id(ids.get(j));
                i+=uMapper.updateState(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }


    /**
     * 批量恢复用户，修改用户的状态status为1
     */
    @Override
    public Integer batchRegain(List<Integer> ids) {
        int i=0;
        try {
            for(int j=0;j<ids.size();j++){
                Users user=new Users();
                user.setStatus(1);
                user.setUser_id(ids.get(j));
                i+=uMapper.updateState(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 删除用户
     * */
    @Override
    public Integer delUser(Integer id) {
        Users user=new Users();
        user.setUser_id(id);
        int i=0;
        try{
            i=uMapper.delUser(user);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public Integer updateUser(Users user) {
        int i=0;
        try {
            i=uMapper.updateUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
