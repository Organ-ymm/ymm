package com.ymm.portal.service;

import java.util.List;

import com.ymm.portal.pojo.po.Cart;
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
     * @param user_id 用户id
     * @return 得到该用户的购物车列表
     */
    List<CartCustom> listCustomCart(int user_id);

    /**
     * 删除购物车商品
     * @param goods_id 购物车内要删除的商品id数组
     * @param user_id 用户id
     * @return 删除成功影响的条数
     */
    int delCart(int[] goods_id,int user_id);

    /**
     *
     * @param goods_id 购物车内要增加数量的商品id（在购物车修改数量的商品，不更新add_time）
     * @param user_id 用户id
     * @return 更新成功影响的条数
     */
    int updateAmount(int goods_id, int amount, int user_id);

//    /**
//     *
//     * @param user_id 当前用户id
//     * @param goods_id 要加入购物车的商品id
//     * @return 购物车中已有的记录
//     */
//    CartCustom findItem(int user_id, int goods_id);
    /**
     *
     * @param cartPra 包含user_id和goods_id
     * @return 购物车中已有的记录
     */
    CartCustom findItem(CartCustom cartPra);

    /**
     *
     * @param goods_id 要加入购物车的商品id
     * @param amount 要加入购物车的商品的数量
     * @param user_id 当前用户id
     * @return 成功影响的条数
     */
    int addCart(int goods_id, int amount, int user_id);

    /**
     *
     * @param goods_id 购物车内对应的商品id（在商品详情页加入的商品，更新add_time）
     * @param amount 总的商品的数量
     * @param user_id 当前用户id
     * @return 成功影响的条数
     */
    int addAmount(int goods_id, int amount, int user_id);
}
