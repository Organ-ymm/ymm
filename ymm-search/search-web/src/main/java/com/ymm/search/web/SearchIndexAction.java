package com.ymm.search.web;

import com.ymm.commons.util.util.PropKit;
import com.ymm.search.pojo.dto.SearchGoodCustomResult;
import com.ymm.search.service.SearchIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * User: zy
 * Date: 2018/4/5
 * Time: 11:36
 * Version:V1.0
 */
@Controller
@RequestMapping("/search")
public class SearchIndexAction {

    @Autowired
    private SearchIndexService searchIndexService;

    @RequestMapping(value = "/top",method = RequestMethod.GET)
    public String index(){
        return "top";
    }

    @RequestMapping(value = "/doSearch",method = RequestMethod.GET)//todo 主页的搜索框中搜索的接口
    public String search(String keyword, @RequestParam(defaultValue = "1") Integer pageIndex, Model model){
        System.out.println(keyword);
        //pageIndex当前页的页码
        //pageSize每页显示的条数
        Integer pageSize = PropKit.use("db.properties").getInt("search.pageSize");//todo
        //调用业务逻辑层方法
        SearchGoodCustomResult result = searchIndexService.searchIndex(keyword,pageIndex,pageSize);
        //回显，缺少几个分页的回显内容
        model.addAttribute("list",result.getList());
        //todo
        //转发
        return "top";
    }

}
