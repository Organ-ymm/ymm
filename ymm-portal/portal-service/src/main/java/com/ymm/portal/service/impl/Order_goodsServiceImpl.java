package com.ymm.portal.service.impl;

import com.ymm.commons.pojo.po.Order_goods;
import com.ymm.portal.dao.Order_goodsMapper;
import com.ymm.portal.service.Order_goodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Description:
 * Author: zy
 * Date: 2018/3/30 19:02
 * Version:1.0
 */
@Service
public class Order_goodsServiceImpl implements Order_goodsService {

    @Autowired
    private Order_goodsMapper orderGoodsMapper;
    @Override
    public int addOrderGoods(Order_goods orderGoods) {
        int i=orderGoodsMapper.addOrderGoods(orderGoods);
        return i;
    }
}
