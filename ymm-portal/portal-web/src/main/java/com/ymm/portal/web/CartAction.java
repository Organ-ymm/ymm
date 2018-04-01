package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Address;
import com.ymm.portal.pojo.vo.CartCustom;
import com.ymm.portal.service.AddressService;
import com.ymm.portal.service.CartService;
import com.ymm.portal.service.DetailService;
import com.ymm.portal.service.GoodsService;
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
    @Autowired
    private DetailService detailService;
    /*
        列出该用户的购物车信息
     */
    //@ResponseBody
    @RequestMapping(value="/listCustomCart",method= RequestMethod.GET)
    public String listCustomCart(HttpSession session, Model model){
        Users user= (Users) session.getAttribute("user");
        if(user!=null){//网站用户登录
            int user_id=user.getUser_id();
            List<CartCustom> customCartList = cartService.listCustomCart(user_id);
            model.addAttribute("customCartList",customCartList);
            //return "pages/cart/cartlist";
        }else{//游客登录
            Map<Goods,Integer> visitorCart = (Map<Goods, Integer>) session.getAttribute("visitorCart");
            if(visitorCart!=null && visitorCart.size()>0) {//游客登录，购物车不为空
                List<CartCustom> customCartList = new ArrayList<>();
                Set<Map.Entry<Goods, Integer>> set=visitorCart.entrySet();
                Iterator<Map.Entry<Goods, Integer>> iterator=set.iterator();
                while(iterator.hasNext()){
                    Map.Entry<Goods, Integer> it=iterator.next();
                    Goods good=it.getKey();
                    int amount=it.getValue();
                    CartCustom cartCustom=new CartCustom();
                    cartCustom.setAmount(amount);
                    cartCustom.setGoods_id(good.getGoods_id());
                    cartCustom.setGoods_name(good.getGoods_name());
                    cartCustom.setGoods_sn(good.getGoods_sn());
                    cartCustom.setGoods_brief(good.getGoods_brief());
                    cartCustom.setShop_price(good.getShop_price());
                    cartCustom.setMarket_price(good.getMarket_price());
                    cartCustom.setGoods_thumb(good.getGoods_thumb());
                    cartCustom.setSubTotal(amount * (good.getShop_price()));
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
        得到购物车商品总数
     */
    @RequestMapping(value="/cartNum")
    @ResponseBody
    public void cartNum(HttpSession session){
        Users user = (Users) session.getAttribute("user");
        int cartNum=0;
        if(user!=null){
            int user_id = user.getUser_id();
            cartNum=cartService.cartNum(user_id);
        }else{
            Map<Goods,Integer> visitorCart = (Map<Goods, Integer>) session.getAttribute("visitorCart");
            if(visitorCart!=null && visitorCart.size()>0){
                Set<Goods> goods = visitorCart.keySet();
                for(Goods good : goods){
                    int num=visitorCart.get(good);
                    cartNum+=num;
                }
            }
        }
        session.setAttribute("cartNum",cartNum);
    }

    /*
        购物车商品的删除
     */
    @ResponseBody
    @RequestMapping(value="/delCart",method= RequestMethod.GET)
    public int delCart(@RequestParam("goods_id")int goods_id, HttpSession session){
//        Users user1=new Users();
//        user1.setUser_id(1);
//        session.setAttribute("user",user1);

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
            Map<Goods,Integer> visitorCart = (Map<Goods, Integer>) session.getAttribute("visitorCart");
            Set<Map.Entry<Goods, Integer>> s = visitorCart.entrySet();
            Iterator<Map.Entry<Goods, Integer>> it = s.iterator();
            while(it.hasNext()) {
                Map.Entry<Goods, Integer> entry = it.next();
                Goods good = entry.getKey();
                if(good.getGoods_id()==goods_id){
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
//        Users user1=new Users();
//        user1.setUser_id(1);
//        session.setAttribute("user",user1);

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
            Map<Goods,Integer> visitorCart = (Map<Goods, Integer>) session.getAttribute("visitorCart");
            for (Goods good : visitorCart.keySet()) {
                if (good.getGoods_id()==goods_id) {
                    visitorCart.put(good , amount);
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
//        Users user1=new Users();
//        user1.setUser_id(1);
//        session.setAttribute("user",user1);

        Users user= (Users) session.getAttribute("user");
        int i=0;
        if(user!=null) {//网站用户登录
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
        }else{//游客登录
            Map<Goods,Integer> visitorCart = (Map<Goods, Integer>) session.getAttribute("visitorCart");
            if(visitorCart!=null && visitorCart.size()>0){
                Set<Map.Entry<Goods, Integer>> set=visitorCart.entrySet();
                Iterator<Map.Entry<Goods, Integer>> iterator=set.iterator();
                boolean hasPro = false;
                while(iterator.hasNext()){
                    Map.Entry<Goods, Integer> it=iterator.next();
                    if(it.getKey().getGoods_id()==goods_id){//游客登录,购物车有该商品
                        it.setValue(amount+it.getValue());
                        hasPro=true;
                    }
                }
                if (!hasPro) {//游客登录,
                    Goods good= detailService.selectById(goods_id);
                    visitorCart.put(good, amount);
                    i=1;
                }
            }else{//游客登录，购物车为空
                visitorCart=new HashMap<>();
                Goods good=detailService.selectById(goods_id);
                visitorCart.put(good, amount);
                i=1;
                session.setAttribute("visitorCart", visitorCart);
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
//        Users user1=new Users();
//        user1.setUser_id(1);
//        session.setAttribute("user",user1);

        Users user= (Users) session.getAttribute("user");
        if(user!=null) {//用户登录，前往结算页
        int user_id=user.getUser_id();
            //为了订单确认页的商品显示
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
            model.addAttribute("orderItem", orderItem);
            //为了订单确认页的地址显示
            List<Address> addressList = addressService.listAddress(user_id);
            model.addAttribute("addressList", addressList);
            return "pages/orders/confirmOrder";
        }else{//游客登录，前往跳转登录页
            return "loginTip";
        }
    }
    /*
    商品详情页直接购买展示商品信息
     */
    @RequestMapping(value="/findOrderItem",method= RequestMethod.GET)
    public String findOrderItem(@RequestParam("id")String idStr,@RequestParam("amount")String amountStr,HttpSession session,Model model){
        Users user= (Users) session.getAttribute("user");
        if(user!=null) {//用户登录，前往结算页
            int user_id=user.getUser_id();
            int goods_id = Integer.parseInt(idStr);
            int amount = Integer.parseInt(amountStr);
            //为了订单确认页的商品显示
            Goods good = detailService.selectById(goods_id);
            CartCustom cartCustom=new CartCustom();
            cartCustom.setAmount(amount);
            cartCustom.setGoods_id(good.getGoods_id());
            cartCustom.setGoods_name(good.getGoods_name());
            cartCustom.setGoods_sn(good.getGoods_sn());
            cartCustom.setGoods_brief(good.getGoods_brief());
            cartCustom.setShop_price(good.getShop_price());
            cartCustom.setMarket_price(good.getMarket_price());
            cartCustom.setGoods_thumb(good.getGoods_thumb());
            cartCustom.setSubTotal(amount * (good.getShop_price()));
            List<CartCustom> orderItem = new ArrayList<>();
            orderItem.add(cartCustom);
            model.addAttribute("orderItem", orderItem);
            //为了订单确认页的地址显示
            List<Address> addressList = addressService.listAddress(user_id);
            model.addAttribute("addressList", addressList);
            return "pages/orders/confirmOrder";
        }else{//游客登录，前往跳转登录页
            return "loginTip";
        }
    }
}
