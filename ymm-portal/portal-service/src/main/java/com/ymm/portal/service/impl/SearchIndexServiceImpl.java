package com.ymm.portal.service.impl;

import com.ymm.portal.dao.SearchIndexDao;
import com.ymm.portal.pojo.dto.SearchGoodCustomResult;
import com.ymm.portal.pojo.vo.GoodsCustom;
import com.ymm.portal.service.SearchIndexService;
import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: zy
 * Date: 2018/04/04
 * Time: 14:41
 * Version:V1.0
 */
@Service
public class SearchIndexServiceImpl implements SearchIndexService {
    @Autowired
    private SearchIndexDao searchIndexDao;
    @Override
    public GoodsCustom searchIndex(String keyword, int offSet, int pageSize) {
        GoodsCustom goodsCustom = null;
        if (offSet==0){
            offSet=1;
        }
        try {
            //创建solrquery
            SolrQuery solrQuery = new SolrQuery();
            //设置查询内容
            solrQuery.setQuery(keyword);
            //设置分页的条件
            solrQuery.setStart(offSet);
            solrQuery.setRows(pageSize);
            //设置查询字段
            solrQuery.set("df","item_keywords");
            //设置高亮
            solrQuery.setHighlight(true);
            solrQuery.addHighlightField("goods_name");
            solrQuery.setHighlightSimplePre("<span style='color:red;'>");
            solrQuery.setHighlightSimplePost("</span>");
            //调用DAO层方法
            //list recordCounts totalPages
            goodsCustom = searchIndexDao.searchIndex(solrQuery,pageSize);
            //分页需要的数据
            goodsCustom.setOffSet(offSet);
            goodsCustom.setPageSize(pageSize);
            goodsCustom.setKeyword(keyword);
        }catch (Exception e){
            e.printStackTrace();
        }
        return goodsCustom;
    }
}
