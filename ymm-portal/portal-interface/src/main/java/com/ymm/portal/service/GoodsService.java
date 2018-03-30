package com.ymm.portal.service;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.pojo.vo.GoodsCustom;

import java.util.List;

public interface GoodsService {
    List<Goods> listHotGoods(int i);

    GoodsCustom listGoods(GoodsCustom goodsCustom);
}
