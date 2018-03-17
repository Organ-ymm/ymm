package com.ymm.service.impl;

import com.ymm.dao.GoodsMapper;
import com.ymm.pojo.dto.Page;
import com.ymm.pojo.vo.GoodsCustom;
import com.ymm.service.GoodsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private GoodsMapper goodsdao;

    @Override
    public List<GoodsCustom> listGoods(Page page) {
        List<GoodsCustom> goodsCustomList = null;
        try {
            goodsCustomList = goodsdao.selectGoodsByPage(page);
        } catch (Exception e) {
            logger.debug(e.getMessage(), e);
        }
        return goodsCustomList;
    }

    @Override
    public Long countItems() {
        return goodsdao.countItems();
    }

    @Override
    public int goodsDelById(Integer id) {
        return goodsdao.updateGoodsById(id);
    }

    @Override
    public int batchUpdate(List<Integer> ids) {
        int i = 0;
        for (Integer id :
                ids) {
           i += goodsdao.updateGoodsById(id);
        }
        return i;
    }
}
