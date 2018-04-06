package com.ymm.portal.service;


import com.ymm.portal.pojo.vo.GoodsCustom;

/**
 * User: zy
 * Date: 2018/4/5
 * Time: 14:41
 * Version:V1.0
 */
public interface SearchIndexService {
    GoodsCustom searchIndex(String keyword, int offSet, int pageSize);
}
