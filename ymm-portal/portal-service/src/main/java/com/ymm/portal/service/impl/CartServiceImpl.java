package com.ymm.portal.service.impl;

import com.ymm.portal.dao.CartMapper;
import com.ymm.portal.service.CartService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


}
