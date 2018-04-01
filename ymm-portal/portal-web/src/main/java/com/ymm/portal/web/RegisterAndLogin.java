package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class RegisterAndLogin {
    @Autowired
    UserService userService;

    /**
     * 验证用户名手机是否存在
     */
    @ResponseBody
    @RequestMapping(value = "/queryByUsernameOrPhone",method = RequestMethod.POST)
    public int queryByUsernameOrPhone(Users user){
        try{
            Users user1 = userService.queryByUsernameOrPhone(user);
            if(user1==null){
                return 1 ;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    /**
     * 注册
     */
    @ResponseBody
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public int register(Users user){
        try{
            userService.register(user);
            return 1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    /**
     * 验证登陆
     */
    @ResponseBody
    @RequestMapping(value = "/checkLogin",method = RequestMethod.POST)
    public int checkLogin(Users user, HttpSession session){
        try{
            Users oldUser = (Users)session.getAttribute("user");
            if(oldUser!=null){
                return 1;
            }else{
                Users user1 = userService.checkLogin(user);
                if(user1!=null){
                    session.setAttribute("user",user1);
                    return 1;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    /**
     * 注销
     */
    @RequestMapping(value = "/loginOut",method = RequestMethod.GET)
    public String loginOut(Users user, HttpSession session){
        try{
            Users oldUser = (Users)session.getAttribute("user");
            if(oldUser!=null){
                session.setAttribute("user",null);
                return "index";
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "index";
    }
}
