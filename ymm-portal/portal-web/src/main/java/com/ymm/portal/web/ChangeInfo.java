package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChangeInfo {
    @Autowired
    UserService userService;

    /**
     * 验证原密码是否正确
     */
    @ResponseBody
    @RequestMapping(value = "/checkOldPass",method = RequestMethod.POST)
    public int checkOldPass(Users user){
        Users user2 = userService.checkOldPass(user);
        if (user2!=null){
            return 1;
        }
        return 0;
    }

}
