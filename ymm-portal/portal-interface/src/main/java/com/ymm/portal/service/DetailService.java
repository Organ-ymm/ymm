package com.ymm.portal.service;

import com.ymm.commons.pojo.po.Goods;

public interface DetailService {
    Goods selectById(Integer goods_id);
}
