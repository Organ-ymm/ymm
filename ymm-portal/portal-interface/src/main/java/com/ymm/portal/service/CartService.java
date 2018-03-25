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


    List<CartCustom> listCustomCart(int user_id);
}
