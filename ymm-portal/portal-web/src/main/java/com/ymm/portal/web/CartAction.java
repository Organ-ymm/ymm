package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.vo.CartCustom;
import com.ymm.portal.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

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

    /**
     * 展示列表信息
     * return 购物车详情
     */
    @ResponseBody
    @RequestMapping(value="/listCustomCart",method= RequestMethod.GET)
    public List<CartCustom> listCustomCart(HttpSession session){
        Users user= (Users) session.getAttribute("user");
        List<CartCustom> customCartList = cartService.listCustomCart(user.getUser_id());

        return customCartList;
    }

}
