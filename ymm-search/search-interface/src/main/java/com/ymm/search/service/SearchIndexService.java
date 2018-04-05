package com.ymm.search.service;

import com.ymm.search.pojo.dto.SearchGoodCustomResult;

/**
 * User: zy
 * Date: 2018/4/5
 * Time: 14:41
 * Version:V1.0
 */
public interface SearchIndexService {
    SearchGoodCustomResult searchIndex(String keyword, Integer pageIndex, Integer pageSize);
}
