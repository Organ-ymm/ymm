package com.ymm.portal.dao;

import com.ymm.commons.pojo.po.Goods;
import com.ymm.portal.pojo.dto.SearchGoodCustomResult;
import com.ymm.portal.pojo.vo.GoodsCustom;
import com.ymm.portal.pojo.vo.SearchGoodsCustom;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SearchIndexDao {
    @Autowired
    private SolrServer solrServer;

    public GoodsCustom searchIndex(SolrQuery solrQuery, Integer pageSize) {
        GoodsCustom goodsCustom = new GoodsCustom();
        //SearchGoodCustomResult result = new SearchGoodCustomResult();
        try {
            //获取到查询索引库的响应
            QueryResponse response = solrServer.query(solrQuery);
            //通过响应获取文档域
            SolrDocumentList solrDocumentList = response.getResults();
            //通过响应获取到高亮的结果集
            Map<String, Map<String, List<String>>> highlighting = response.getHighlighting();
            //numFound
            long numFound = solrDocumentList.getNumFound();
            //创建一个空集合 solrDocumentList-->itemList
            List<Goods> itemList = new ArrayList<Goods>();
            for (SolrDocument document : solrDocumentList) {
                SearchGoodsCustom searchGoodsCustom = new SearchGoodsCustom();
                //给对象设值
                searchGoodsCustom.setGoods_id(Integer.parseInt((String)document.get("id")));
                searchGoodsCustom.setCat_name((String) document.get("goods_cat_name"));
                searchGoodsCustom.setGoods_thumb((String) document.get("goods_thumb"));
                searchGoodsCustom.setShop_price((Double) document.get("shop_price"));
                searchGoodsCustom.setGoods_brief((String) document.get("goods_brief"));
                //通过ID获取map
                List<String> stringList = highlighting.get(document.get("id")).get("goods_name");
                String title = "";
                if (stringList != null && stringList.size() > 0) {
                    title = stringList.get(0);
                }else{
                    title = (String) document.get("goods_name");
                }
                searchGoodsCustom.setGoods_name(title);
                itemList.add(searchGoodsCustom);
            }
            //退一进一
            //long totalPages = (numFound + pageSize - 1) / pageSize;

            //将long强转成int, 以后需要改进
            goodsCustom.setTotalCount((int) numFound);
            goodsCustom.setPageSize(pageSize);
            goodsCustom.setGoodsList(itemList);
            //result.setRecordCount(numFound);
            //result.setList(itemList);
            //result.setTotalPages(totalPages);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }
        return goodsCustom;
    }
}
