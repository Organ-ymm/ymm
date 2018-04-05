package com.ymm.search.service.impl;

import com.ymm.search.dao.SearchIndexDao;
import com.ymm.search.pojo.dto.SearchGoodCustomResult;
import com.ymm.search.service.SearchIndexService;
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
    public SearchGoodCustomResult searchIndex(String keyword, Integer pageIndex, Integer pageSize) {
        SearchGoodCustomResult result = null;
        try {
            //创建solrquery
            SolrQuery solrQuery = new SolrQuery();
            //设置查询内容
            solrQuery.setQuery(keyword);
            //设置分页的条件
            solrQuery.setStart((pageIndex - 1) * pageSize);
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
            result = searchIndexDao.searchIndex(solrQuery,pageSize);
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
}
