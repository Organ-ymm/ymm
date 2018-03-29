package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Goods;

import java.util.List;

public interface DetailMapper {
    Goods selectGoodsById(Integer goods_id);
}
