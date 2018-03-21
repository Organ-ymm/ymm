package com.ymm.service;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.po.Goods;
import com.ymm.pojo.vo.GoodsCustom;

import java.util.List;

public interface GoodsService {
    List<GoodsCustom> listGoods(Page page);

    Long countItems();

    int goodsDelById(Integer id);

    int batchUpdate(List<Integer> ids);

    int addGoods(Goods goods);
}
