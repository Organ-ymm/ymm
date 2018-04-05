package com.ymm.search.pojo.dto;

import com.ymm.search.pojo.vo.SearchGoodsCustom;

import java.util.List;

/**
 * User: DHC
 * Date: 2018/3/29
 * Time: 14:33
 * Version:V1.0
 */
public class SearchGoodCustomResult {
    //符合条件的总记录数
    private long recordCount;
    //总页数
    private long totalPages;
    //指定分页的集合
    private List<SearchGoodsCustom > list;

    public long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(long recordCount) {
        this.recordCount = recordCount;
    }

    public long getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(long totalPages) {
        this.totalPages = totalPages;
    }

    public List<SearchGoodsCustom> getList() {
        return list;
    }

    public void setList(List<SearchGoodsCustom> list) {
        this.list = list;
    }
}
