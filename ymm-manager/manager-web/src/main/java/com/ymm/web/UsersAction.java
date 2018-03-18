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
@RequestMapping("/user")
public class UsersAction {

    @Autowired
    private UsersService uService;

    /**
     * 会员列表页的展示
     * */
    @ResponseBody
    @RequestMapping(value="/listusers",method= RequestMethod.GET)
    public MessageResult ListUsersToJson(Page page, UsersQuery usersQuery){
        MessageResult<Users> messageResult=new MessageResult<>();
        usersQuery.setStatus(1);
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

    /**
     * 会员列表页的会员批量'删除'
     * */
    @ResponseBody
    @RequestMapping(value="/batchUpdateDel",method=RequestMethod.POST)
    public int batchUpdateDel(@RequestParam("ids[]") List<Integer> ids){
        int i=0;
        try{
            i = uService.batchUpdateDel(ids);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 会员列表页的会员单个'删除'
     * */
    @ResponseBody
    @RequestMapping(value="/singleUpdateDel",method = RequestMethod.GET)
    public int singleUpdateDel(@RequestParam("id")Integer id){
        int i=0;
        try{
            i=uService.singleUpdateDel(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }


    /**
     * 会员删除页的会员删除
     * */
    @ResponseBody
    @RequestMapping(value="/delUser",method = RequestMethod.GET)
    public int delUser(@RequestParam("id")Integer id){
        int i=0;
        try{
            i=uService.delUser(id);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 会员删除页的会员单个恢复
     * */
    @ResponseBody
    @RequestMapping(value="/singleRegain",method=RequestMethod.POST)
    public int singleRegain(@RequestParam("id")Integer id){
        int i=0;
        try{
            i=uService.singleRegain(id);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 会员删除页的会员批量恢复
     * */
    @ResponseBody
    @RequestMapping(value="/batchRegain",method=RequestMethod.POST)
    public int batchRegain(@RequestParam("ids[]") List<Integer> ids){
        int i=0;
        try{
            i = uService.batchRegain(ids);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 添加会员时的登录名验证
     * */
    @ResponseBody
    @RequestMapping(value="/verifyUsername",method = RequestMethod.POST)
    public int verifyUsername(@Param("username") String username){
        Users user=uService.verifyUsername(username);
        if(user!=null){
            return 1;
        }else{
            return 0;
        }
    }

    /**
     * 添加会员
     * */
    @ResponseBody
    @RequestMapping(value="/addUser", method = RequestMethod.POST)
    public int addUser(Users user){
        int i=0;
        try {
            i=uService.addUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 会员删除页的展示
     * */
    @ResponseBody
    @RequestMapping(value="/showDelPage",method= RequestMethod.GET)
    public MessageResult showDelPage(@Param("page")Page page, @Param("usersQuery")UsersQuery usersQuery){
        MessageResult<Users> messageResult=new MessageResult<>();
        try {
            usersQuery.setStatus(0);
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

    /**
     * 修改会员信息
     * */
    @ResponseBody
    @RequestMapping(value="/editUser")//,method = RequestMethod.POST
    public int editUser(Users user){
        int i=0;
        try {
            i=uService.updateUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

}
