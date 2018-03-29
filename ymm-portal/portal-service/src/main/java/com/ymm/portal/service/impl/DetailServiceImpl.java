package com.ymm.portal.service.impl;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.dao.DetailMapper;
import com.ymm.portal.service.DetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailServiceImpl implements DetailService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private DetailMapper detailMapper;
    @Override
    public Goods selectById(Integer goods_id) {
        Goods goods = null;
        try {
            goods = detailMapper.selectGoodsById(goods_id);
        } catch (Exception e) {
            logger.debug(e.getMessage(), e);
        }
        return goods;
    }
}
