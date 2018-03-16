package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Users;
import com.ymm.pojo.vo.UsersQuery;
import com.ymm.service.UsersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UsersAction {
    @Autowired
    private UsersService uService;

    /*@ResponseBody
    @RequestMapping(value="/listusers",method= RequestMethod.GET)
    public MessageResult ListUsersToJson(Page page){
        MessageResult<Users> messageResult=new MessageResult<>();
        try {
            List<Users> usersList=uService.listUsersByPage(page);

            //int count=uService.countUsers();
            messageResult.setCode(0);
            messageResult.setCount(usersList.size());
            messageResult.setMsg("success");
            messageResult.setData(usersList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messageResult;
    }*/
    @ResponseBody
    @RequestMapping(value="/listusers",method= RequestMethod.GET)
    public MessageResult ListUsersToJson(@Param("page")Page page, @Param("usersQuery")UsersQuery usersQuery){
        MessageResult<Users> messageResult=new MessageResult<>();
        try {
            List<Users> usersList=uService.listUsersByPage(page,usersQuery);
            int count=uService.countUsers(usersQuery);
            messageResult.setCode(0);
            messageResult.setCount(count);
            messageResult.setMsg("success");
            messageResult.setData(usersList);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return messageResult;
    }

    @ResponseBody
    @RequestMapping(value="/user/batchUpdateDel",method=RequestMethod.POST)
    public int batchUpdateDel(@RequestParam("ids[]") List<Integer> ids){
        int i=0;
        try{
            i = uService.batchUpdateDel(ids);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
}