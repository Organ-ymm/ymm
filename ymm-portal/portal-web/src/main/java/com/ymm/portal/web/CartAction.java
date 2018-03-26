package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.vo.CartCustom;
import com.ymm.portal.service.CartService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
     * 展示购物车信息
     * return 购物车详情
     */
    //@ResponseBody
    @RequestMapping(value="/listCustomCart",method= RequestMethod.GET)
    public String listCustomCart(HttpSession session,Model model){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        Users user= (Users) session.getAttribute("user");
        List<CartCustom> customCartList = cartService.listCustomCart(user.getUser_id());
        model.addAttribute("customCartList",customCartList);
        return "pages/cart/cartlist";
    }
    @ResponseBody
    @RequestMapping(value="/delCart",method= RequestMethod.GET)
    public int delCart(@RequestParam("goods_id")int goods_id, HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        int i= 0;
        int[] ids={goods_id};
        Users user= (Users) session.getAttribute("user");
        try {
            i = cartService.delCart(ids,user.getUser_id());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @ResponseBody
    @RequestMapping(value="/updateAmount",method = RequestMethod.GET)
    public int amountPlus(@RequestParam("goods_id")int goods_id,@RequestParam("amount")int amount,HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        int i=0;
        Users user= (Users) session.getAttribute("user");
        try {
            i = cartService.updateAmount(goods_id,amount,user.getUser_id());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
