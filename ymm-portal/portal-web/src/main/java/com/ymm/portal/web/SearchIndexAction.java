package com.ymm.portal.web;

import com.ymm.commons.util.util.PropKit;
import com.ymm.portal.pojo.vo.GoodsCustom;
import com.ymm.portal.service.SearchIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/search")
public class SearchIndexAction {

    @Autowired
    private SearchIndexService searchIndexService;


    @RequestMapping(value = "/doSearch",method = RequestMethod.GET)//todo 主页的搜索框中搜索的接口
    public String search(GoodsCustom goodsCustom, Model model){
        System.out.println(goodsCustom.getKeyword());
        //pageIndex当前页的页码
        //pageSize每页显示的条数
        Integer pageSize = PropKit.use("db.properties").getInt("search.pageSize");//todo
        //调用业务逻辑层方法
        int offSet = goodsCustom.getOffSet();
        goodsCustom = searchIndexService.searchIndex(goodsCustom.getKeyword(),offSet,pageSize);
        //回显，缺少几个分页的回显内容
        model.addAttribute("goodsCustom",goodsCustom);
        //todo
        //转发
        return "pages/search/searchList";
    }

}
