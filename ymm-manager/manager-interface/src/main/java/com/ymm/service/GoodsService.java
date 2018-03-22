package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Goods;
import com.ymm.pojo.vo.GoodsCustom;
import com.ymm.pojo.vo.GoodsQuery;

import java.util.List;

public interface GoodsService {
    List<GoodsCustom> listGoods(Page page, GoodsQuery query);

    Long countItems();

    int goodsDelById(Integer id);

    int batchUpdate(List<Integer> ids);

    int addGoods(Goods goods);
}
