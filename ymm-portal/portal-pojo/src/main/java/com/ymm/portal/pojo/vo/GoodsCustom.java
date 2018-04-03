package com.ymm.portal.pojo.vo;

import com.ymm.commons.pojo.po.Goods;

import java.io.Serializable;
import java.util.List;

/**
 * offSet 当前页码
 * pageSize 每页显示条数
 *
 */
public class GoodsCustom implements Serializable {

    private int cat_id;
    private int brand_id;
    private String cat_name;

    private int offSet;
    private int pageSize;
    private int totalCount;
    private int totalPage;
    private List<Goods> goodsList;

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public int getOffSet() {
        return (offSet-1)*pageSize;
    }

    public void setOffSet(int offSet) {
        this.offSet = offSet;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return (totalCount+pageSize-1)/pageSize;
    }


    public List<Goods> getGoodsList() {
        return goodsList;
    }

    public void setGoodsList(List<Goods> goodsList) {
        this.goodsList = goodsList;
    }
}
