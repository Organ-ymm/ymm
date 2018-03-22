package com.ymm.web;

import com.ymm.pojo.dto.MessageResult;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Admin;
import com.ymm.pojo.vo.AdminQuery;
import com.ymm.service.AdminService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class AdminAction {
    @Autowired
    AdminService adminService;
    /**
     * 登陆
     */
    @ResponseBody
    @RequestMapping(value = "/loginConfirm" ,method = RequestMethod.POST)
    public String  login(HttpSession session, Admin admin) {
        Admin admin1 = adminService.selectAdminByUsername(admin);
        if(admin1 !=null){
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
    @RequestMapping(value="/adminList",method= RequestMethod.GET)
    public MessageResult<Admin> adminList(Page page,AdminQuery query ){
        System.out.println(query);
        MessageResult<Admin> messageResult = new MessageResult<>();
        int countAdmin = adminService.countAdmin(query);
        List<Admin> admins = adminService.selectAllAdmin(page,query);
        messageResult.setCode(0);
        messageResult.setCount(countAdmin);
        messageResult.setMsg("管理员列表");
        messageResult.setData(admins);
        return messageResult;
    }
    @ResponseBody
    @RequestMapping(value="/addAdmin",method= RequestMethod.POST)
    public String addAdmin(Admin admin){
        try{
            Date date = new Date();
            SimpleDateFormat simpleDate = new SimpleDateFormat();
            simpleDate.format(date);
            admin.setAd_addTime(date);
            admin.setAd_status(1);
            adminService.addAdmin(admin);
            return "1";
        }catch (Exception e){
            e.printStackTrace();
        }
        return "0";
    }
}

