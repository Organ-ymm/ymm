package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.vo.GoodsCustom;

import java.util.List;

public interface GoodsMapper {
    List<GoodsCustom> selectGoodsByPage(Page page);

    Long countItems();

    int updateGoodsById(Integer id);
}
