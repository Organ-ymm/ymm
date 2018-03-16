package com.ymm.web;

import com.ymm.pojo.po.Admin;
import com.ymm.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminAction {
    @Autowired
    AdminService adminService;
    /**
     * 登陆
     */
    @RequestMapping(value = "/tologin")
    public String toLogin() {
        return "login";
    }
    @ResponseBody
    @RequestMapping(value = "/login")
    public String  login(HttpSession session, Admin admin) {
        Admin admin1 = adminService.selectAdminByUsername(admin);
        if(admin1 !=null ){
            //允许登录
            session.setAttribute("admin", admin1);
            return "1";
        }else{
            //校验不通过
            return "0";
        }
    }
    /**
     * 管理员管理列表
     */
    @ResponseBody
    @RequestMapping(value="/admin/list",method= RequestMethod.GET)
    public List<Admin> adminList(@PathVariable String page){
        List<Admin> admins = adminService.selectAllAdmin();
        return admins;
    }
}

