package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.pojo.vo.GoodsCustom;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {
    List<Goods> listHotGoods(int cat_id);

    List<Goods> listGoods(@Param("goodsCustom") GoodsCustom goodsCustom);

    int countGoods(@Param("goodsCustom") GoodsCustom goodsCustom);
}
