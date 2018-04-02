package com.ymm.portal.web;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Cart;
import com.ymm.portal.pojo.vo.CartCustom;
import com.ymm.portal.service.CartService;
import com.ymm.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Controller
public class RegisterAndLogin {
    @Autowired
    UserService userService;

    /**
     * 验证用户名手机是否存在
     */
    @ResponseBody
    @RequestMapping(value = "/queryByUsernameOrPhone",method = RequestMethod.POST)
    public int queryByUsernameOrPhone(Users user){
        try{
            Users user1 = userService.queryByUsernameOrPhone(user);
            if(user1==null){
                return 1 ;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    /**
     * 注册
     */
    @ResponseBody
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public int register(Users user){
        try{
            userService.register(user);
            return 1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    /**
     * 验证登陆,将未登录前加入购物车的商品添加进购物车
     */
    @Autowired
    private CartService cartService;

    @ResponseBody
    @RequestMapping(value = "/checkLogin",method = RequestMethod.POST)
    public int checkLogin(Users user, HttpSession session){
        try{
            Users oldUser = (Users)session.getAttribute("user");
            if(oldUser!=null){
                return 1;
            }else{
                Users user1 = userService.checkLogin(user);
                if(user1!=null){
                    session.setAttribute("user",user1);

                    //将未登录前加入购物车的商品，添加进该用户的购物车
                    int user_id = user1.getUser_id();
                    Map<Goods,Integer> visitorCart = (Map<Goods, Integer>) session.getAttribute("visitorCart");
                    if(visitorCart!=null){
                        Set<Map.Entry<Goods, Integer>> s = visitorCart.entrySet();
                        Iterator<Map.Entry<Goods, Integer>> it = s.iterator();
                        while(it.hasNext()) {
                            Map.Entry<Goods, Integer> entry = it.next();
                            Goods good = entry.getKey();

                            int goods_id = good.getGoods_id();
                            CartCustom cartCustomPra=new CartCustom();
                            cartCustomPra.setUser_id(user_id);
                            cartCustomPra.setGoods_id(goods_id);
                            CartCustom cartCustom = cartService.findItem(cartCustomPra);
                            int oldAmount = entry.getValue();
                            if(cartCustom!=null){//该用户的购物车中有该商品，增加原有数量
                                int addAmount=entry.getValue(),
                                        amount=oldAmount+addAmount;
                                cartService.addAmount(goods_id,amount,user_id);
                            }else{//该用户的购物车中没有该商品，则增加商品
                                cartService.addCart(goods_id,oldAmount,user_id);
                            }
                        }
                        session.removeAttribute("visitorCart");
                    }

                    return 1;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * 注销
     */
    @RequestMapping(value = "/loginOut",method = RequestMethod.GET)
    public String loginOut(Users user, HttpSession session){
        try{
            Users oldUser = (Users)session.getAttribute("user");
            if(oldUser!=null){
                session.setAttribute("user",null);
                return "index";
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "index";
    }
}