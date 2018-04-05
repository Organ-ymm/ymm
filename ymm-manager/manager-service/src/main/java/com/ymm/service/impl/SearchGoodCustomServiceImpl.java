package com.ymm.service.impl;

import com.ymm.commons.pojo.dto.ResultObject;
import com.ymm.dao.GoodsMapper;
import com.ymm.pojo.vo.GoodsCustom;
import com.ymm.pojo.vo.SearchGoodsCustom;
import com.ymm.service.SearchGoodCustomService;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * Description:
 * Author: zy
 * Date: 2018/4/4 20:03
 * Version:1.0
 */
@Service
public class SearchGoodCustomServiceImpl implements SearchGoodCustomService{

    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private SolrServer solrServer;
    @Autowired
    private GoodsMapper goodsMapper;

    public ResultObject importIndex(){
        ResultObject ro=new ResultObject();
        ro.setSuccess(false);
        List<SearchGoodsCustom> list=goodsMapper.getSearchGoodList();
        try {
            //1 加工数据
            for (SearchGoodsCustom cu : list) {
                //2 添加到索引库
                // 创建一个文档对象
                SolrInputDocument document = new SolrInputDocument();
                // 往每一个document中添加field
                document.addField("id", cu.getGoods_id());
                //第一个参数一定要对应于schema.xml中的field name
                document.addField("goods_name", cu.getGoods_name());
                document.addField("goods_brief", cu.getGoods_brief());
                document.addField("shop_price", cu.getShop_price());
                document.addField("goods_thumb", cu.getGoods_thumb());
                document.addField("goods_cat_name", cu.getCat_name());
                //写入索引库
                solrServer.add(document);
            }
            //提交索引库
            solrServer.commit();
            ro.setSuccess(true);
            ro.setMessage("恭喜！一键导入成功！");
        } catch (SolrServerException e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return ro;

    }
}
