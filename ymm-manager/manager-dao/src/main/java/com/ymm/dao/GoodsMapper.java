package com.ymm.dao;

import com.ymm.pojo.dto.Page;
import com.ymm.pojo.dto.SwitchCheck;
import com.ymm.pojo.po.Goods;
import com.ymm.pojo.vo.GoodsCustom;
import com.ymm.pojo.vo.GoodsQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {
    List<GoodsCustom> selectGoodsByPage(@Param("page") Page page, @Param("query") GoodsQuery query);

    Long countItems();

    int updateGoodsById(Integer id);

    int insertGoods(Goods goods);
	
    int updateGoodsNew(SwitchCheck switchCheck);

    int updateGoodsHot(SwitchCheck switchCheck);

    int updateGoodsStatus(SwitchCheck switchCheck);

    int updateGoods(Goods goods);
}
