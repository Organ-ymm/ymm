package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/28 14:11
 * Version:1.0
 */
@Controller
@RequestMapping("/address")
public class AddressAction {
    @Autowired
    private AddressService addressService;

    /*
        添加收货地址
     */
    @ResponseBody
    @RequestMapping(value = "/findAddress",method = RequestMethod.POST)
    public int findAddress(@RequestParam("address") Address address, HttpSession session){
        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        int i = 0;
        try {
            i = addressService.addAddress(user_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }


}
