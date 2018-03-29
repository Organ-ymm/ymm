package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Goods;

import java.util.List;

public interface GoodsMapper {
    List<Goods> listHotGoods(int cat_id);
}
