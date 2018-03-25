package com.ymm.portal.service;

import java.util.List;

import com.ymm.portal.pojo.vo.CartCustom;
/**
 * Description:
 * Author: zy
 * Date: 2018/3/24 21:15
 * Version:1.0
 */
public interface CartService {


    /**
     * 展示购物车信息
     * @param user_id 传入用户id
     * @return 得到该用户的购物车列表
     */
    List<CartCustom> listCustomCart(int user_id);

    /**
     * 删除购物车商品
     * @param goods_id 购物车内要删除的商品id数组
     * @return 删除成功影响的条数
     */
    int delCart(int[] goods_id,int user_id);
}
