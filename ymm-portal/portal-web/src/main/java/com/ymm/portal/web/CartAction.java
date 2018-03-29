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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

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
    public String listCustomCart(HttpSession session, Model model){
        Users user1=new Users();
        user1.setUser_id(1);
        session.setAttribute("user",user1);


        //HttpSession session = request.getSession();
        Users user= (Users) session.getAttribute("user");
        if(user!=null){//网站用户登录
            int user_id=user.getUser_id();
            List<CartCustom> customCartList = cartService.listCustomCart(user_id);
            model.addAttribute("customCartList",customCartList);
            //return "pages/cart/cartlist";
        }else{//游客登录
            Map<Integer,Integer> visitorCart=new HashMap<>();
            visitorCart = (Map<Integer, Integer>) session.getAttribute("visitorCart");
            if(visitorCart!=null && visitorCart.size()>0) {//游客登录，购物车不为空
                List<CartCustom> customCartList = new ArrayList<>();
                Set<Map.Entry<Integer, Integer>> set=visitorCart.entrySet();
                Iterator<Map.Entry<Integer, Integer>> iterator=set.iterator();
                while(iterator.hasNext()){
                    Map.Entry<Integer, Integer> it=iterator.next();
                    int goods_id=it.getKey();
                    int amount=it.getValue();
                    CartCustom cartPra=new CartCustom();
                    cartPra.setGoods_id(goods_id);
                    cartPra.setAmount(amount);
                    CartCustom cartCustom=cartService.findItem(cartPra);
                    customCartList.add(cartCustom);//遍历出所有该游客的购物车信息,放入model中，返回前台页面
                }
                model.addAttribute("customCartList",customCartList);
            }else{//游客登录，购物车为空
                model.addAttribute("customCartList",null);
            }
        }
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

        Users user= (Users) session.getAttribute("user");
        if(user!=null) {//网站用户登录
            int i = 0;
            int[] ids = {goods_id};
            try {
                i = cartService.delCart(ids, user.getUser_id());
            } catch (Exception e) {
                e.printStackTrace();
            }
            return i;
        }else{//游客登录
            Map<Integer,Integer> visitorCart=null;
            visitorCart= (Map<Integer, Integer>) session.getAttribute("visitorCart");
            Set<Map.Entry<Integer, Integer>> s = visitorCart.entrySet();
            Iterator<Map.Entry<Integer, Integer>> it = s.iterator();
            while(it.hasNext()) {
                Map.Entry<Integer, Integer> entry = it.next();
                Integer good_id = entry.getKey();
                if(good_id.equals(goods_id)){
                    it.remove();
                }
            }
            session.setAttribute("visitorCart", visitorCart);
            if(visitorCart==null||visitorCart.size()==0){
                session.removeAttribute("visitorCart");
            }
            return 1;
        }
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

        Users user= (Users) session.getAttribute("user");
        if(user!=null) {//网站用户登录
            int i = 0;
            int user_id = user.getUser_id();
            try {
                i = cartService.updateAmount(goods_id, amount, user_id);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return i;
        }else{//游客登录
            Map<Integer,Integer> visitorCart=null;
            visitorCart= (Map<Integer, Integer>) session.getAttribute("visitorCart");
            for (Integer good_id : visitorCart.keySet()) {
                if (good_id.equals(goods_id)) {
                    visitorCart.put(goods_id, amount);
                }
            }
            session.setAttribute("visitorCart", visitorCart);
//            Set<Map.Entry<Integer, Integer>> set=visitorCart.entrySet();
//            Iterator<Map.Entry<Integer, Integer>> iterator=set.iterator();
//            while(iterator.hasNext()){
//                Map.Entry<Integer, Integer> it=iterator.next();
//                if(it.getKey().equals(goods_id)){//购物车有该商品
//                    it.setValue(amount);
//                }
//            }
            return 1;
        }
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

        Users user= (Users) session.getAttribute("user");
        if(user!=null) {//网站用户登录
            int i = 0;
            int user_id = user.getUser_id();
            CartCustom cart = null;
            try {//先查询该用户的购物车内是否有该商品
                CartCustom cartPra=new CartCustom();
                cartPra.setUser_id(user_id);
                cartPra.setGoods_id(goods_id);
//                cart = cartService.findItem(user_id, goods_id);
                cart = cartService.findItem(cartPra);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (cart != null) {//若购物车有该商品，则添加数量
                try {
                    int oldAmount = cart.getAmount();
                    i = cartService.addAmount(goods_id, oldAmount + amount, user_id);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {//若购物车没有该商品，则添加纪录
                try {
                    i = cartService.addCart(goods_id, amount, user_id);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return i;
        }else{//游客登录
            Map<Integer,Integer> visitorCart=new HashMap<>();
            visitorCart= (Map<Integer, Integer>) session.getAttribute("visitorCart");
            if(visitorCart!=null && visitorCart.size()>0){//游客登录，购物车不为空
                Set<Map.Entry<Integer, Integer>> set=visitorCart.entrySet();
                Iterator<Map.Entry<Integer, Integer>> iterator=set.iterator();
                boolean hasPro = false;
                while(iterator.hasNext()){
                    Map.Entry<Integer, Integer> it=iterator.next();
                    if(it.getKey().equals(goods_id)){//购物车有该商品
                        it.setValue(amount+it.getValue());
                        hasPro=true;
                    }
                }
                if (!hasPro) {//购物车内没有该商品
                    visitorCart.put(goods_id, amount);
                }

            }else{//游客登录，购物车为空
                visitorCart.put(goods_id, amount);
                session.setAttribute("visitorCart", visitorCart);
            }
            return 1;
        }
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
        if(user!=null) {//用户登录，前往结算页
        int user_id=user.getUser_id();
            List<CartCustom> orderItem = new ArrayList<>();
            String[] goods_ids = ids.split("[,]");
            for (int i = 0; i < goods_ids.length; i++) {
                int goods_id = Integer.parseInt(goods_ids[i]);
                CartCustom cartPra=new CartCustom();
                cartPra.setUser_id(user_id);
                cartPra.setGoods_id(goods_id);
                CartCustom cart = cartService.findItem(cartPra);
                orderItem.add(cart);
            }
            List<Address> addressList = addressService.listAddress(user_id);
            model.addAttribute("orderItem", orderItem);
            model.addAttribute("addressList", addressList);
            return "pages/orders/confirmOrder";
        }else{//游客登录，前往跳转登录页
            return "loginTip";
        }
    }
}
