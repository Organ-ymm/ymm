package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.pojo.vo.CartCustom;
import com.ymm.portal.service.AddressService;
import com.ymm.portal.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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
    @Autowired
    private AddressService addressService;

    /*
        列出该用户的购物车信息
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

    /*
        购物车商品的删除
     */
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

    /*
        购物车商品数量的增，减
     */
    @ResponseBody
    @RequestMapping(value="/updateAmount",method = RequestMethod.GET)
    public int amountPlus(@RequestParam("goods_id")int goods_id,@RequestParam("amount")int amount,HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        int i=0;
        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        try {
            i = cartService.updateAmount(goods_id,amount,user_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /*
        商品添加购物车
     */
    @ResponseBody
    @RequestMapping(value="/addCart")
    public int addCart(@RequestParam("goods_id")int goods_id,@RequestParam("amount")int amount,HttpSession session){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        int i=0;
        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        CartCustom cart= null;
        //先查询该用户的购物车内是否有该商品
        try {
            cart = cartService.findItem(user_id,goods_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(cart!=null){//若购物车有该商品，则添加数量
            try {
                int oldAmount=cart.getAmount();
                i = cartService.addAmount(goods_id,oldAmount+amount,user_id);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{//若购物车没有该商品，则添加纪录
            try {
                i=cartService.addCart(goods_id,amount,user_id);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return i;
    }

    /*
        结算页面的地址信息和购物信息
     */
    //@ResponseBody
    @RequestMapping(value="/listOrderItem",method= RequestMethod.GET)
    public String listOrderItem(@RequestParam("goods_id")String ids,HttpSession session,Model model){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);

        Users user= (Users) session.getAttribute("user");
        int user_id=user.getUser_id();
        List<CartCustom> orderItem = new ArrayList<>();
        String[] goods_ids=ids.split("[,]");
        for(int i=0;i<goods_ids.length;i++){
            int goods_id=Integer.parseInt(goods_ids[i]);
            CartCustom cart=cartService.findItem(user_id,goods_id);
            orderItem.add(cart);
        }
        List<Address> addressList = addressService.listAddress(user_id);
        model.addAttribute("orderItem",orderItem);
        model.addAttribute("addressList",addressList);
        return "pages/order/confirmOrder";
    }
}
