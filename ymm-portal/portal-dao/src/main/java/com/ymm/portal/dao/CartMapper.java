package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Users;
import com.ymm.portal.pojo.po.Cart;
import com.ymm.portal.pojo.vo.CartCustom;

import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/24 21:20
 * Version:1.0
 */
public interface CartMapper {
    List<CartCustom> listCustomCart(int user_id);

    int delCart(Cart cart);

    int updateAmount(Cart cart);

    CartCustom findItem(CartCustom cartPar);

    int addCart(Cart cart);
}
