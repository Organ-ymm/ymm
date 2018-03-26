package com.ymm.portal.service.impl;

import com.ymm.portal.dao.CartMapper;
import com.ymm.portal.pojo.po.Cart;
import com.ymm.portal.pojo.vo.CartCustom;
import com.ymm.portal.service.CartService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/24 21:16
 * Version:1.0
 */
@Service
public class CartServiceImpl implements CartService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CartMapper cartMapper;


    @Override
    public List<CartCustom> listCustomCart(int user_id) {
        List<CartCustom> customCartList= null;
        try {
            customCartList = cartMapper.listCustomCart(user_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customCartList;
    }

    @Override
    public int delCart(int[] goods_id,int user_id) {
        int sum=0;
        int i=0;
        for(int id : goods_id){
            Cart cart=new Cart();
            cart.setGoods_id(id);
            cart.setUser_id(user_id);
            try {
                i=cartMapper.delCart(cart);
            } catch (Exception e) {
                e.printStackTrace();
            }
            sum+=i;
        }
        return sum;
    }

    @Override
    public int updateAmount(int goods_id, int amount, int user_id) {
        int i=0;
        Cart cart = new Cart();
        cart.setUser_id(user_id);
        cart.setGoods_id(goods_id);
        cart.setAmount(amount);
        try {
            i=cartMapper.updateAmount(cart);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
