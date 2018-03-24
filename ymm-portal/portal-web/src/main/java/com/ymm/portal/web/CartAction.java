package com.ymm.portal.web;

import com.ymm.portal.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/24 21:11
 * Version:1.0
 */
@Controller
@RequestMapping("/cart")
public class CartAction {
    @Autowired
    private CartService cartService;

    @ResponseBody
    @RequestMapping("/listCart")
    public String listCart(){
        return "";
    }

}
