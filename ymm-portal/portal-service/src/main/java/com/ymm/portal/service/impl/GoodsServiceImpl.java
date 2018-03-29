package com.ymm.portal.service.impl;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.dao.GoodsMapper;
import com.ymm.portal.service.GoodsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GoodsMapper goodsDao;

    @Override
    public List<Goods> listHotGoods(int i) {
        List<Goods> list = null;
        try {
            list = goodsDao.listHotGoods(i);
        } catch (Exception e) {
            logger.debug(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }
}
